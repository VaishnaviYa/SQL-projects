
use cars;
-- READ DATA --
select * from car_dekho;

-- Total Cars: To get a count of total records --
select count(*) from car_dekho;

-- The manager asked the employee, How many cars will be available in 2023? --
select count(*) from car_dekho where year = 2023;

-- The manager asked the employee, How many cars are available in 2020, 2021, 2022? --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7

select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Client wants to know how many diesel cars will be there in 2020--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- Client wants to know how many petrol cars will be there in 2023--
select count(*) from car_dekho where year = 2023 and fuel = "Petrol";

-- Client wants to know all the fuel cars (Petrol,diesel and CNG) in all years--
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;

-- The manager said to the employees All car details between 2023 and 2015 --

select * from car_dekho where year between 2015 and 2023;



