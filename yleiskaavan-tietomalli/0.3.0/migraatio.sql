-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.2
-- Diff date: 2020-10-09 10:36:07
-- Source model: qaava-yleiskaava
-- Database: yk020
-- PostgreSQL version: 11.0

-- [ Diff summary ]
-- Dropped objects: 0
-- Created objects: 1
-- Changed objects: 7
-- Truncated tables: 0

SET search_path=public,pg_catalog,yleiskaava,koodistot,kaavan_lisatiedot;
-- ddl-end --


-- [ Created objects ] --
-- object: nimi | type: COLUMN --
-- ALTER TABLE yleiskaava.kaavaelementti DROP COLUMN IF EXISTS nimi CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD COLUMN nimi varchar;
-- ddl-end --




-- [ Changed objects ] --
COMMENT ON EXTENSION postgis IS '';
-- ddl-end --
COMMENT ON EXTENSION "uuid-ossp" IS '';
-- ddl-end --
ALTER TABLE yleiskaava.yleiskaava ALTER COLUMN geom TYPE geometry(MULTIPOLYGONZ, 3877);
-- ddl-end --
ALTER TABLE yleiskaava.kaavaelementti ALTER COLUMN geom_polygon TYPE geometry(MULTIPOLYGONZ, 3877);
-- ddl-end --
ALTER TABLE yleiskaava.kaavaelementti ALTER COLUMN geom_line TYPE geometry(MULTILINESTRINGZ, 3877);
-- ddl-end --
ALTER TABLE yleiskaava.kaavaelementti ALTER COLUMN geom_point TYPE geometry(MULTIPOINTZ, 3877);
-- ddl-end --
ALTER TABLE yleiskaava.maankayttoalue ALTER COLUMN geom TYPE geometry(MULTIPOLYGONZ, 3877);
-- ddl-end --
