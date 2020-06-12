-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.3-alpha
-- PostgreSQL version: 11.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: qaavakanta | type: DATABASE --
-- -- DROP DATABASE IF EXISTS qaavakanta;
-- CREATE DATABASE qaavakanta;
-- -- ddl-end --
-- 

-- object: asemakaavat | type: SCHEMA --
-- DROP SCHEMA IF EXISTS asemakaavat CASCADE;
CREATE SCHEMA asemakaavat;
-- ddl-end --

-- object: koodistot | type: SCHEMA --
-- DROP SCHEMA IF EXISTS koodistot CASCADE;
CREATE SCHEMA koodistot;
-- ddl-end --

-- object: kaavan_lisatiedot | type: SCHEMA --
-- DROP SCHEMA IF EXISTS kaavan_lisatiedot CASCADE;
CREATE SCHEMA kaavan_lisatiedot;
-- ddl-end --

SET search_path TO pg_catalog,public,asemakaavat,koodistot,kaavan_lisatiedot;
-- ddl-end --

-- object: postgis | type: EXTENSION --
-- DROP EXTENSION IF EXISTS postgis CASCADE;
CREATE EXTENSION postgis
WITH SCHEMA public;
-- ddl-end --

-- object: "uuid-ossp" | type: EXTENSION --
-- DROP EXTENSION IF EXISTS "uuid-ossp" CASCADE;
CREATE EXTENSION "uuid-ossp"
WITH SCHEMA public;
-- ddl-end --

