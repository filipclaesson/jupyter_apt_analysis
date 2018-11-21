-- create table export_for_analysis_20180815 as 
-- with locations as (
-- select 
-- booli_id
-- , (select location_name from locations where ST_Contains(location_geom, ST_MakePoint(position_longitude, position_latitude))) as area_from_geo
-- from sold
-- )

-- select
-- sold.*
-- , (
--     select 
--     min(st_distancesphere(
--     st_makepoint(sold.position_longitude::numeric, sold.position_latitude::numeric)
--     ,st_makepoint(ml.lon::numeric, ml.lat::numeric)
--     )) from metro_locations ml
-- ) as min_distance_to_metro
-- , l.area_from_geo
-- from sold
-- left join locations l on l.booli_id = sold.booli_id
-- where area_from_geo is not null

-- export csv:
-- bash: psql
\c metrics-dev
\copy (select * from public.export_for_analysis_20180815) TO '/Users/Filip/Desktop/20180815_raw_geo.csv' DELIMITER ',' CSV HEADER;


-- ca 2 mins
create table export_for_analysis_20181114 as 
with locations as (
select 
booli_id
, (select location_name from locations where ST_Contains(location_geom, ST_MakePoint(position_longitude, position_latitude))) as area_from_geo
from sold
)

select
sold.*
, (
    select 
    min(st_distancesphere(
    st_makepoint(sold.position_longitude::numeric, sold.position_latitude::numeric)
    ,st_makepoint(ml.lon::numeric, ml.lat::numeric)
    )) from metro_locations ml
) as min_distance_to_metro
, l.area_from_geo
from sold
left join locations l on l.booli_id = sold.booli_id
where area_from_geo is not null



-- export csv:
-- bash: psql
\c metrics-dev
\copy (select * from public.export_for_analysis_20181114) TO '/Users/Filip/Desktop/20181114_raw_geo.csv' DELIMITER ',' CSV HEADER;