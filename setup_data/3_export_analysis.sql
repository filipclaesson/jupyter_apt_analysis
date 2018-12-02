
----- EXPORT ----

-- ca 2 mins
create table export_for_analysis_20181114 as 
select
*
from pred.features


-- export csv:
-- bash: psql
\c metrics-dev
\copy (select * from public.export_for_analysis_20181114) TO '/Users/Filip/Desktop/20181114_raw_geo.csv' DELIMITER ',' CSV HEADER;