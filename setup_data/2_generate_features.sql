

---------------------------------------
--             STEP 2                --
--                                   --
--     Create table with features    -- 
--                                   --
---------------------------------------



truncate table pred.features;

--Query returned successfully in 1 min.
create table pred.features as
with area as (
select 
booli_id
, (select location_name from pred.locations where ST_Contains(location_geom, ST_MakePoint(position_longitude, position_latitude))) as area_from_geo
from pred.sold
)
, metro_locations as (
select 
booli_id
, (
    select 
    min(st_distancesphere(
    st_makepoint(sold.position_longitude::numeric, sold.position_latitude::numeric)
    ,st_makepoint(ml.lon::numeric, ml.lat::numeric)
    )) from pred.metro_locations ml
) as min_distance_to_metro
from pred.sold
)
SELECT 
s.published::date AS published
, date_trunc('week'::text, s.published)::date AS published_week
, date_trunc('month'::text, s.published)::date AS published_month
, s.sold_date
, date_trunc('week'::text, s.sold_date)::date AS sold_week
, date_trunc('month'::text, s.sold_date)::date AS sold_month
, s.object_type
, s.living_area
, s.list_price
, round(s.list_price / NULLIF(s.living_area, 0::numeric), 4) AS sqm_list_price
, s.sold_price
, round(s.sold_price / NULLIF(s.living_area, 0::numeric), 4) AS sqm_sold_price
, a.area_from_geo
FROM pred.sold s
left join metro_locations l on l.booli_id = s.booli_id
left join area a on a.booli_id = s.booli_id
where a.area_from_geo is not null;





-- ca 2 mins
create table export_for_analysis_20181114 as 
select
*
from pred.features


-- export csv:
-- bash: psql
\c metrics-dev
\copy (select * from public.export_for_analysis_20181114) TO '/Users/Filip/Desktop/20181114_raw_geo.csv' DELIMITER ',' CSV HEADER;