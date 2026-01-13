-- Active: 1739698938169@@127.0.0.1@5432@postgres
USER postgres;

CREATE DATABASE nyc_geo;
\c nyc_geo;
CREATE EXTENSION postgis;


SELECT indexname, indexdef 
FROM pg_indexes 
WHERE tablename = 'points_taxis';

CREATE INDEX IF NOT EXISTS idx_points_taxis_geometry ON points_taxis USING GIST (geometry);


REINDEX TABLE points_taxis;



CREATE INDEX IF NOT EXISTS idx_points_geo ON points_taxis USING GIST (geometry);
CREATE INDEX IF NOT EXISTS idx_zones_geo ON zones_nyc USING GIST (geometry);
CREATE INDEX IF NOT EXISTS idx_points_taxis_geometry ON points_taxis USING GIST (geometry);


EXPLAIN ANALYZE VERBOSE 
SELECT p.*, z.borough
FROM points_taxis p
JOIN zones_nyc z
ON ST_Within(p.geometry, z.geometry);


EXPLAIN ANALYZE VERBOSE 
SELECT p.*, z.borough
FROM points_taxis p
JOIN zones_nyc z
ON ST_Within(p.geometry, z.geometry);
