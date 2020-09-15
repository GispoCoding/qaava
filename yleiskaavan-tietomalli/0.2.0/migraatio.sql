-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.2
-- Diff date: 2020-09-15 10:45:37
-- Source model: qaavakanta
-- Database: yk010
-- PostgreSQL version: 11.0

-- [ Diff summary ]
-- Dropped objects: 13
-- Created objects: 22
-- Changed objects: 7
-- Truncated tables: 0

SET search_path=public,pg_catalog,yleiskaava,koodistot,kaavan_lisatiedot;
-- ddl-end --


-- [ Dropped objects ] --
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
-- ddl-end --
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
-- ddl-end --
ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_uq CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS maankayttoluokka_uq CASCADE;
-- ddl-end --
ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
-- ddl-end --
DROP TABLE IF EXISTS kaavan_lisatiedot.many_dokumentti_has_many_asemakaava CASCADE;
-- ddl-end --
DROP TABLE IF EXISTS koodistot.kuvaustyyli CASCADE;
-- ddl-end --
DROP SEQUENCE IF EXISTS koodistot.kuvaustyyli_gid_seq CASCADE;
-- ddl-end --
ALTER TABLE yleiskaava.yleiskaava DROP COLUMN IF EXISTS gid_kuvaustyyli CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP COLUMN IF EXISTS uuid_yleiskaava CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP COLUMN IF EXISTS uuid_maankayttoalue CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavamaarays DROP COLUMN IF EXISTS uuid_kaavaelementti CASCADE;
-- ddl-end --
ALTER TABLE koodistot.maankayttoluokka DROP COLUMN IF EXISTS gid_kuvaustyyli CASCADE;
-- ddl-end --
ALTER TABLE koodistot.kaavaelementti_tyyppi DROP COLUMN IF EXISTS gid_kuvaustyyli CASCADE;
-- ddl-end --


-- [ Created objects ] --
-- object: viimeisin_muokkaaja | type: COLUMN --
-- ALTER TABLE yleiskaava.yleiskaava DROP COLUMN IF EXISTS viimeisin_muokkaaja CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD COLUMN viimeisin_muokkaaja varchar;
-- ddl-end --


-- object: pinta_ala | type: COLUMN --
-- ALTER TABLE yleiskaava.kaavaelementti DROP COLUMN IF EXISTS pinta_ala CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD COLUMN pinta_ala real;
-- ddl-end --

COMMENT ON COLUMN yleiskaava.kaavaelementti.pinta_ala IS E'Aluemaisen kaavaelementin pinta-ala';
-- ddl-end --


-- object: pituus | type: COLUMN --
-- ALTER TABLE yleiskaava.kaavaelementti DROP COLUMN IF EXISTS pituus CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD COLUMN pituus real;
-- ddl-end --

COMMENT ON COLUMN yleiskaava.kaavaelementti.pituus IS E'Viivamaisen kaavaelementin pituus';
-- ddl-end --


-- object: viimeisin_muokkaaja | type: COLUMN --
-- ALTER TABLE yleiskaava.kaavaelementti DROP COLUMN IF EXISTS viimeisin_muokkaaja CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD COLUMN viimeisin_muokkaaja varchar;
-- ddl-end --


-- object: viimeisin_muokkaaja | type: COLUMN --
-- ALTER TABLE yleiskaava.maankayttoalue DROP COLUMN IF EXISTS viimeisin_muokkaaja CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD COLUMN viimeisin_muokkaaja varchar;
-- ddl-end --


-- object: otsikko | type: COLUMN --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP COLUMN IF EXISTS otsikko CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD COLUMN otsikko varchar;
-- ddl-end --


-- object: kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava CASCADE;
CREATE TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava (
	gid_dokumentti integer NOT NULL,
	uuid_yleiskaava uuid NOT NULL,
	CONSTRAINT many_dokumentti_has_many_yleiskaava_pk PRIMARY KEY (gid_dokumentti,uuid_yleiskaava)

);
-- ddl-end --

-- object: gid_dokumentti | type: COLUMN --
-- ALTER TABLE yleiskaava.maankayttoalue DROP COLUMN IF EXISTS gid_dokumentti CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD COLUMN gid_dokumentti integer;
-- ddl-end --


-- object: gid_dokumentti | type: COLUMN --
-- ALTER TABLE yleiskaava.kaavaelementti DROP COLUMN IF EXISTS gid_dokumentti CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD COLUMN gid_dokumentti integer;
-- ddl-end --


-- object: yleiskaava.many_yleiskaava_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_yleiskaava_has_many_kaavamaarays CASCADE;
CREATE TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays (
	uuid_yleiskaava uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_yleiskaava_has_many_kaavamaarays_pk PRIMARY KEY (uuid_yleiskaava,uuid_kaavamaarays)

);
-- ddl-end --

-- object: yleiskaava.many_maankayttoalue_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_maankayttoalue_has_many_kaavamaarays CASCADE;
CREATE TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays (
	uuid_maankayttoalue uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_maankayttoalue_has_many_kaavamaarays_pk PRIMARY KEY (uuid_maankayttoalue,uuid_kaavamaarays)

);
-- ddl-end --

-- object: yleiskaava.many_kaavaelementti_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_kaavaelementti_has_many_kaavamaarays CASCADE;
CREATE TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays (
	uuid_kaavaelementti uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_kaavaelementti_has_many_kaavamaarays_pk PRIMARY KEY (uuid_kaavaelementti,uuid_kaavamaarays)

);
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


-- [ Created foreign keys ] --
-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: yleiskaava_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.maankayttoalue DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.kaavaelementti DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: yleiskaava_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES yleiskaava.maankayttoalue (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES yleiskaava.kaavaelementti (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

