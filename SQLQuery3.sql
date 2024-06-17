--select * from sales.customers;

--select first_name,last_name,phone,email from sales.customers

--select first_name+' '+ last_name  as "FUll_name " from sales.customers

--select s.email  from sales.customers s 

--select first_name+' '+last_name from sales.customers

--select first_name from sales.customers as s
--order by s.city desc 

--select first_name,last_name,city,zip_code from sales.customers 
--order by first_name asc,last_name desc

--select first_name,last_name,city,zip_code from sales.customers order by zip_code desc,last_name asc

--select * from sales.customers where zip_code='95677'

--select * from sales.customers where zip_code !='95993' order by zip_code desc

--select * from production.stocks where quantity >=20 order by quantity desc

--select * from production.stocks where quantity>25 and quantity <30 and store_id=2 order by quantity

--select state, first_name from sales.customers where state='CA' or state='NY' 

--select distinct state  from sales.customers 

--select state,first_name from sales.customers where state!='CA' or state!='NY' 

--select state,first_name,city from sales.customers where city='Apple Valley' or(state!='CA' and state!='NY')

--select state,first_name,city from sales.customers where state not in ('CA','NY')

--select * from sales.customers where phone is n null
--select * from sales.customers where first_name like 'An%'
--select * from sales.customers where first_name like '%A'
--select * from sales.customers where first_name like '%st%'
--select * from sales.customers where first_name like '%St%'

--select * from sales.customers where first_name like '___St%'

--select * from sales.customers where first_name like '___St'
--select * from sales.customers where first_name like 'E_n_St'

--select * from production.products where model_year>2016 and model_year <=2018

--select distinct brand_id ,product_name from production.products where exists (select * from production.products where model_year='2017')
--select distinct brand_id ,prodc


--select count(*) from production.products 
--select count(phone) from production.products 
--select count(*) from production.products where phone is not null 
--select count(model_year) as count-model_year  ,count(distinct model_year) as distinct from production.products

--select model_year,count(*) "total_products",max(list_price) "Maximum_price",min(list_price) "min_price" from production.products group by model_year

--select model_year,count(model_year) "no_of_products" ,sum(list_price) "total_price" ,avg(list_price) as "Average Price" from production.products  group by model_year  having count(model_year) >50
--select product_name,model_year ,avg(list_price) " average" over (partition by model_year) as "avg_price" ,price-avg(list_price) as "difference" from production.products

--select product_name,model_year ,list_price , avg(list_price) over(partition by model_year) as "avgprice",
--list_price-avg(list_price) over (partition by model_year) as "difference" from production.products 
--grouhaving avg(list_price)>750

--select top()* from production.products 

--SELECT TOP 20 PERCENT * from production.products
--select count(distinct Subtable.model_year) as "Model_year" from (select product_name,model_year,category_id,list_price from production.products where model_year=2016) 
--as "Subtable" group by Subtable.model_year 

select format(9832492342,'####-##_-##-#')

select list_price,format(list_price,N'F'),format(list_price,N'C',N'en-In') from production.products

select format(getdate(),'yyyy///MMM-dd')
select * from production.categories 
select left(category_name,5) from production.categories 

select right(category_name,8) from production.categories

select Upper(category_name),lower(left(category_name,5)),len(category_name),upper(right(category_name,5)) from production.categories

update production.categories 
set category_name='       '+category_name

select * from production.categories

select trim(category_name) from production.categories

update production.categories 
set category_name=trim(category_name)

select * from production.categories

select category_name,patindex('%BI_y%',category_name)
from production.categories

select category_name,replace(category_name,'Bikes','MotorBikes'),reverse(category_name)
from production.categories

select list_price,len(list_price),str(list_price) from production.products
select list_price from production.products

select substring(product_name,5,6) from production.products


select dateadd(MONTH,2,getdate())

select * from dbo

select hiredate,datediff(Month,hiredate,format(getdate(),'yyyy-mm-dd')) 

