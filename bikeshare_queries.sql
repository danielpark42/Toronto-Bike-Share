-- Number of trips per month, by year
SELECT 
	EXTRACT(YEAR FROM start_time) AS year,
	EXTRACT(MONTH FROM start_time) AS month,
	COUNT(trip_id) AS Number_Of_Trips
FROM
	bikeshare
GROUP BY 1, 2;

  
-- Duration of trips per month, by year
SELECT 
	EXTRACT(YEAR FROM start_time) AS year,
	EXTRACT(MONTH FROM start_time) AS month,
	COUNT(trip_duration) AS total_trip_duration
FROM
	bikeshare
GROUP BY 1, 2;


-- Total number of trips by day of week for the year
WITH DOW_Counter AS (
    SELECT
        EXTRACT(YEAR FROM start_time) AS year,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 0 THEN 1 ELSE 0 
        END AS sunday_count,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 1 THEN 1 ELSE 0 
        END AS monday_count,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 2 THEN 1 ELSE 0 
        END AS tuesday_count,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 3 THEN 1 ELSE 0 
        END AS wednesday_count,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 4 THEN 1 ELSE 0 
        END AS thursday_count,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 5 THEN 1 ELSE 0 
        END AS friday_count,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 6 THEN 1 ELSE 0 
        END AS saturday_count
    FROM bikeshare
)
SELECT 
	d.year,
	SUM(d.sunday_count) as total_sunday_trips,
	SUM(d.monday_count) as total_monday_trips,
	SUM(d.tuesday_count) as total_tuesday_trips,
	SUM(d.wednesday_count) as total_wednesday_trips,
	SUM(d.thursday_count) as total_thursday_trips,
	SUM(d.friday_count) as total_friday_trips,
	SUM(d.saturday_count) as total_saturday_trips
FROM DOW_Counter d
GROUP BY d.year;


-- Total duration of trips by day of week for the year
WITH DOW_Counter AS (
    SELECT
        EXTRACT(YEAR FROM start_time) AS year,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 0 THEN trip_duration ELSE 0 
        END AS sunday_duration,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 1 THEN trip_duration ELSE 0 
        END AS monday_duration,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 2 THEN trip_duration ELSE 0 
        END AS tuesday_duration,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 3 THEN trip_duration ELSE 0 
        END AS wednesday_duration,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 4 THEN trip_duration ELSE 0 
        END AS thursday_duration,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 5 THEN trip_duration ELSE 0 
        END AS friday_duration,
        CASE
            WHEN EXTRACT(DOW FROM start_time) = 6 THEN trip_duration ELSE 0 
        END AS saturday_duration
    FROM bikeshare
)
SELECT 
	d.year,
	SUM(d.sunday_duration) as total_sunday_duration,
	SUM(d.monday_duration) as total_monday_duration,
	SUM(d.tuesday_duration) as total_tuesday_duration,
	SUM(d.wednesday_duration) as total_wednesday_duration,
	SUM(d.thursday_duration) as total_thursday_duration,
	SUM(d.friday_duration) as total_friday_duration,
	SUM(d.saturday_duration) as total_saturday_duration
FROM DOW_Counter d
GROUP BY d.year;


-- A more efficient query than the CTE noted above
SELECT
    EXTRACT(YEAR FROM start_time) AS year,
    SUM(trip_duration) FILTER (WHERE EXTRACT(DOW FROM start_time) = 0) AS sunday_duration,
    SUM(trip_duration) FILTER (WHERE EXTRACT(DOW FROM start_time) = 1) AS monday_duration,
    SUM(trip_duration) FILTER (WHERE EXTRACT(DOW FROM start_time) = 2) AS tuesday_duration,
    SUM(trip_duration) FILTER (WHERE EXTRACT(DOW FROM start_time) = 3) AS wednesday_duration,
    SUM(trip_duration) FILTER (WHERE EXTRACT(DOW FROM start_time) = 4) AS thursday_duration,
    SUM(trip_duration) FILTER (WHERE EXTRACT(DOW FROM start_time) = 5) AS friday_duration,
    SUM(trip_duration) FILTER (WHERE EXTRACT(DOW FROM start_time) = 6) AS saturday_duration
FROM bikeshare
GROUP BY EXTRACT(YEAR FROM start_time);


-- Number of trips by day of month per year
SELECT
    EXTRACT(YEAR FROM start_time) AS year,
    EXTRACT(DAY FROM start_time) AS day_of_month,
    COUNT(trip_id) AS total_trips
FROM bikeshare
GROUP BY EXTRACT(YEAR FROM start_time), EXTRACT(DAY FROM start_time)
ORDER BY year, day_of_month;

-- Total duration of trips by day of month per year
SELECT
    EXTRACT(YEAR FROM start_time) AS year,
    EXTRACT(DAY FROM start_time) AS day_of_month,
    SUM(trip_duration) AS total_duration
FROM bikeshare
GROUP BY EXTRACT(YEAR FROM start_time), EXTRACT(DAY FROM start_time)
ORDER BY year, day_of_month;


-- Number of trips by hour of day per year
SELECT
    EXTRACT(YEAR FROM start_time) AS year,
    EXTRACT(hour FROM start_time) AS hour_of_day,
    COUNT(trip_id) AS total_trips
FROM bikeshare
GROUP BY EXTRACT(YEAR FROM start_time), EXTRACT(hour FROM start_time)
ORDER BY year, hour_of_day;


-- Total duration of trips by hour of day per year
SELECT
    EXTRACT(YEAR FROM start_time) AS year,
    EXTRACT(hour FROM start_time) AS hour_of_day,
    SUM(trip_duration) AS total_duration
FROM bikeshare
GROUP BY EXTRACT(YEAR FROM start_time), EXTRACT(hour FROM start_time)
ORDER BY year, hour_of_day;


-- Noticed some entries with NULL for end_station_id. Counting these instances: result was 8042 null end_station_id's
SELECT 
    COUNT(CASE WHEN start_station_id = 'NULL' THEN 1 END) AS start_station_id_null_count,
    COUNT(CASE WHEN end_station_id = 'NULL' THEN 1 END) AS end_station_id_null_count
FROM bikeshare;


-- Further investigation yields that where these entries are null, the trip duration is usually 0.
-- There are 16714 instances where the trip duration = 0 seconds.
-- The instances where the end_station_id is NULL, there are 
SELECT *
FROM bikeshare
WHERE end_station_id = 'NULL'; --count = 8,042

SELECT count(trip_duration)
FROM bikeshare
WHERE trip_duration = 0; --count = 16,714

SELECT * FROM bikeshare
WHERE end_station_name = 'NULL'; -- count = 820,154

SELECT * FROM bikeshare
WHERE start_station_name = 'NULL'; -- count = 811,227

select count(*) from bikeshare
WHERE end_station_name = 'NULL' AND end_station_id = 'NULL' -- count = 8,042

-- 
