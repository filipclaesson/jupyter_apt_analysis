---------------------------------------
--             STEP 1                --
--                                   --
--     Load data from production     -- 
--           to a new table          --
--                                   --
---------------------------------------

create table if not exists pred.sold
(
    booli_id bigint,
    published timestamp without time zone,
    sold_date timestamp without time zone,
    object_type text COLLATE pg_catalog."default",
    living_area numeric,
    rooms numeric,
    floor numeric,
    rent numeric,
    list_price numeric,
    sold_price numeric,
    sold_price_source text COLLATE pg_catalog."default",
    construction_year bigint,
    address_street_address text COLLATE pg_catalog."default",
    region_municipality_name text COLLATE pg_catalog."default",
    region_county_name text COLLATE pg_catalog."default",
    url text COLLATE pg_catalog."default",
    apartment_number text COLLATE pg_catalog."default",
    distance_ocean numeric,
    source_name text COLLATE pg_catalog."default",
    source_url text COLLATE pg_catalog."default",
    source_type text COLLATE pg_catalog."default",
    source_id bigint,
    position_longitude numeric,
    position_latitude numeric,
    additional_area numeric,
    location_named_areas text COLLATE pg_catalog."default",
    plot_area text COLLATE pg_catalog."default"
);
truncate table pred.sold;
CREATE EXTENSION if not exists dblink;

insert into pred.sold (
SELECT * FROM public.dblink(
    'dbname=postgres port=5432 host=192.168.0.5 user=filip password=imitthuvud'
    , 'select booli_id,published,sold_date,object_type,living_area,rooms,floor,rent,list_price,sold_price,sold_price_source,construction_year,address_street_address,region_municipality_name,region_county_name,url,apartment_number,distance_ocean,source_name,source_url,source_type,source_id,position_longitude,position_latitude,additional_area,location_named_areas,plot_area from booli.sold where sold_date > ''2015-01-01'''
)
as table_def(
    booli_id bigint,
    published timestamp without time zone,
    sold_date timestamp without time zone,
    object_type text COLLATE pg_catalog."default",
    living_area numeric,
    rooms numeric,
    floor numeric,
    rent numeric,
    list_price numeric,
    sold_price numeric,
    sold_price_source text COLLATE pg_catalog."default",
    construction_year bigint,
    address_street_address text COLLATE pg_catalog."default",
    region_municipality_name text COLLATE pg_catalog."default",
    region_county_name text COLLATE pg_catalog."default",
    url text COLLATE pg_catalog."default",
    apartment_number text COLLATE pg_catalog."default",
    distance_ocean numeric,
    source_name text COLLATE pg_catalog."default",
    source_url text COLLATE pg_catalog."default",
    source_type text COLLATE pg_catalog."default",
    source_id bigint,
    position_longitude numeric,
    position_latitude numeric,
    additional_area numeric,
    location_named_areas text COLLATE pg_catalog."default",
    plot_area text COLLATE pg_catalog."default"
)
);