-- object: asemakaavat.asemakaava | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.asemakaava CASCADE;
CREATE TABLE asemakaavat.asemakaava (
	gid serial,
	uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
	geom geometry(MULTIPOLYGONZ, 3877),
	nimi varchar,
	kaavatunnus varchar,
	laatija varchar,
	vahvistaja varchar,
	gid_kieli integer,
	gid_kaavatyyppi integer,
	pinta_ala real,
	gid_vaihetieto integer,
	luomispvm timestamp DEFAULT now(),
	poistamispvm timestamp,
	voimaantulopvm date,
	kumoamispvm date,
	gid_kuvaustyyli integer,
	gid_taustakartta integer,
	gid_dokumentti integer,
	CONSTRAINT ak_uuid_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.asemakaava IS 'Kaavoituksen lopputuloksena syntyvä maankäyttösuunnitelma';
-- ddl-end --

-- object: asemakaavat.kaavaelementti | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.kaavaelementti CASCADE;
CREATE TABLE asemakaavat.kaavaelementti (
	gid serial,
	uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
	geom_polygon geometry(MULTIPOLYGONZ, 3877),
	geom_line geometry(MULTILINESTRINGZ, 3877),
	geom_point geometry(MULTIPOINTZ, 3877),
	luontipvm timestamp DEFAULT now(),
	periytynytkohde boolean,
	uuid_asemakaava uuid,
	gid_kaavaelementti_tyyppi integer,
	CONSTRAINT kaavaelementti_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.kaavaelementti IS 'yhden tai useamman käyttötarkoitusalueen osa. Kaavaelementti tarkentaa käyttötarkoitusalueen maankäyttöä. Esim. melurajoitteet yms.';
-- ddl-end --

-- object: asemakaavat.maankayttoalue | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.maankayttoalue CASCADE;
CREATE TABLE asemakaavat.maankayttoalue (
	gid serial,
	uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
	geom geometry(MULTIPOLYGONZ, 3877),
	nimi varchar,
	pinta_ala real,
	luontipvm timestamp DEFAULT now(),
	periytynytkohde boolean,
	gid_maankayttoluokka integer,
	uuid_asemakaava uuid,
	CONSTRAINT kayttotarkoitusalue_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.maankayttoalue IS 'asemakaavan mukainen tiettyyn käyttöön varattu alue

Käyttötarkoitusalueiden pinta-ala täyttää asemakaava-alueen täysin. Käyttötarkoitusalue voi jakaantua yhteen tai useampaan kaavayksikköön. Käyttötarkoitusalueet voivat olla kortteleita, yleisiä alueita tai niiden osia tai muita yhtenäisiä alueita';
-- ddl-end --

-- object: asemakaavat.osa_alue | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.osa_alue CASCADE;
CREATE TABLE asemakaavat.osa_alue (
	gid serial,
	uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
	geom geometry(MULTIPOLYGONZ, 3877),
	luontipvm timestamp DEFAULT now(),
	pinta_ala real,
	periytynytkohde boolean,
	uuid_asemakaava uuid,
	gid_osa_alue_tyyppi integer,
	CONSTRAINT kaavayksikko_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.osa_alue IS 'Asemakaavan pienin tiettyyn käyttötarkoitukseen varattu yksikkö';
-- ddl-end --

-- object: koodistot.kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavamaarays CASCADE;
CREATE TABLE koodistot.kaavamaarays (
	uuid uuid NOT NULL,
	luontipvm timestamp DEFAULT now(),
	otsikko varchar,
	maaraysteksti varchar,
	uuid_asemakaava uuid,
	uuid_kaavaelementti uuid,
	uuid_osa_alue uuid,
	uuid_maankayttoalue uuid,
	CONSTRAINT kaavakohtainen_maarays_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.kaavamaarays IS 'kaavaan sisältyvä sanallinen määräys, joka on juridisesti sitova kaavan toimeenpanossa
huomautus.

Kaavamääräyksellä ja kaavamerkinnöillä yksilöidään maa-alueiden rakentaminen ja käyttö eri
tarkoituksiin.

Asemakaavamääräyksiä voidaan antaa asemakaavaa laadittaessa. Asemakaavamääräykset
voivat koskea myös haitallisten ympäristövaikutusten estämistä tai rajoittamista.';
-- ddl-end --

-- object: koodistot.kuvaustyyli | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kuvaustyyli CASCADE;
CREATE TABLE koodistot.kuvaustyyli (
	gid serial NOT NULL,
	teksti varchar,
	symboli varchar,
	CONSTRAINT kaavamerkinta_pk PRIMARY KEY (gid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.kuvaustyyli IS 'kaavaan sisältyvä graafinen merkki, merkintä tai merkkien yhdistelmä, joka on oikeudellisesti sitova kaavan toimeenpanossa';
-- ddl-end --

-- object: kaavan_lisatiedot.taustakartta | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.taustakartta CASCADE;
CREATE TABLE kaavan_lisatiedot.taustakartta (
	gid serial NOT NULL,
	nimi varchar,
	viittauspvm date,
	uri varchar,
	CONSTRAINT taustakartta_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE koodistot.kaavamaarays ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE koodistot.kaavamaarays ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES asemakaavat.maankayttoalue (uuid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE koodistot.kaavamaarays ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES asemakaavat.kaavaelementti (uuid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: osa_alue_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS osa_alue_fk CASCADE;
ALTER TABLE koodistot.kaavamaarays ADD CONSTRAINT osa_alue_fk FOREIGN KEY (uuid_osa_alue)
REFERENCES asemakaavat.osa_alue (uuid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.maankayttoluokka | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.maankayttoluokka CASCADE;
CREATE TABLE koodistot.maankayttoluokka (
	gid serial NOT NULL,
	paaluokka varchar,
	koodi varchar,
	nimike varchar,
	gid_kuvaustyyli integer,
	gid_hilucs integer,
	CONSTRAINT maankayttoluokat_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Asuinalue', E'A', E'Asuinalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Asuinalue', E'AK', E'Kerrostaloalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Asuinalue', E'AP', E'Pientaloalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Asuinalue', E'AR', E'Rivitaloalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Asuinalue', E'AO', E'Erillispientaloalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Asuinalue', E'AL', E'Asuin-, liike- ja toimistorakennusten alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Asuinalue', E'AM', E'Maatilojen talouskeskusalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'P', E'Palvelutoiminnot');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'PL', E'Lähipalvelut');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'PV', E'Kulttuuri- ja viihdepalvelut');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'Y', E'Yleiset rakennukset');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'YL', E'Julkiset lähipalvelut');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'YH', E'Hallinto- ja virastopalvelut');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'YO', E'Opetustoiminta');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'YS', E'Sosiaalitoimi ja terveydenhuolto');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'YK', E'Kirkot ja seurakuntatoiminta');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Palvelutoiminnot', E'YU', E'Urheilutoimintaa palvelevien rakennusten alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Keskustatoiminnot', E'C', E'Keskustatoiminnot');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liike- ja toimistorakennusten alue', E'K', E'Liike- ja toimistorakennusten alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liike- ja toimistorakennusten alue', E'KL', E'Liikerakennusten alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liike- ja toimistorakennusten alue', E'KM', E'Vähittäiskaupan suuryksikkö');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liike- ja toimistorakennusten alue', E'KT', E'Toimistorakennusten alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Teollisuusalue', E'T', E'Teollisuusalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Teollisuusalue', E'TY', E'Teollisuusalue, jolla ympäristö asettaa toiminnan laadulle erityisiä vaatimuksia.');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Virkistysalue', E'V', E'Virkistysalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Virkistysalue', E'VP', E'Puisto');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Virkistysalue', E'VL', E'Lähivirkistysalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Virkistysalue', E'VK', E'Leikkipuisto');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Virkistysalue', E'VU', E'Urheilu- ja virkistyspalvelualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Virkistysalue', E'VR', E'Retkeily- ja ulkoilualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Virkistysalue', E'VV', E'Uimaranta');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Loma- ja matkailualue', E'R', E'Loma- ja matkailualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Loma- ja matkailualue', E'RA', E'Lomarakennusten alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Loma- ja matkailualue', E'RM', E'Matkailua palvelevien rakennusten alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Loma- ja matkailualue', E'RL', E'Leirintäalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Loma- ja matkailualue', E'RP', E'Siirtolapuutarha- ja palstaviljelyalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'L', E'Liikennealue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'KATU', E'Katu');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LT', E'Yleisen tien alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LR', E'Rautatie');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LL', E'Lentokenttä');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LS', E'Satama');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LK', E'Kanava');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LV', E'Venesatama ja -valkama');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LP', E'Yleinen pysäköintialue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LPA', E'Autopaikka-alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LH', E'Huoltoasema');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LHA', E'Henkilöliikenneterminaali');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'LTA', E'Tavaraliikenneterminaali');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'TORI', E'Katuaukio/tori');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Liikenteen alue', E'KATU', E'Jalankululle tai pyöräilylle varattu katu');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'E', E'Erityisalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'ET', E'Yhdyskuntatekninen huolto');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EN', E'Energiahuolto');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EJ', E'Jätteenkäsittely');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EO', E'Maa-aineiston otto');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EV', E'Suojaviheralue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EK', E'Kaivosalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EMT', E'Mastoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EA', E'Ampumarata');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EP', E'Puolustusvoimienalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Erityisalue', E'EH', E'Hautausmaa');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Suojelualue', E'S', E'Suojelualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Suojelualue', E'SL', E'Luonnonsuojelualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Suojelualue', E'SM', E'Muinaismuistoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Suojelualue', E'SR', E'Rakennussuojelualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Maa- ja metsätalousalue', E'M', E'Maa- ja metsätalousalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Maa- ja metsätalousalue', E'MT', E'Maatalousalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Maa- ja metsätalousalue', E'ME', E'Kotieläintalouden suuryksikkö');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Maa- ja metsätalousalue', E'MP', E'Puutarha- ja kasvihuone');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Maa- ja metsätalousalue', E'MA', E'Maisemallisesti arvokas peltoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (paaluokka, koodi, nimike) VALUES (E'Vesialue', E'W', E'Vesialue');
