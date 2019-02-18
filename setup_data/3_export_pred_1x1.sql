
----- EXPORT ----

-- ca 0 mins
create table pred.export_for_pred_1x1 as 
select
published
, sold_date
, object_type
, living_area
, rooms
, floor
, rent
, list_price
, sold_price
, sold_price_source
, construction_year
, apartment_number
, distance_ocean
, source_name
, source_type
, source_id
, plot_area
, published_week
, published_month
, sold_week
, sold_month
, sqm_list_price
, sqm_sold_price
, sqm_rent_price
, area_from_geo
, min_distance_to_metro
from pred.features
where 1=1
and object_type = 'Lagenhet'
and published < '2018-06-01'
order by random() limit 10000;


-- export csv:
-- bash: psql
\c postgres
\copy (select * from pred.export_for_pred_1x1) TO '/Users/Filip/Google Drive/jupiter/apartment_analysis/setup_data/pred_1x1_20181206.csv' DELIMITER ',' CSV HEADER;