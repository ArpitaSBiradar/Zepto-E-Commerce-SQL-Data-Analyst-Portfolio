drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
)

--data exploration

--count of rows
SELECT COUNT(*) FROM zepto

--sample data
select * from zepto limit 10

--null values
select * from zepto 
where name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL

--diff product categories
select distinct category
from zepto
order by category

--product in stock vs out stock
select outOfStock, count(sku_id)
from zepto
group by outOfStock

--product names appering more thn once
select name, count(sku_id) as "Number of SKUs"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) DESC

--data cleaning

--product with price 0
select * from zepto
where mrp = 0 or discountedSellingPrice = 0

delete from zepto
where mrp = 0

--convert paise to rs
update zepto
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0

select mrp,discountedSellingPrice from zepto

--1.find top 10 best value product based on disc per
select distinct name,mrp,discountPercent
from zepto
order by discountPercent DESC
limit 10

--2.what are the products with high mrp but outofstock
select distinct name,mrp
from zepto
where outofstock = TRUE and mrp > 300
order by mrp desc

--3.cal estimated revenue for each category
select category,
SUM(discountedSellingPrice * availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue

--4.find all products where mrp is greater than rs500 and sicount is less than 10%
select distinct name,mrp,discountPercent
from zepto
where mrp > 500 and discountPercent < 10
order by mrp desc, discountPercent desc

--5.identify top 5 category offering highest avg discount percent
select category,
ROUND(AVG(discountPercent),2) as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5

--6.find price per gm for products above 100g and sort by best value
select distinct name,weightInGms,discountedSellingPrice,
round(discountedSellingPrice/weightInGms,2) as price_per_gm
from zepto
where weightInGms >= 100
order by price_per_gm

--7.group the products into categories like low,med,bulk
select distinct name, weightInGms,
case when weightInGms < 1000 then 'low'
     when weightInGms < 5000 then 'medium'
	 else 'bulk'
	 end as weight_category
from zepto

--8.what is total inventory weight per category
select category,
sum(weightInGms * availableQuantity) as total_weight
from zepto
group by category
order by total_weight
