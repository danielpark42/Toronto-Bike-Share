-- Table: public.bikeshare

-- DROP TABLE IF EXISTS public.bikeshare;

CREATE TABLE IF NOT EXISTS public.bikeshare
(
    trip_id integer NOT NULL DEFAULT nextval('bikeshare_trip_id_seq'::regclass),
    trip_duration integer,
    start_station_id integer,
    start_time timestamp without time zone,
    start_station_name character varying(100) COLLATE pg_catalog."default",
    end_station_id integer,
    end_time timestamp without time zone,
    end_station_name character varying(100) COLLATE pg_catalog."default",
    bike_id integer,
    user_type character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT bikeshare_trip_id_key UNIQUE (trip_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bikeshare
    OWNER to postgres;


-- Granting access so python script can run
grant all privileges on database "Toronto Bike Share" to postgres
grant all privileges on all tables in schema public to postgres
grant usage on schema public to postgres
grant usage on all sequences in schema public to postgres