-- ddl-end --

-- object: kaavan_lisatiedot.dokumentti | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.dokumentti CASCADE;
CREATE TABLE kaavan_lisatiedot.dokumentti (
	gid serial NOT NULL,
	gid_kieli integer,
	gid_dokumenttityyppi integer,
	uri varchar,
	CONSTRAINT dokumentti_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: taustakartta_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS taustakartta_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT taustakartta_fk FOREIGN KEY (gid_taustakartta)
REFERENCES kaavan_lisatiedot.taustakartta (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.kaavatyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavatyyppi CASCADE;
CREATE TABLE koodistot.kaavatyyppi (
	gid serial NOT NULL,
	nimi varchar,
	CONSTRAINT kaavatyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'1', E'Asemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'2', E'Ranta-asemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'3', E'Vaiheasemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'4', E'Maanalainen asemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'5', E'Vaiheranta-asemakaava');
-- ddl-end --

-- object: koodistot.kaavaelementti_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavaelementti_tyyppi CASCADE;
CREATE TABLE koodistot.kaavaelementti_tyyppi (
	gid serial NOT NULL,
	nimi varchar,
	gid_kuvaustyyli integer,
	gid_hsrcl integer,
	CONSTRAINT kaavaelementti_tyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'1', E'Melusuojaustarve');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'2', E'Liittymäkielto');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'3', E'Ajoneuvoliittymän likimääräinen sijainti');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'4', E'Rakennuksen sivu, johon rakennus on rakennettava kiinni');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'5', E'Harjasuunta');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'6', E'Ulkoilureitti');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'7', E'Puurivi');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'8', E'Rakennusalan sivu, johon kohdistuu lisätieto');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'9', E'Suojeltava puu');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi) VALUES (E'10', E'Maanpinnan likimääräinen korkeusasema');
