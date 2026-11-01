create database bike_rental_analysis;
use bike_rental_analysis;
CREATE TABLE bike_rentals (
    instant INT PRIMARY KEY,
    dteday DATE,
    season INT,
    yr INT,
    mnth INT,
    holiday INT,
    weekday INT,
    workingday INT,
    weathersit INT,
    temp DECIMAL(6,4),
    atemp DECIMAL(6,4),
    hum DECIMAL(6,4),
    windspeed DECIMAL(6,4),
    casual INT,
    registered INT,
    cnt INT
);
desc bike_rentals;
select count(*) from bike_rentals;

select * from bike_rentals;


-- Checking Null Values
select 
	sum(dteday is null) as missing_date,
    sum(season is null) as missing_season,
    sum(weathersit is null) as missing_weather,
    sum(cnt is null) as missing_rentals
from bike_rentals;

-- Checking Duplicate Dates
select
	dteday,
    count(*) as count_dup
from bike_rentals
group by dteday
having count(*)>1;


-- instant     = Unique Record ID
-- dteday      = Date of Rental
-- season      = Season (1=Spring, 2=Summer, 3=Fall, 4=Winter)
-- yr          = Year (0=2011, 1=2012)
-- mnth        = Month (1=January ... 12=December)
-- holiday     = Whether the day is a holiday (0=No, 1=Yes)
-- weekday     = Day of Week (0=Sunday ... 6=Saturday)
-- workingday  = Working Day (0=No, 1=Yes)
-- weathersit  = Weather Situation (1=Clear, 2=Misty, 3=Light Rain/Snow, 4=Heavy Rain/Snow)
-- temp        = Normalised Temperature
-- atemp       = Normalised Feeling Temperature
-- hum         = Normalised Humidity
-- windspeed   = Normalised Wind Speed
-- casual      = Number of Casual User Rentals
-- registered  = Number of Registered User Rentals
-- cnt         = Total Bike Rentals (Casual + Registered)



-- Question - 1
-- What is the total number of bike rentals?
-- Total rentals across all records.
-- Average daily rentals.
-- Total number of rental days.
select 
	sum(cnt) as Total_Bike_Rentals,
    avg(cnt) as Avg_Daily_Rentals,
    count(*) as Total_Rental_Days
from bike_rentals;

-- Question - 2
-- Which months have the highest and lowest rental demand?
select 
	mnth,
    sum(cnt) as Total_Amount
from bike_rentals
group by mnth
order by sum(cnt) DESC;


-- Question 3 
-- Which season generates the highest bike rental demand?
select
	season as Season_Code,
    sum(cnt) as total_seasonal_rentals
from bike_rentals
group by season
order by sum(cnt) DESC
limit 1;


-- Question 4 
-- Do weekdays or weekends generate more bike rentals?
select
    sum(cnt) as Total_Rentals,
case
	when workingday = 1 then "Working Day"
    else "Non-Working-Day"
end as Day_Type
from bike_rentals
group by workingday
order by sum(cnt) DESC;

-- Question 5 
-- How does weather affect bike rental demand?

select
case
	when weathersit = 1 then "Clear"
    when weathersit = 2 then "Misty"
    when weathersit = 3 then "Light Rain/Snow"
end as Weather,
    sum(cnt) as Bike_Rental_Demand
from bike_rentals
group by weathersit
order by sum(cnt) DESC;


-- Question 6
-- Did bike rental demand increase from 2011 to 2012?

select 
	case
		when yr = 0 then "2011"
        when yr = 1 then "2012"
	end as Year,
sum(cnt) as Total_Rentals
from bike_rentals
group by yr
order by sum(cnt) DESC;


-- Question 7
-- Which dates had the highest bike rental demand?
select 
	dteday as Date,
	cnt as Bike_Rental_Demand
from bike_rentals
order by cnt DESC
limit 10;


-- Question - 8
-- How does bike rental demand vary across different days of the week?
select
	case
		when weekday = 0 then "Sunday"
        when weekday = 1 then "Monday"
        when weekday = 2 then "Tuesday"
        when weekday = 3 then "Wednesday"
        when weekday = 4 then "Thursday"
        when weekday = 5 then "Friday"
        when weekday = 6 then "Saturday"
	end as Day_Of_Week,
    sum(cnt) as Bike_Rental_Demand
from bike_rentals
group by weekday 
order by sum(cnt) DESC;
