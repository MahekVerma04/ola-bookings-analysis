USE ola;

CREATE TABLE bookings (
    Ride_Date DATE,
    Booking_Time TIME,
    Booking_ID VARCHAR(20),
    Booking_Status VARCHAR(30),
    Customer_ID VARCHAR(20),
    Vehicle_Type VARCHAR(30),
    Pickup_Location VARCHAR(50),
    Drop_Location VARCHAR(50),
    AvgVTAT FLOAT,
    AvgCTAT FLOAT,
    Cancelled_Rides_by_Customer TINYINT(1),
    Reason_for_cancelling_by_Customer VARCHAR(100),
    Cancelled_Rides_by_Driver TINYINT(1),
    Reason_for_cancelling_by_Driver VARCHAR(100),
    Incomplete_Rides TINYINT(1),
    Incomplete_Rides_Reason VARCHAR(100),
    Booking_Value FLOAT,
    Ride_Distance FLOAT,
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT,
    Payment_Method VARCHAR(20)
);
LOAD DATA LOCAL INFILE 'C:/Users/DELL/Downloads/ola_rides_details.csv'
INTO TABLE bookings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    Ride_Date,
    Booking_Time,
    Booking_ID,
    Booking_Status,
    Customer_ID,
    Vehicle_Type,
    Pickup_Location,
    Drop_Location,
    AvgVTAT,
    AvgCTAT,
    Cancelled_Rides_by_Customer,
    Reason_for_cancelling_by_Customer,
    Cancelled_Rides_by_Driver,
    Reason_for_cancelling_by_Driver,
    Incomplete_Rides,
    Incomplete_Rides_Reason,
    Booking_Value,
    Ride_Distance,
    Driver_Ratings,
    Customer_Rating,
    Payment_Method
);