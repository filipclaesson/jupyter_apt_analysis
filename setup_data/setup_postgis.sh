psql -d postgres -f /Applications/Postgres.app/Contents/Versions/9.6/share/postgresql/contrib/postgis-2.3/spatial_ref_sys.sql
psql -d postgres -f /Applications/Postgres.app/Contents/Versions/9.6/share/postgresql/contrib/postgis-2.3/postgis.sql

-- setup postgis on raspberry 
sudo apt-get update
sudo apt-get install postgresql-9.4-postgis-2.1
-- start psql as postgres user
sudo -u postgres psql postgres
-- execute in pssql: "CREATE EXTENSION postgis;"