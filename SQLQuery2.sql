--Count Agreggate

--How many total properties are in the database?--
Select count (*) As Total_Properties from property24;
--How many properties are listed in each province?
Select Province, count (*) as No_of_Properties from property24 group by Province;
--How many properties are listed in each city?
Select City, count (*) as No_of_Properties from property24 group by City;
--How many properties have more than 2 bedrooms?
Select count (*) as Property_more_than_2_bedrooms from property24 where bedrooms>2;
--How many properties have 2 or more bathrooms?
Select count (*) as  Property_more_thanor_egual_2_bedrooms from property24 where bathrooms>=2;
--How many properties have parking for at least 2 cars?
Select count (*) from property24 where Parking>=2;
--How many properties are priced above R3,000,000?
Select count (*) as Property_priced_above_3m from property24 where Property_Price>3000000;
--How many properties are in Gauteng?
Select count (*) as total_properties_in_gauteng from property24 where province = 'Gauteng';
--How many properties per province have floor size greater than 200?
Select Province, count (*) as Provinces_with_floor_greaterthan_200 from property24 where floor_size>200 group by province;
--How many distinct provinces are in the table?
Select count(distinct province) from property24;

--Sum aggregate questions 

--What is the total value of all properties combined?
Select sum(property_price) as total_value from property24;
--What is the total property value per province?
Select Province, sum(property_price) as Total_Property_value_per_province from
property24 group by province;
--What is the total property value per city?
Select City, sum(property_price) as total_property_value_per_city from property24
group by City;
--What is the total monthly repayment for all properties?
Select sum(Monthly_Repayment) As total_Montly_repayment from property24;
--What is the total monthly repayment per province?
Select Province, sum(Monthly_Repayment) as total_monthly_repayment from
property24 group by province;
--What is the total once-off cost for all properties?
Select sum(Total_Once_off_Costs) from property24;
--What is the total once-off cost per province?
Select province, sum(Total_Once_off_Costs) As total_once_cost_per_province from
property24 group by province;
--What is the total property value for Gauteng?
Select sum(Property_price) from property24 where province= 'Gauteng';
--What is the total property value for properties priced above R4,000,000?
Select sum(Property_Price) as total_value_over_4m from property24 where
property_price>4000000;
--What is the total minimum gross monthly income required per province?
Select Province, sum(min_gross_monthly_Income) as
total_min_gross_monthly_income from property24 group by province;

--Average Aggregate

--What is the average property price overall?
Select AVG(Property_price) as average_property_price from property24;
--What is the average property price per province?
Select Province, AVG(Property_price) as average_property_price_per_province from
property24 group by province;
--What is the average property price per city?
Select City, AVG(Property_price) as average_property_price_per_city from
property24 group by city;
--What is the average number of bedrooms per province?
Select province, AVG(bedrooms) as average_property_price_per_city from
property24 group by province;
--What is the average number of bathrooms per province?
Select province, AVG(bathrooms) as average_number_of_bathrooms_per_province
from property24 group by province;
--What is the average floor size per province?

--What is the average monthly repayment per province?

--What is the average once-off cost per province?

--What is the average minimum gross monthly income per province?

--What is the average property price for properties above R3,000,000?

--Group by + Filtering 

--Which province has the highest average property price?

--Which province has the lowest average property price?

--Which city has the highest total property value?

--Which city has the lowest average property price?

--How many properties per province are priced above R2,000,000?

--What is the average floor size per province for properties above R3,000,000?

--What is the total property value per province for properties with 3 or more bedrooms?

--What is the average monthly repayment per province for properties above R4,000,000?

--How many properties per city have parking for 2 or more cars?

--What is the average minimum gross monthly income per province for properties above R5,000,000?