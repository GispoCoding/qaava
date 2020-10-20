-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.2
-- Diff date: 2020-10-20 11:54:19
-- Source model: qaava-asemakaava
-- Database: ak030
-- PostgreSQL version: 11.0

-- [ Diff summary ]
-- Dropped objects: 0
-- Created objects: 0
-- Changed objects: 8
-- Truncated tables: 0

SET search_path=public,pg_catalog,asemakaavat,koodistot,kaavan_lisatiedot;
-- ddl-end --


-- [ Changed objects ] --
COMMENT ON EXTENSION postgis IS '';
-- ddl-end --
COMMENT ON EXTENSION "uuid-ossp" IS '';
-- ddl-end --
ALTER TABLE asemakaavat.asemakaava ALTER COLUMN geom TYPE geometry(MULTIPOLYGONZ, 3877);
-- ddl-end --
ALTER TABLE asemakaavat.kaavaelementti ALTER COLUMN geom_polygon TYPE geometry(MULTIPOLYGONZ, 3877);
-- ddl-end --
ALTER TABLE asemakaavat.kaavaelementti ALTER COLUMN geom_line TYPE geometry(MULTILINESTRINGZ, 3877);
-- ddl-end --
ALTER TABLE asemakaavat.kaavaelementti ALTER COLUMN geom_point TYPE geometry(MULTIPOINTZ, 3877);
-- ddl-end --
ALTER TABLE asemakaavat.maankayttoalue ALTER COLUMN geom TYPE geometry(MULTIPOLYGONZ, 3877);
-- ddl-end --
ALTER TABLE asemakaavat.osa_alue ALTER COLUMN geom TYPE geometry(MULTIPOLYGONZ, 3877);
-- ddl-end --
