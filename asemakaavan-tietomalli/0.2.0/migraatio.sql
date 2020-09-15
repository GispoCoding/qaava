-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.2
-- Diff date: 2020-09-15 20:08:54
-- Source model: qaavakanta
-- Database: ak010
-- PostgreSQL version: 11.0

-- [ Diff summary ]
-- Dropped objects: 12
-- Created objects: 23
-- Changed objects: 8
-- Truncated tables: 0

SET search_path=public,pg_catalog,asemakaavat,koodistot,kaavan_lisatiedot;
-- ddl-end --


-- [ Dropped objects ] --
ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_uq CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.osa_alue_tyyppi DROP CONSTRAINT IF EXISTS osa_alue_tyyppi_uq CASCADE;
-- ddl-end --
ALTER TABLE koodistot.osa_alue_tyyppi DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS maankayttoluokka_uq CASCADE;
-- ddl-end --
ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
-- ddl-end --
DROP TABLE IF EXISTS koodistot.kuvaustyyli CASCADE;
-- ddl-end --
DROP SEQUENCE IF EXISTS koodistot.kuvaustyyli_gid_seq CASCADE;
-- ddl-end --
ALTER TABLE asemakaavat.asemakaava DROP COLUMN IF EXISTS gid_kuvaustyyli CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP COLUMN IF EXISTS uuid_asemakaava CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP COLUMN IF EXISTS uuid_maankayttoalue CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP COLUMN IF EXISTS uuid_kaavaelementti CASCADE;
-- ddl-end --
ALTER TABLE koodistot.maankayttoluokka DROP COLUMN IF EXISTS gid_kuvaustyyli CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavaelementti_tyyppi DROP COLUMN IF EXISTS gid_kuvaustyyli CASCADE;
-- ddl-end --
ALTER TABLE koodistot.osa_alue_tyyppi DROP COLUMN IF EXISTS gid_kuvaustyyli CASCADE;
-- ddl-end --


-- [ Created objects ] --
-- object: otsikko | type: COLUMN --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP COLUMN IF EXISTS otsikko CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD COLUMN otsikko varchar;
-- ddl-end --


-- object: koodistot.geometria_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.geometria_tyyppi CASCADE;
CREATE TABLE koodistot.geometria_tyyppi (
	gid serial NOT NULL,
	nimi varchar,
	CONSTRAINT geometria_tyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --
-- ALTER TABLE koodistot.geometria_tyyppi OWNER TO postgres;
-- ddl-end --

INSERT INTO koodistot.geometria_tyyppi (gid, nimi) VALUES (E'1', E'alue');
-- ddl-end --
INSERT INTO koodistot.geometria_tyyppi (gid, nimi) VALUES (E'2', E'viiva');
-- ddl-end --
INSERT INTO koodistot.geometria_tyyppi (gid, nimi) VALUES (E'3', E'piste');
-- ddl-end --

-- object: gid_geometria_tyyppi | type: COLUMN --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP COLUMN IF EXISTS gid_geometria_tyyppi CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD COLUMN gid_geometria_tyyppi integer;
-- ddl-end --


-- object: asemakaavat.many_maankayttoalue_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_maankayttoalue_has_many_kaavamaarays CASCADE;
CREATE TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays (
	uuid_maankayttoalue uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_maankayttoalue_has_many_kaavamaarays_pk PRIMARY KEY (uuid_maankayttoalue,uuid_kaavamaarays)

);
-- ddl-end --

-- object: asemakaavat.many_asemakaava_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_asemakaava_has_many_kaavamaarays CASCADE;
CREATE TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays (
	uuid_asemakaava uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_asemakaava_has_many_kaavamaarays_pk PRIMARY KEY (uuid_asemakaava,uuid_kaavamaarays)

);
-- ddl-end --

-- object: asemakaavat.many_kaavaelementti_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_kaavaelementti_has_many_kaavamaarays CASCADE;
CREATE TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays (
	uuid_kaavaelementti uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_kaavaelementti_has_many_kaavamaarays_pk PRIMARY KEY (uuid_kaavaelementti,uuid_kaavamaarays)

);
-- ddl-end --

-- object: gid_dokumentti | type: COLUMN --
-- ALTER TABLE asemakaavat.kaavaelementti DROP COLUMN IF EXISTS gid_dokumentti CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD COLUMN gid_dokumentti integer;
-- ddl-end --


-- object: gid_dokumentti | type: COLUMN --
-- ALTER TABLE asemakaavat.maankayttoalue DROP COLUMN IF EXISTS gid_dokumentti CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD COLUMN gid_dokumentti integer;
-- ddl-end --


-- object: gid_dokumentti | type: COLUMN --
-- ALTER TABLE asemakaavat.osa_alue DROP COLUMN IF EXISTS gid_dokumentti CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD COLUMN gid_dokumentti integer;
-- ddl-end --


-- object: viimeisin_muokkaaja | type: COLUMN --
-- ALTER TABLE asemakaavat.asemakaava DROP COLUMN IF EXISTS viimeisin_muokkaaja CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD COLUMN viimeisin_muokkaaja varchar;
-- ddl-end --


-- object: viimeisin_muokkaaja | type: COLUMN --
-- ALTER TABLE asemakaavat.maankayttoalue DROP COLUMN IF EXISTS viimeisin_muokkaaja CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD COLUMN viimeisin_muokkaaja varchar;
-- ddl-end --


-- object: viimeisin_muokkaaja | type: COLUMN --
-- ALTER TABLE asemakaavat.osa_alue DROP COLUMN IF EXISTS viimeisin_muokkaaja CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD COLUMN viimeisin_muokkaaja varchar;
-- ddl-end --


-- object: viimeisin_muokkaaja | type: COLUMN --
-- ALTER TABLE asemakaavat.kaavaelementti DROP COLUMN IF EXISTS viimeisin_muokkaaja CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD COLUMN viimeisin_muokkaaja varchar;
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


-- [ Created foreign keys ] --
-- object: geometria_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS geometria_tyyppi_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT geometria_tyyppi_fk FOREIGN KEY (gid_geometria_tyyppi)
REFERENCES koodistot.geometria_tyyppi (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES asemakaavat.maankayttoalue (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES asemakaavat.kaavaelementti (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

