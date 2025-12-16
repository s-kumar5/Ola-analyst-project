 --1. Retrieve all successful bookings:
 select * from successful_booking;

 --2. Find the average ride distance for each vehicle type:
 select * from avg_ride_distance_for_each_vehicle;

 --3. Get the total number of cancelled rides by customers:
 select * from total_cancelled_rides_by_customers;

 --4. List the top 5 customers who booked the highest number of rides:
 select * from top5_cust_with_highest_booking_rides;

 --5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 select * from rides_cancelled_by_drivers_P_C_issues;

 --6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 select * from max_min_driver_rating_for_PS_booking;

 --7. Retrieve all rides where payment was made using UPI:
select * from UPI_Payment;

 --8. Find the average customer rating per vehicle type:
select * from avg_cust_rating_per_vehicle;

 --9. Calculate the total booking value of rides completed successfully:
select * from Total_value_of_succcessful_rides;

 --10. List all incomplete rides along with the reason:
 select * from Incomplete_Rides_Reason;

 --11. Top 5 Customers by Total Booking Value:
 select * from Top5_cust_by_total_value;

 -- 12. Ride Distance Distribution Per Day:
 select * from ride_distance_per_day;