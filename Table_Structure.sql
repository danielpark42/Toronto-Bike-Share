-- Create table
CREATE TABLE BikeShare(
	trip_id SERIAL UNIQUE NOT NULL,
	trip_duration INTEGER,
	start_station_id INTEGER,
	start_time TIMESTAMP,
	start_station_name VARCHAR(100),
	end_station_id INTEGER,
	end_time TIMESTAMP,
	end_station_name VARCHAR(100),
	bike_id INTEGER,
	user_type VARCHAR(50)
)
