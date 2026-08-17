create database Ecommerce;

use Ecommerce;

show tables;

select * from `amazon sale report`;

select * from `cloud warehouse compersion chart`;

select * from `expense iigf`;

select * from `international sale report`;

select * from `may-2022`;

SELECT * FROM `p  l march 2021`;

select * from `amazon sale report` where Amount is null;

Select * from `may-2022` where Category = "Kurta";

Select Sum(RATE) from `international sale report`;

Select distinct(Stock), Size, Color  from `sale report`
group by Category;

select Distinct(CUSTOMER), Size from `international sale report`
 where Size >= 'L'
 order by Size;
 
select Distinct(CUSTOMER), Size from `international sale report`
where Size <= 'M'
order by Size asc;

 Select `index`, Shiprocket from `cloud warehouse compersion chart`
 Where Shiprocket IS NOT NULL;
 
 Select Shiprocket, `index` from `cloud warehouse compersion chart`
 where Shiprocket is null;
 
 Select `index`, Date, Size, Amount, Category, Fulfilment, Status 
 From `amazon sale report` where Status = 'Cancelled'
 order by `index` asc;
 
Select Sum(Amount)  from `amazon sale report` as Total_Revenue;
 
Select Sum(Amount) as loose_Amount from `amazon sale report` Where Status = 'Cancelled';
 
 Select * from `amazon sale report` where Status = "Shipped - Delivered to Buyer"
 order by `index` asc;

 Select sum(Amount) as Sales_Amount, Category from `amazon sale report`
 where Status = "Shipped - Delivered to Buyer"
 group by Category;
 
Select count(distinct `Order ID`) as Total_Orders
from `amazon sale report`;

Select sum(Qty) as Total_Quantity from `amazon sale report`;
 
Select sum(Amount), Category from `amazon sale report` where `Status` ='Cancelled'
group by Category;

Select * from `amazon sale report`
where(Select max(Amount) from `amazon sale report`);

Select sum(Amount) / count(distinct `Order ID`) as Average_Order_Value from `amazon sale report`; 

Select Max(`ship-city`) AS Maximum_Order_City from `amazon sale report`;
 
Select * from `expense iigf` where `Unnamed: 3` between 100 and 1000;

Select * from `amazon sale report`
where Amount is null;

Select sum(Amount) from `amazon sale report` where Status = "Cancelled";

Select count(distinct `order ID`) from `amazon sale report` 
where Status = "Shipped - Delivered to buyer";

Select Count(*)  as Missing_Category from `amazon sale report` where 
Category is null;

Select `index`,SKU from `international sale report` limit 221;

Select upper(CUSTOMER), PCS, RATE from `international sale report`;

Select * from `amazon sale report` where `ship-city`
in('CHENNAI','MUMBAI','NEW DELHI','GREATER NOIDA')
or `Status` = 'Shipped -Deliver to Buyer';

Select * from  `amazon sale report` where 
`ship-state` not in('UTTAR PRADESH','TAMILNADU','KARNATAKA','MAHARASHTRA')
order by `ship-state`asc;

Select `may-2022`.`Category` as may22_Category, `p  l march 2021`.`Category` as march2021_Category, 
`may-2022`.`Final MRP Old`, `may-2022`.`Amazon MRP`,
`p  l march 2021`.`Final MRP Old`, `p  l march 2021`.`Amazon MRP`FROM `may-2022` 
INNER JOIN `p  l march 2021` on `may-2022`.`index`=`p  l march 2021`.`index`;
	
Select `Date`, `Rate`, `PCS` from `international sale report`
where `index` between 100 and 500 
order by `Date`;

Select `amazon sale report`.`order ID`, `international sale report`.`CUSTOMER`,
`international sale report`.`DATE`,`amazon sale report`.`Size`,
`amazon sale report`.`Amount` from `amazon sale report`
Left join `international sale report` on `amazon sale report`.`index`=`international sale report`.`index`
order by `amazon sale report`.`Size` asc;

Select `amazon sale report`.`index`, `amazon sale report`.`Amount`,`amazon sale report`.`ship-state`,`may-2022`.`Flipkart MRP`, 
`sale report`.`Design No.`,`sale report`.`Stock`from `amazon sale report` 
inner join `may-2022` on `amazon sale report`.`index`=`may-2022`.`index`
inner join `sale report` on `amazon sale report`.`index`= `sale report`.`index`;

Select * from `amazon sale report`
where(Select max(Amount) from `amazon sale report`);

Select `Order ID`, `Amount`, `Category`, `ship-city` from `amazon Sale report` 
limit 10;

with Cancelled_Orders as 
(Select * from `amazon sale report` where Status = 'Cancelled')
select Category, count(*) as Cancelled_Orders,
sum(Amount) as Revenue_Lost
from Cancelled_Orders
group by Category
order by Revenue_Lost desc;

Select Category, sum(Amount) as Revenue,
rank() over(Order by sum(Amount) desc) as Revenue_Rank
from `amazon sale report`
group by Category;

Select SKU, Category, sum(Qty) as Total_Quantity,
sum(Amount) as Total_Revenue from `amazon sale report`
group by SKU, Category
order by Total_Revenue desc
limit 10;