-- ddl-end --

-- object: koodistot.kieli | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kieli CASCADE;
CREATE TABLE koodistot.kieli (
	gid serial NOT NULL,
	kieli varchar,
	CONSTRAINT kieli_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kieli (gid, kieli) VALUES (E'1', E'Suomi');
-- ddl-end --
INSERT INTO koodistot.kieli (gid, kieli) VALUES (E'2', E'Ruotsi');
-- ddl-end --
INSERT INTO koodistot.kieli (gid, kieli) VALUES (E'3', E'Suomi ja ruotsi');
-- ddl-end --

-- object: koodistot.hilucs | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.hilucs CASCADE;
CREATE TABLE koodistot.hilucs (
	gid serial NOT NULL,
	nimi varchar,
	maaritelma varchar,
	kuvaus varchar,
	CONSTRAINT hilucs_pk PRIMARY KEY (gid)

);
-- ddl-end --




































































































-- object: koodistot.osa_alue_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.osa_alue_tyyppi CASCADE;
CREATE TABLE koodistot.osa_alue_tyyppi (
	gid serial NOT NULL,
	koodi smallint,
	nimi varchar,
	gid_kuvaustyyli integer,
	gid_hsrcl integer,
	CONSTRAINT osa_alue_tyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'1', E'Tekstimääräys.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'2', E'Auton säilytyspaikan rakennusala.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'3', E'Pysäköimispaikka.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'4', E'Istutettava alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'5', E'Rakennukseen jätettävä kulkuaukko.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'6', E'Maanalaisiin tiloihin johtava ajoluiska.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'7', E'Maanalainen tila.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'8', E'Maanalainen väestönsuojaksi tarkoitettu tila.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'9', E'Maanalainen yleinen pysäköintilaitos.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'10', E'Liikennetunneli.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'11', E'Rakennusala, jolle saa sijoittaa lasten päiväkodin.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'12', E'Rakennusala, jolle saa sijoittaa myymälän.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'13', E'Rakennusala, jolle saa sijoittaa maatilan talouskeskuksen.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'14', E'Rakennusala, jolle saa sijoittaa talousrakennuksen.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'15', E'Alue, jolle saa sijoittaa polttoaineen jakeluaseman.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'16', E'Uloke.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'17', E'Valokatteinen tila.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'18', E'Leikki- ja oleskelualueeksi varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'19', E'Jalankululle ja polkupyöräilylle varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'20', E'Jalankululle ja polkupyöräilylle varattu alueen osa, jolla huoltoajo on sallittu.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'21', E'Jalankululle ja polkupyöräilylle varattu alueen osa, jolla tontille/rakennuspaikalle ajo on sallittu.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'22', E'Yleiseen tiehen kuuluva jalankulku- ja polkupyörätie.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'23', E'Joukkoliikenteelle varattu katu/tie.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'24', E'Ajoyhteys.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'25', E'Alueen sisäiselle huoltoliikenteelle varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'26', E'Yleisen tien suoja-alueeksi varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'27', E'Yleisen tien näkemäalueeksi varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'28', E'Maanalaista johtoa varten varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'29', E'Alue on varattu kunnan tarpeisiin.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'30', E'Alue on varattu valtion tarpeisiin.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'31', E'Yhteiskäyttöalue.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'32', E'Suojeltava alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'33', E'Alueen osa, jolla sijaitsee luonnonsuojelulain mukainen luonnonsuojelualue tai -kohde.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'34', E'Suojeltava rakennus.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'35', E'Rakennussuojelulain nojalla suojeltu rakennus.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'36', E'Maan päällistä johtoa varten varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi) VALUES (E'37', E'Rakennusala.');
-- ddl-end --

-- object: koodistot.hsrcl | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.hsrcl CASCADE;
CREATE TABLE koodistot.hsrcl (
	gid serial NOT NULL,
	teksti varchar,
	CONSTRAINT hsrcl_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: hsrcl_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS hsrcl_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT hsrcl_fk FOREIGN KEY (gid_hsrcl)
REFERENCES koodistot.hsrcl (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kuvaustyyli_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
ALTER TABLE koodistot.maankayttoluokka ADD CONSTRAINT kuvaustyyli_fk FOREIGN KEY (gid_kuvaustyyli)
REFERENCES koodistot.kuvaustyyli (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: maankayttoluokka_uq | type: CONSTRAINT --
-- ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS maankayttoluokka_uq CASCADE;
ALTER TABLE koodistot.maankayttoluokka ADD CONSTRAINT maankayttoluokka_uq UNIQUE (gid_kuvaustyyli);
-- ddl-end --

-- object: kuvaustyyli_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.osa_alue_tyyppi DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
ALTER TABLE koodistot.osa_alue_tyyppi ADD CONSTRAINT kuvaustyyli_fk FOREIGN KEY (gid_kuvaustyyli)
REFERENCES koodistot.kuvaustyyli (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: osa_alue_tyyppi_uq | type: CONSTRAINT --
-- ALTER TABLE koodistot.osa_alue_tyyppi DROP CONSTRAINT IF EXISTS osa_alue_tyyppi_uq CASCADE;
ALTER TABLE koodistot.osa_alue_tyyppi ADD CONSTRAINT osa_alue_tyyppi_uq UNIQUE (gid_kuvaustyyli);
-- ddl-end --

-- object: kuvaustyyli_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT kuvaustyyli_fk FOREIGN KEY (gid_kuvaustyyli)
REFERENCES koodistot.kuvaustyyli (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavaelementti_tyyppi_uq | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_uq CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT kaavaelementti_tyyppi_uq UNIQUE (gid_kuvaustyyli);
-- ddl-end --

-- object: koodistot.dokumenttityyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.dokumenttityyppi CASCADE;
CREATE TABLE koodistot.dokumenttityyppi (
	gid serial NOT NULL,
	nimi varchar,
	kuvaus varchar,
	CONSTRAINT dokumenttityyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus) VALUES (E'1', E'Liiteaineisto', E'Kaikki kaavaa tarkentavat tai selventävät dokumentit. Kaavan laatimisen aikana syntyvä aineisto pl. kaavaselostus.');
-- ddl-end --
INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus) VALUES (E'2', E'Kaavaselostus', E'Määrämuotoinen kaavan selostus.');
-- ddl-end --
INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus) VALUES (E'3', E'Lisätieto', E'Kaavaan liittyvät lisätietodokumentit.');
-- ddl-end --
INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus) VALUES (E'4', E'Päätös', E'Kaavan päätösasiakirjat.');
-- ddl-end --

-- object: hsrcl_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.osa_alue_tyyppi DROP CONSTRAINT IF EXISTS hsrcl_fk CASCADE;
ALTER TABLE koodistot.osa_alue_tyyppi ADD CONSTRAINT hsrcl_fk FOREIGN KEY (gid_hsrcl)
REFERENCES koodistot.hsrcl (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.vaihetieto | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.vaihetieto CASCADE;
CREATE TABLE koodistot.vaihetieto (
	gid serial NOT NULL,
	nimi varchar,
	kuvaus varchar,
	CONSTRAINT vaihetyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.vaihetieto IS 'Kaavoituksen vaihetieto, jota käytetään kaavoituksen etenemisen yhteydessä.';
-- ddl-end --

INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'1', E'valmisteluvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'2', E'luonnosvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'3', E'ehdotusvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'4', E'hyväksymisvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'5', E'hyväksytty', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'6', E'lainvoimainen', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'7', E'keskeytetty', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'8', E'kumottu', DEFAULT);
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.numeerinen_merkintatyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.numeerinen_merkintatyyppi CASCADE;
CREATE TABLE koodistot.numeerinen_merkintatyyppi (
	gid serial NOT NULL,
	tyyppi varchar,
	CONSTRAINT numeerinen_merkinta_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'1', E'Rakennusoikeus kerrosalaneliömetreinä.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'2', E'Rakennusoikeus murtolukuna.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'3', E'Tehokkuusluku.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'4', E'Kerrosluku.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'5', E'Kattokaltevuus.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'6', E'Sallittu asuinhuoneistojen osuus rakennusalasta.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'7', E'Sallittu myymälätilojen osuus rakennusalasta.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'8', E'Osuus, jonka rakennuksen suurimman kerroksen alasta saa kellarikerroksessa käyttää kerrosalaan luettavaksi tilaksi.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'9', E'Osuus, jonka rakennuksen suurimman kerroksen alasta saa käyttää ullakon tasolla kerrosalaan luettavaksi tilaksi.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'10', E'Luku osoittaa neliömetreinä, kuinka suuren osan rakennuksen alimmasta kerroksesta (I) saa kerrosalaneliömetreinä ilmoitetun kerrosalan lisäksi käyttää asukkaiden yhteistiloihin.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'11', E'Velvoitettu päiväkotitilojen osuus alimman kerroksen rakennusalasta.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'12', E'Maanpinnan likimääräinen korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'13', E'Rakennuksen vesikaton ylimmän kohdan korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'14', E'Rakennuksen julkisivupinnan ja vesikaton leikkauskohdan ylin korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'15', E'Rakennuksen julkisivun enimmäiskorkeus metreinä.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'16', E'Rakennuksen, rakenteiden ja laitteiden ylin korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'17', E'Kerrosalaneliömetrimäärä, jota kohti on rakennettava yksi autopaikka.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'18', E'Autopaikkojen lukumäärä asuntoa kohti.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'19', E'Desibeliraja.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'20', E'Muu lisärakennusoikeus kerrosalaneliömetreinä.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'21', E'Tonttinumero');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'22', E'Korttelinumero');
-- ddl-end --

-- object: kieli_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
REFERENCES koodistot.kieli (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kuvaustyyli_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kuvaustyyli_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT kuvaustyyli_fk FOREIGN KEY (gid_kuvaustyyli)
REFERENCES koodistot.kuvaustyyli (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: vaihetieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS vaihetieto_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT vaihetieto_fk FOREIGN KEY (gid_vaihetieto)
REFERENCES koodistot.vaihetieto (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavatyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kaavatyyppi_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT kaavatyyppi_fk FOREIGN KEY (gid_kaavatyyppi)
REFERENCES koodistot.kaavatyyppi (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavaelementti_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD CONSTRAINT kaavaelementti_tyyppi_fk FOREIGN KEY (gid_kaavaelementti_tyyppi)
REFERENCES koodistot.kaavaelementti_tyyppi (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: osa_alue_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS osa_alue_tyyppi_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD CONSTRAINT osa_alue_tyyppi_fk FOREIGN KEY (gid_osa_alue_tyyppi)
REFERENCES koodistot.osa_alue_tyyppi (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: maankayttoluokka_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS maankayttoluokka_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD CONSTRAINT maankayttoluokka_fk FOREIGN KEY (gid_maankayttoluokka)
REFERENCES koodistot.maankayttoluokka (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kieli_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
REFERENCES koodistot.kieli (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumenttityyppi_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS dokumenttityyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD CONSTRAINT dokumenttityyppi_fk FOREIGN KEY (gid_dokumenttityyppi)
REFERENCES koodistot.dokumenttityyppi (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: hilucs_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS hilucs_fk CASCADE;
ALTER TABLE koodistot.maankayttoluokka ADD CONSTRAINT hilucs_fk FOREIGN KEY (gid_hilucs)
REFERENCES koodistot.hilucs (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavan_lisatiedot.many_dokumentti_has_many_asemakaava | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.many_dokumentti_has_many_asemakaava CASCADE;
CREATE TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava (
	gid_dokumentti integer NOT NULL,
	uuid_asemakaava uuid NOT NULL,
	CONSTRAINT many_dokumentti_has_many_asemakaava_pk PRIMARY KEY (gid_dokumentti,uuid_asemakaava)

);
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavan_lisatiedot.numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.numeerinen_lisatieto CASCADE;
CREATE TABLE kaavan_lisatiedot.numeerinen_lisatieto (
	gid serial NOT NULL,
	arvo varchar,
	gid_numeerinen_merkintatyyppi integer,
	CONSTRAINT numeerinen_lisatieto_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: numeerinen_merkintatyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_merkintatyyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto ADD CONSTRAINT numeerinen_merkintatyyppi_fk FOREIGN KEY (gid_numeerinen_merkintatyyppi)
REFERENCES koodistot.numeerinen_merkintatyyppi (gid) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto (
	uuid_maankayttoalue uuid NOT NULL,
	gid_numeerinen_lisatieto integer NOT NULL,
	CONSTRAINT many_maankayttoalue_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_maankayttoalue,gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES asemakaavat.maankayttoalue (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto (
	uuid_osa_alue uuid NOT NULL,
	gid_numeerinen_lisatieto integer NOT NULL,
	CONSTRAINT many_osa_alue_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_osa_alue,gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: osa_alue_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS osa_alue_fk CASCADE;
ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto ADD CONSTRAINT osa_alue_fk FOREIGN KEY (uuid_osa_alue)
REFERENCES asemakaavat.osa_alue (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto (
	uuid_kaavaelementti uuid NOT NULL,
	gid_numeerinen_lisatieto integer NOT NULL,
	CONSTRAINT many_kaavaelementti_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_kaavaelementti,gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES asemakaavat.kaavaelementti (uuid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --


