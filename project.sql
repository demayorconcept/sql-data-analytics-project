
use delly;
select *,
rank() over(order by TotalOrder desc ) as CustomerRank4months
from 
(select a.CustomerID,
a.Name as customer_name,
round(avg(b.OrderPrice),0) as AverageOrderValue,
round(sum(b.OrderPrice),0) as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-08-01" and "2024-08-31" 
group by a.CustomerID,a.Name,monthname(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
inner join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-09-01" and "2024-09-30" 
group by a.CustomerID,a.Name, monthname(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder, 
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-10-01" and "2024-10-31" 
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-11-01" and "2024-11-30"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID 
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-12-01" and "2024-12-31"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2025-01-01" and "2025-01-31"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID 
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2025-02-01" and "2025-02-28"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2025-03-01" and "2025-03-31"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
) as t;
use delly;
select *,
rank() over(order by TotalOrder desc ) as CustomerRank4months
from 
(select a.CustomerID,
a.Name as customer_name,
round(avg(b.OrderPrice),0) as AverageOrderValue,
round(sum(b.OrderPrice),0) as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-08-01" and "2024-08-31" 
group by a.CustomerID,a.Name,monthname(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
inner join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-09-01" and "2024-09-30" 
group by a.CustomerID,a.Name, monthname(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder, 
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-10-01" and "2024-10-31" 
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-11-01" and "2024-11-30"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID 
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2024-12-01" and "2024-12-31"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2025-01-01" and "2025-01-31"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID 
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2025-02-01" and "2025-02-28"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalOrder,
monthname(b.OrderDate) as OrderMonth,
year(b.OrderDate) as OrderYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.OrderDate) between "2025-03-01" and "2025-03-31"
group by a.CustomerID,a.Name, MONTHNAME(b.OrderDate),year(b.OrderDate),
b.DedicatedCompanyID
) as t;

/**FOR COMPLETED ORDERS**/
use delly;
select *,
rank() over(order by TotalCompletedOrder desc ) as CustomerRank4months 
from 
(select a.CustomerID,
a.Name as customer_name,
round(avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder,
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2024-08-01" and "2024-08-31" 
and OrderStatus = "completed"
group by a.CustomerID,a.Name, MONTHNAME(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder,
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2024-09-01" and "2024-09-30"
and OrderStatus = "completed" 
group by a.CustomerID,a.Name, MONTHNAME(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder, 
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2024-10-01" and "2024-10-31" 
and OrderStatus = "completed"
group by a.CustomerID,a.Name, MONTHNAME(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder,
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2024-11-01" and "2024-11-30"
and OrderStatus = "completed"
group by a.CustomerID,a.Name, MONTHNAME(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder,
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2024-12-01" and "2024-12-31"
and OrderStatus = "completed"
group by a.CustomerID,a.Name, MONTHNAME(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder,
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2025-01-01" and "2025-01-31"
and OrderStatus = "completed"
group by a.CustomerID,a.Name, MONTHNAME(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder,
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2025-02-01" and "2025-02-28"
and OrderStatus = "completed"
group by a.CustomerID,a.Name, MONTHNAME(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
union all
select a.CustomerID,
a.Name as customer_name,
round(Avg(b.OrderPrice),0)  as AverageOrderValue,
round(sum(b.OrderPrice),0)  as TotaLOrderValue,
round(sum(b.CommissionPrice),0) as TotalRevenue,
count(b.OrderID) as TotalCompletedOrder,
monthname(b.DeliveredAt) as DeliverMonth,
year(b.DeliveredAt) as DeliverYear,
b.DedicatedCompanyID,
case
when b.DedicatedCompanyID = 762 then "specialcustomer"
else "generalcustomer"
end customer_category
from customer as a
left join orders as b
on a.CustomerID = b.CustomerID
where date(b.DeliveredAt) between "2025-03-01" and "2025-03-31"
and OrderStatus = "completed"
group by a.CustomerID,a.Name, monthname(b.DeliveredAt),year(b.DeliveredAt),
b.DedicatedCompanyID
) as t;