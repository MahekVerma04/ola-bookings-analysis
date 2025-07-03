use ola;

select COUNT(*) from bookings;
select * from bookings;

#1. Retrieve all successful bookings:
create view Successful_Bookings as
select * from bookings
where Booking_Status='Success';

#2. Find the average ride distance for each vehicle type:
create view Ride_dist_for_each_vehicle as
select  Vehicle_Type, AVG(Ride_Distance) as avgRideDistance from bookings
where Booking_Status='Success'
group by Vehicle_Type;

#3. Get the total number of cancelled rides by customers:
create view Cancelled_rides_by_customer as
select COUNT(Cancelled_Rides_by_Customer) as cancelledRides
from bookings
where Cancelled_Rides_by_Customer='Personal & Car related issues';

#4. List the top 5 customers who booked the highest number of rides:
create view Top_5_customers as
select Customer_ID, COUNT(*) as totalBookings from bookings
group by Customer_ID
order by totalBookings desc limit 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Cancelled_by_driver_due_to_P_C as
select COUNT(Reason_for_cancelling_by_Driver) as cancelledRides
from bookings
where Reason_for_cancelling_by_Driver='Personal & Car related issues';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view MIN_MAX_driver_rating_prime_sedan as
select MAX(Driver_Ratings) AS maxRating,
	   MIN(Driver_Ratings) AS minRating
from bookings
where Vehicle_Type='Prime Sedan'; 

#7. Retrieve all rides where payment was made using UPI:
create view Payment_mode_UPI as
select * from bookings
where Payment_Mode='UPI';

select AVG(Driver_Ratings) AS avgRating
from bookings
where Vehicle_Type='Prime Sedan'; 

#8. Find the average customer rating per vehicle type:
create view Avg_customer_rating_per_vehicle_type as
select AVG(Customer_Rating) as avgRatings, Vehicle_Type 
from bookings
group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
create view Total_booking_value as
select SUM(Booking_Value)
from bookings
where Booking_Status='Success';

#10. List all incomplete rides along with the reason:
create view Incomplete_ride_reason as 
select Incomplete_Rides_Reason, Booking_ID
from bookings
WHERE Incomplete_Rides=1;