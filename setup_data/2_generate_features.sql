

---------------------------------------
--             STEP 2                --
--                                   --
--     Create table with features    -- 
--                                   --
---------------------------------------



drop table pred.features;

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
, s.sold_date ::date as sold_date
, s.object_type::text as object_type
, s.living_area::numeric as living_area
, s.rooms::numeric as rooms
, s.floor::numeric as floor
, s.rent::numeric as rent
, s.list_price::numeric as list_price
, s.sold_price::numeric as sold_price
, s.sold_price_source::text as sold_price_source
, s.construction_year::bigint as construction_year
, s.address_street_address::text as address_street_address
, s.region_municipality_name::text as region_municipality_name
, s.region_county_name::text as region_county_name
, s.apartment_number::text as apartment_number
, s.distance_ocean::bigint as distance_ocean
, s.source_name::text as source_name
, s.source_type::text as source_type
, s.source_id::bigint as source_id
, s.additional_area::numeric as additional_area
, s.location_named_areas::text as location_named_areas
, s.plot_area::numeric as plot_area
-- features
, date_trunc('week'::text, s.published)::date AS published_week
, date_trunc('month'::text, s.published)::date AS published_month
, date_trunc('week'::text, s.sold_date)::date AS sold_week
, date_trunc('month'::text, s.sold_date)::date AS sold_month
, round(s.list_price / NULLIF(s.living_area, 0::numeric), 4) AS sqm_list_price
, round(s.sold_price / NULLIF(s.living_area, 0::numeric), 4) AS sqm_sold_price
, round(s.rent / NULLIF(s.living_area, 0::numeric), 4) AS sqm_rent_price
, a.area_from_geo::text as area_from_geo
, l.min_distance_to_metro::numeric as min_distance_to_metro 
FROM pred.sold s
left join metro_locations l on l.booli_id = s.booli_id
left join area a on a.booli_id = s.booli_id
where a.area_from_geo is not null;


