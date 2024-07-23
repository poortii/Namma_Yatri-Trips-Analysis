create database namma_yatri;
use namma_yatri

select * from trips;

select * from trip_details;

select * from loc;

select * from duration;

select * from payment;

-- --total trips

select count(distinct tripid) from trips_details;


-- --total drivers

select * from trips;

select count(distinct driverid) from trips;

-- total earnings

select sum(fare) from trips;

-- total Completed trips

select * from trips_details;
select sum(end_ride) from trips_details;

-- --total searches

SELECT 
    SUM(searches)
FROM
    trips_details;

-- --total searches which got estimate

SELECT 
    SUM(searches_got_estimate)
FROM
    trips_details;
    
-- --total searches for quotes
SELECT 
    SUM(searches_for_quotes)
FROM
    trips_details;

-- --total searches which got quotes
SELECT 
    SUM(searches_got_quotes)
FROM
    trips_details;

-- --total driver not cancelled
SELECT 
    SUM(driver_not_cancelled)
FROM
    trips_details;

-- --total otp entered

SELECT 
    SUM(otp_entered)
FROM
    trips_details;
    
-- --total end ride

SELECT 
    SUM(end_ride)
FROM
    trips_details;

-- --cancelled bookings by driver

SELECT 
    SUM(searches) - SUM(driver_not_cancelled)
FROM
    trips_details;

-- --cancelled bookings by customer

SELECT 
    SUM(searches) - SUM(customer_not_cancelled)
FROM
    trips_details;

-- --average distance per trip

SELECT 
    SUM(distance) / COUNT(*)
FROM
    trips;



-- --average fare per trip

SELECT 
    SUM(fare) / COUNT(*)
FROM
    trips;

-- --distance travelled

SELECT 
    SUM(distance)
FROM
    trips;




-- which is the most used payment method 

select faremethod, count(faremethod) as cnt
from trips
group by faremethod
order by cnt desc limit 1;

