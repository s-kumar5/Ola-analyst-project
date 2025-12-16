--Ola Project 

Create database Ola_project;
use Ola_project;


-- Ola dataset table
Select * from Ola;


-- 1. Retrieve all successful bookings:
Create view successful_booking as 
Select * from Ola Where Booking_status = 'Success';

select * from successful_booking;


-- 2. Find the average ride distance for each vehicle type:
create view avg_ride_distance_for_each_vehicle as
Select Vehicle_type ,Round(AVG(ride_distance),0) as Ride_Distance from Ola where booking_status = 'Success'
group by vehicle_type;

select * from avg_ride_distance_for_each_vehicle;


-- 3. Get the total number of cancelled rides by customers:
Create view total_cancelled_rides_by_customers as
Select COUNT(booking_status) as Cancel_Booking_Total from Ola where booking_status ='Canceled by Customer';

select * from total_cancelled_rides_by_customers;


-- 4. List the top 5 customers who booked the highest number of rides:
create view top5_cust_with_highest_booking_rides as
Select top 5 customer_id ,COUNT(booking_id) as Number_of_rides from Ola 
group by Customer_ID order by COUNT(booking_id) desc;

select * from top5_cust_with_highest_booking_rides;


-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view  rides_cancelled_by_drivers_P_C_issues as
Select COUNT(booking_status) as Cancel_Booking_Total from Ola where Booking_Status = 'Canceled by driver'
and Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from rides_cancelled_by_drivers_P_C_issues;


--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view max_min_driver_rating_for_PS_booking as
Select max(driver_ratings) as Maximum_Rating , MIN(driver_ratings) as Minimum_Rating from Ola
where vehicle_Type = 'Prime Sedan';

select * from max_min_driver_rating_for_PS_booking;


-- 7. Retrieve all rides where payment was made using UPI:
create view UPI_Payment as 
Select * from Ola where Payment_Method = 'UPI';

select * from UPI_Payment;


--8. Find the average customer rating per vehicle type:
create view avg_cust_rating_per_vehicle as 
Select Vehicle_Type , Round(AVG(Customer_rating),2) as Avg_customer_rating from Ola where Booking_Status = 'success'
group by Vehicle_Type;

select * from avg_cust_rating_per_vehicle;


-- 9. Calculate the total booking value of rides completed successfully:
create view Total_value_of_succcessful_rides as
Select sum(booking_value) as Total_booking_value from ola where booking_status ='success';

select * from Total_value_of_succcessful_rides;


-- 10. List all incomplete rides along with the reason:
create view Incomplete_Rides_Reason as
select Booking_id , Incomplete_Rides ,Incomplete_Rides_Reason from Ola where Incomplete_Rides = 'yes' ;

select * from Incomplete_Rides_Reason;


-- 11. Top 5 Customers by Total Booking Value
create view Top5_cust_by_total_value as 
Select top 5 customer_id ,sum(Booking_Value) as Number_of_rides from Ola 
group by Customer_ID order by sum(Booking_Value) desc;

select * from Top5_cust_by_total_value;


-- 12. Ride Distance Distribution Per Day
create view ride_distance_per_day as 
select Format(date,'dd') as Days , sum(ride_distance) as Ride_distance from Ola where Booking_Status ='success' 
group by Format(date,'dd') ;

select * from ride_distance_per_day;
