-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.3-beta1
-- PostgreSQL version: 11.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: "qaava-yleiskaava" | type: DATABASE --
-- DROP DATABASE IF EXISTS "qaava-yleiskaava";
CREATE DATABASE "qaava-yleiskaava";
-- ddl-end --


-- object: yleiskaava | type: SCHEMA --
-- DROP SCHEMA IF EXISTS yleiskaava CASCADE;
CREATE SCHEMA yleiskaava;
-- ddl-end --

-- object: koodistot | type: SCHEMA --
-- DROP SCHEMA IF EXISTS koodistot CASCADE;
CREATE SCHEMA koodistot;
-- ddl-end --

-- object: kaavan_lisatiedot | type: SCHEMA --
-- DROP SCHEMA IF EXISTS kaavan_lisatiedot CASCADE;
CREATE SCHEMA kaavan_lisatiedot;
-- ddl-end --

SET search_path TO pg_catalog,public,yleiskaava,koodistot,kaavan_lisatiedot;
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

-- object: yleiskaava.yleiskaava | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.yleiskaava CASCADE;
CREATE TABLE yleiskaava.yleiskaava (
	gid serial,
	uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
	geom geometry(MULTIPOLYGONZ, 3877),
	nimi varchar,
	kaavatunnus varchar,
	laatija varchar,
	viimeisin_muokkaaja varchar,
	vahvistaja varchar,
	luomispvm timestamp DEFAULT now(),
	poistamispvm timestamp,
	voimaantulopvm date,
	kumoamispvm date,
	gid_taustakartta integer,
	gid_kieli integer,
	gid_vaihetieto integer,
	gid_kaavatyyppi integer,
	gid_dokumentti integer,
	CONSTRAINT ak_uuid_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE yleiskaava.yleiskaava IS E'Kaavoituksen lopputuloksena syntyvä maankäyttösuunnitelma';
-- ddl-end --

-- object: yleiskaava.kaavaelementti | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.kaavaelementti CASCADE;
CREATE TABLE yleiskaava.kaavaelementti (
	gid serial,
	uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
	geom_polygon geometry(MULTIPOLYGONZ, 3877),
	geom_line geometry(MULTILINESTRINGZ, 3877),
	geom_point geometry(MULTIPOINTZ, 3877),
	nimi varchar,
	pinta_ala real,
	pituus real,
	viimeisin_muokkaaja varchar,
	luontipvm timestamp DEFAULT now(),
	periytynytkohde boolean,
	uuid_yleiskaava uuid,
	gid_kaavaelementti_tyyppi integer,
	gid_dokumentti integer,
	CONSTRAINT kaavaelementti_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE yleiskaava.kaavaelementti IS E'Yhden tai useamman käyttötarkoitusalueen osa. Kaavaelementti tarkentaa käyttötarkoitusalueen maankäyttöä. Esim. melurajoitteet yms.';
-- ddl-end --
COMMENT ON COLUMN yleiskaava.kaavaelementti.pinta_ala IS E'Aluemaisen kaavaelementin pinta-ala';
-- ddl-end --
COMMENT ON COLUMN yleiskaava.kaavaelementti.pituus IS E'Viivamaisen kaavaelementin pituus';
-- ddl-end --

-- object: yleiskaava.maankayttoalue | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.maankayttoalue CASCADE;
CREATE TABLE yleiskaava.maankayttoalue (
	gid serial,
	uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
	geom geometry(MULTIPOLYGONZ, 3877),
	nimi varchar,
	pinta_ala real,
	viimeisin_muokkaaja varchar,
	luontipvm timestamp DEFAULT now(),
	periytynytkohde boolean,
	gid_maankayttoluokka integer,
	uuid_yleiskaava uuid,
	gid_dokumentti integer,
	CONSTRAINT kayttotarkoitusalue_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE yleiskaava.maankayttoalue IS E'Yleiskaavan mukainen tiettyyn käyttöön varattu alue\n\nKäyttötarkoitusalueiden pinta-ala täyttää yleiskaava-alueen täysin. Käyttötarkoitusalue voi jakaantua yhteen tai useampaan kaavayksikköön. Käyttötarkoitusalueet voivat olla kortteleita, yleisiä alueita tai niiden osia tai muita yhtenäisiä alueita';
-- ddl-end --

-- object: koodistot.kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavamaarays CASCADE;
CREATE TABLE koodistot.kaavamaarays (
	uuid uuid NOT NULL,
	luontipvm timestamp DEFAULT now(),
	otsikko varchar,
	maaraysteksti varchar,
	CONSTRAINT kaavakohtainen_maarays_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.kaavamaarays IS E'Kaavaan sisältyvä sanallinen määräys, joka on juridisesti sitova kaavan toimeenpanossa\nhuomautus.\n\nKaavamääräyksellä ja kaavamerkinnöillä yksilöidään maa-alueiden rakentaminen ja käyttö eri tarkoituksiin.\n\nKaavamääräyksiä voidaan antaa yleiskaavaa laadittaessa. Kaavamääräykset\nvoivat koskea myös haitallisten ympäristövaikutusten estämistä tai rajoittamista.';
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

-- object: yleiskaava_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.maankayttoalue DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: koodistot.maankayttoluokka | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.maankayttoluokka CASCADE;
CREATE TABLE koodistot.maankayttoluokka (
	gid serial NOT NULL,
	paaluokka varchar,
	koodi varchar,
	nimike varchar,
	gid_hilucs integer,
	CONSTRAINT maankayttoluokat_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'1', E'Asuinalue', E'A', E'Asuntoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'2', E'Asuinalue', E'AK', E'Kerrostalovaltainen asuntoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'3', E'Asuinalue', E'AP', E'Pientalovaltainen asuntoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'4', E'Asuinalue', E'AT', E'Kyläalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'5', E'Keskustatoiminnot', E'C', E'Keskustatoimintojen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'6', E'Liike- ja toimistorakennusten alue', E'KM', E'Kaupallisten palvelujen alue, jolle saa sijoittaa vähittäiskaupan suuryksikön');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'7', E'Palvelutoiminnot', E'P', E'Palvelujen ja hallinnon alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'8', E'Palvelutoiminnot', E'PL', E'Lähipalvelujen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'9', E'Palvelutoiminnot', E'PY', E'Julkisten palvelujen ja hallinnon alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'10', E'Työpaikka-alue', E'TP', E'Työpaikka-alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'11', E'Teollisuusalue', E'T', E'Teollisuus- ja varastoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'12', E'Teollisuusalue', E'TT', E'Ympäristövaikutuksiltaan merkittävien teollisuustoimintojen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'13', E'Teollisuusalue', E'TY', E'Teollisuusalue, jolla ympäristö asettaa toiminnan laadulle erityisiä vaatimuksia');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'14', E'Teollisuusalue', E'TV', E'Varastoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'15', E'Teollisuusalue', E'T/kem', E'Teollisuus- ja varastoalue, jolla on/jolle saa sijoittaa merkittävän, vaarallisia kemikaaleja valmistavan tai varastoivan laitoksen');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'16', E'Virkistysalue', E'V', E'Virkistysalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'17', E'Virkistysalue', E'VL', E'Lähivirkistysalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'18', E'Virkistysalue', E'VU', E'Urheilu- ja virkistyspalvelujen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'19', E'Virkistysalue', E'VR', E'Retkeily- ja ulkoilualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'20', E'Loma- ja matkailualue', E'R', E'Loma- ja matkailualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'21', E'Loma- ja matkailualue', E'RA', E'Loma-asuntoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'22', E'Loma- ja matkailualue', E'RM', E'Matkailupalvelujen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'23', E'Loma- ja matkailualue', E'RL', E'Leirintäalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'24', E'Loma- ja matkailualue', E'RV', E'Asuntovaunualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'25', E'Loma- ja matkailualue', E'RP', E'Siirtolapuutarha-/palstaviljelyalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'26', E'Liikenteen alue', E'L', E'Liikennealue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'27', E'Liikenteen alue', E'LT', E'Yleisen tien alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'28', E'Liikenteen alue', E'KATU', E'Katualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'29', E'Liikenteen alue', E'LHA', E'Henkilöliikenteen terminaalialue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'30', E'Liikenteen alue', E'LTA', E'Tavaraliikenteen terminaalialue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'31', E'Liikenteen alue', E'LH', E'Huoltoasema-alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'32', E'Liikenteen alue', E'LR', E'Rautatieliikenteen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'33', E'Liikenteen alue', E'LL', E'Lentoliikenteen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'34', E'Liikenteen alue', E'LS', E'Satama-alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'35', E'Erityisalue', E'E', E'Erityisalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'36', E'Erityisalue', E'ET', E'Yhdyskuntateknisen huollon alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'37', E'Erityisalue', E'EN', E'Energiahuollon alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'38', E'Erityisalue', E'EJ', E'Jätteenkäsittelualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'39', E'Erityisalue', E'EO', E'Maa-ainesten ottoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'40', E'Erityisalue', E'EK', E'Kaivosalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'41', E'Erityisalue', E'EA', E'Ampumarata-alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'42', E'Erityisalue', E'EP', E'Puolustusvoimien alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'43', E'Erityisalue', E'EH', E'Hautausmaa-alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'44', E'Erityisalue', E'EV', E'Suojaviheralue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'45', E'Suojelualue', E'S', E'Suojelualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'46', E'Suojelualue', E'SL', E'Luonnonsuojelualue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'47', E'Suojelualue', E'SM', E'Muinaismuistoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'48', E'Suojelualue', E'SR', E'Rakennuslainsäädännön nojalla suojeltava alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'49', E'Suojelualue', E'SRS', E'Rakennussuojelulain nojalla suojeltu alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'50', E'Maa- ja metsätalousalue', E'M', E'Maa- ja metsätalousvaltainen alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'51', E'Maa- ja metsätalousalue', E'MT', E'Maatalousalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'52', E'Maa- ja metsätalousalue', E'ME', E'Kotieläintalouden suuryksikön alue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'53', E'Maa- ja metsätalousalue', E'MA', E'Maisemallisesti arvokas peltoalue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'54', E'Maa- ja metsätalousalue', E'MU', E'Maa- ja metsätalousvaltainen alue, jolla on erityistä ulkoilun ohjaamistarvetta');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'55', E'Maa- ja metsätalousalue', E'MY', E'Maa- ja metsätalousvaltainen alue, jolla on erityisiä ympäristöarvoja');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (gid, paaluokka, koodi, nimike) VALUES (E'56', E'Vesialue', E'W', E'Vesialue');
-- ddl-end --

-- object: kaavan_lisatiedot.dokumentti | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.dokumentti CASCADE;
CREATE TABLE kaavan_lisatiedot.dokumentti (
	gid serial NOT NULL,
	otsikko varchar,
	uri varchar,
	gid_kieli integer,
	gid_dokumenttityyppi integer,
	CONSTRAINT dokumentti_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: taustakartta_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS taustakartta_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT taustakartta_fk FOREIGN KEY (gid_taustakartta)
REFERENCES kaavan_lisatiedot.taustakartta (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: koodistot.kaavatyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavatyyppi CASCADE;
CREATE TABLE koodistot.kaavatyyppi (
	gid serial NOT NULL,
	nimi varchar,
	CONSTRAINT kaavatyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'1', E'yleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'2', E'osayleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'3', E'vaiheyleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'4', E'strateginen yleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'5', E'maaseutuosayleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'6', E'taajamayleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'7', E'kyläkaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'8', E'harjuosayleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'9', E'rantaosayleiskaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'10', E'viherkaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi) VALUES (E'11', E'kuntien yhteinen yleiskaava');
-- ddl-end --

-- object: koodistot.kaavaelementti_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavaelementti_tyyppi CASCADE;
CREATE TABLE koodistot.kaavaelementti_tyyppi (
	gid serial NOT NULL,
	nimi varchar,
	koodi varchar,
	gid_hsrcl integer,
	gid_geometria_tyyppi integer,
	CONSTRAINT kaavaelementti_tyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'1', E'Maisemallisesti arvokas alue', E'ma', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'2', E'Kaupunki- tai kyläkuvallisesti arvokas alue', E'sk', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'3', E'Alue, jolla on säilytettäviä ympäristöarvoja', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'4', E'Arvokas harjualue tai muu geologinen muodostuma', E'ge', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'5', E'Tärkeä tai vedenhankintaan soveltuva pohjavesialue', E'pv', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'6', E'Natura 2000 -verkostoon kuuluva tai ehdotettu alue', E'nat', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'7', E'Luonnon monimuotoisuuden kannalta erityisen tärkeä alue', E'luo', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'8', E'UNESCO:n maailmanperintökohde', E'un', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'9', E'Kansallinen kaupunkipuisto', E'kp', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'10', E'Melualue', E'me', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'11', E'Puhdistettava/kunnostettava maa-alue', E'saa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'12', E'Vaara-alue', E'va', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'13', E'Suojavyöhyke', E'sv', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'14', E'Kehittämisalue', E'ke', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'15', E'Suunnittelutarvealue', E'st', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'16', E'Alue, jolla ympäristö säilytetään', E'/s', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'17', E'Tuulivoimaloiden alue', E'tv', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'18', E'Maanalainen tila', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'19', E'Maanalainen tila, jota käytetään mmyös väestösuojana', E'mav', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'20', E'Alue on varattu kunnan tarpeisiin', E'/k', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'21', E'Alue on varattu valtion tarpeisiin', E'/v', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'22', E'Nykyisellään säilyvät alueet', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'23', E'Pienin toimenpitein kehitettävät alueet', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'24', E'Uudet ja olennaisesti muuttuvat alueet', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'25', E'Yhdyskuntarakenteen mahdollinen laajenemisalue', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'26', E'Alueen tiivistämis-/eheyttämistarve', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'27', E'Alueen raja', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'28', E'Osa-alueen raja', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'29', E'Ohjeellinen alueen tai osa-alueen raja', DEFAULT, E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'30', E'Moottori- tai moottoriliikennetie', E'mo', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'31', E'Kaksiajoratainen päätie/-katu', E'vt/kt/st/pk', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'32', E'Valtatie/kantatie', E'vt/kt', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'33', E'Seututie/pääkatu', E'st/pk', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'34', E'Yhdystie/kokoojakatu', E'yt/kk', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'35', E'Joukkoliikenteelle varattu tie tai katu', E'jl', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'36', E'Liittymä', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'37', E'Eritasoliittymä', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'38', E'Suuntaisliittymä', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'39', E'Eritasoristeys ilman liittymää', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'40', E'Liikennetunneli', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'41', E'Päärata ja liikennepaikka', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'42', E'Yhdysrata/sivurata/kaupunkirata', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'43', E'Ulkoilureitti', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'44', E'Kevyen liikenteen reitti', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'45', E'Moottorikelkkailureitti', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'46', E'Laivaväylä', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'47', E'Veneväylä', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'48', E'Johto tai linja', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'49', E'Nykyiset tiet ja linjat', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'50', E'Merkittävästi parannettava tieosuus', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'51', E'Uudet tiet ja linjat', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'52', E'Poikkiviiva osoittaa rajan sen puolen johon merkintä kohdistuu', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'53', E'Yhdyskuntarakenteen laajenemissuunta', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'54', E'Ohjeellinen/vaihtoehtoinen tielinjaus', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'55', E'Tieliikenteen yhteystarve', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'56', E'Joukkoliikenteen kehittämiskäytävä/yhteystarve', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'57', E'Kevyen liikenteen yhteystarve', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'58', E'Viheryhteystarve', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'59', E'Meluntorjuntatarve', DEFAULT, E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'60', E'Keskustatoimintojen alakeskus', E'ca', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'61', E'Lähipalvelujen alue', E'pl', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'62', E'Suojelu-/muinaismuistokohde', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'63', E'Virkistys-/matkailukohde', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'64', E'Linja-autoasema/julkisen liikenteen vaihtopaikka/matkakeskus', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'65', E'Rautatieasema', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'66', E'Venesatama/venevalkama', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'67', E'Uimaranta', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'68', E'Kohde, nykyinen', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'69', E'Kohde, uusi', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'70', E'Alueeseen tai kohteeseen liittyvä kirjain- tai numerotunnus', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'71', E'Kunnan nimi', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'72', E'Kunnan osan nimi', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'73', E'Alakeskuksen/kyläkeskuksen nimi', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'74', E'Ympäristö- tai maisemavaurion korjaustarve', DEFAULT, E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, koodi, gid_geometria_tyyppi) VALUES (E'75', E'Terveyshaitan poistamistarve', DEFAULT, E'3');
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
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
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

-- object: koodistot.vaihetieto | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.vaihetieto CASCADE;
CREATE TABLE koodistot.vaihetieto (
	gid serial NOT NULL,
	nimi varchar,
	kuvaus varchar,
	CONSTRAINT vaihetyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.vaihetieto IS E'Kaavoituksen vaihetieto, jota käytetään kaavoituksen etenemisen yhteydessä.';
-- ddl-end --

INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'1', E'aloitusvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'2', E'valmisteluvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'3', E'luonnosvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'4', E'ehdotusvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'5', E'hyväksymisvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'6', E'hyväksytty', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'7', E'lainvoimainen', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'8', E'keskeytetty', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus) VALUES (E'9', E'kumottu', DEFAULT);
-- ddl-end --

-- object: yleiskaava_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.kaavaelementti DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: koodistot.numeerinen_merkintatyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.numeerinen_merkintatyyppi CASCADE;
CREATE TABLE koodistot.numeerinen_merkintatyyppi (
	gid serial NOT NULL,
	tyyppi varchar,
	CONSTRAINT numeerinen_merkinta_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'1', E'tehokkuusluku');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'2', E'kerrosala');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'3', E'määräaika');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi) VALUES (E'4', E'alueeseen tai kohteeseen liittyvä kirjain- tai numerotunnus');
-- ddl-end --

-- object: kieli_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
REFERENCES koodistot.kieli (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: vaihetieto_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS vaihetieto_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT vaihetieto_fk FOREIGN KEY (gid_vaihetieto)
REFERENCES koodistot.vaihetieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: kaavatyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS kaavatyyppi_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT kaavatyyppi_fk FOREIGN KEY (gid_kaavatyyppi)
REFERENCES koodistot.kaavatyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: kaavaelementti_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.kaavaelementti DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_fk CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD CONSTRAINT kaavaelementti_tyyppi_fk FOREIGN KEY (gid_kaavaelementti_tyyppi)
REFERENCES koodistot.kaavaelementti_tyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: maankayttoluokka_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.maankayttoalue DROP CONSTRAINT IF EXISTS maankayttoluokka_fk CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD CONSTRAINT maankayttoluokka_fk FOREIGN KEY (gid_maankayttoluokka)
REFERENCES koodistot.maankayttoluokka (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: kieli_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
REFERENCES koodistot.kieli (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: dokumenttityyppi_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS dokumenttityyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD CONSTRAINT dokumenttityyppi_fk FOREIGN KEY (gid_dokumenttityyppi)
REFERENCES koodistot.dokumenttityyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: hilucs_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS hilucs_fk CASCADE;
ALTER TABLE koodistot.maankayttoluokka ADD CONSTRAINT hilucs_fk FOREIGN KEY (gid_hilucs)
REFERENCES koodistot.hilucs (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava CASCADE;
CREATE TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava (
	gid_dokumentti integer NOT NULL,
	uuid_yleiskaava uuid NOT NULL,
	CONSTRAINT many_dokumentti_has_many_yleiskaava_pk PRIMARY KEY (gid_dokumentti,uuid_yleiskaava)

);
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
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
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto (
	uuid_maankayttoalue uuid NOT NULL,
	gid_numeerinen_lisatieto integer NOT NULL,
	CONSTRAINT many_maankayttoalue_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_maankayttoalue,gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES yleiskaava.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto (
	uuid_kaavaelementti uuid NOT NULL,
	gid_numeerinen_lisatieto integer NOT NULL,
	CONSTRAINT many_kaavaelementti_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_kaavaelementti,gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES yleiskaava.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: koodistot.teema | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.teema CASCADE;
CREATE TABLE koodistot.teema (
	gid serial NOT NULL,
	nimi varchar,
	CONSTRAINT teema_pk PRIMARY KEY (gid)

);
-- ddl-end --
ALTER TABLE koodistot.teema OWNER TO postgres;
-- ddl-end --

-- object: yleiskaava.many_kaavaelementti_has_many_teema | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_kaavaelementti_has_many_teema CASCADE;
CREATE TABLE yleiskaava.many_kaavaelementti_has_many_teema (
	uuid_kaavaelementti uuid NOT NULL,
	gid_teema integer NOT NULL,
	CONSTRAINT many_kaavaelementti_has_many_teema_pk PRIMARY KEY (uuid_kaavaelementti,gid_teema)

);
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES yleiskaava.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: teema_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema DROP CONSTRAINT IF EXISTS teema_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema ADD CONSTRAINT teema_fk FOREIGN KEY (gid_teema)
REFERENCES koodistot.teema (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: koodistot.geometria_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.geometria_tyyppi CASCADE;
CREATE TABLE koodistot.geometria_tyyppi (
	gid serial NOT NULL,
	nimi varchar,
	CONSTRAINT geometriatyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --
ALTER TABLE koodistot.geometria_tyyppi OWNER TO postgres;
-- ddl-end --

INSERT INTO koodistot.geometria_tyyppi (gid, nimi) VALUES (E'1', E'alue');
-- ddl-end --
INSERT INTO koodistot.geometria_tyyppi (gid, nimi) VALUES (E'2', E'viiva');
-- ddl-end --
INSERT INTO koodistot.geometria_tyyppi (gid, nimi) VALUES (E'3', E'piste');
-- ddl-end --

-- object: geometria_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS geometria_tyyppi_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT geometria_tyyppi_fk FOREIGN KEY (gid_geometria_tyyppi)
REFERENCES koodistot.geometria_tyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava.many_maankayttoalue_has_many_teema | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_maankayttoalue_has_many_teema CASCADE;
CREATE TABLE yleiskaava.many_maankayttoalue_has_many_teema (
	uuid_maankayttoalue uuid NOT NULL,
	gid_teema integer NOT NULL,
	CONSTRAINT many_maankayttoalue_has_many_teema_pk PRIMARY KEY (uuid_maankayttoalue,gid_teema)

);
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES yleiskaava.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: teema_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema DROP CONSTRAINT IF EXISTS teema_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema ADD CONSTRAINT teema_fk FOREIGN KEY (gid_teema)
REFERENCES koodistot.teema (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava.many_yleiskaava_has_many_teema | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_yleiskaava_has_many_teema CASCADE;
CREATE TABLE yleiskaava.many_yleiskaava_has_many_teema (
	uuid_yleiskaava uuid NOT NULL,
	gid_teema integer NOT NULL,
	CONSTRAINT many_yleiskaava_has_many_teema_pk PRIMARY KEY (uuid_yleiskaava,gid_teema)

);
-- ddl-end --

-- object: yleiskaava_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: teema_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema DROP CONSTRAINT IF EXISTS teema_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema ADD CONSTRAINT teema_fk FOREIGN KEY (gid_teema)
REFERENCES koodistot.teema (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: koodistot.tietomalli_metatiedot | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.tietomalli_metatiedot CASCADE;
CREATE TABLE koodistot.tietomalli_metatiedot (
	gid serial NOT NULL,
	nimi varchar NOT NULL,
	versio varchar NOT NULL,
	CONSTRAINT tietomalli_metatiedot_pk PRIMARY KEY (gid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.tietomalli_metatiedot IS E'Tietomallin tiedot';
-- ddl-end --
COMMENT ON COLUMN koodistot.tietomalli_metatiedot.nimi IS E'Tietomallin nimi';
-- ddl-end --
COMMENT ON COLUMN koodistot.tietomalli_metatiedot.versio IS E'Tietomallin versio';
-- ddl-end --
ALTER TABLE koodistot.tietomalli_metatiedot OWNER TO postgres;
-- ddl-end --

INSERT INTO koodistot.tietomalli_metatiedot (gid, nimi, versio) VALUES (E'1', E'yleiskaava', E'0.3.0');
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.maankayttoalue DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.kaavaelementti DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava.many_yleiskaava_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_yleiskaava_has_many_kaavamaarays CASCADE;
CREATE TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays (
	uuid_yleiskaava uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_yleiskaava_has_many_kaavamaarays_pk PRIMARY KEY (uuid_yleiskaava,uuid_kaavamaarays)

);
-- ddl-end --

-- object: yleiskaava_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava.many_maankayttoalue_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_maankayttoalue_has_many_kaavamaarays CASCADE;
CREATE TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays (
	uuid_maankayttoalue uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_maankayttoalue_has_many_kaavamaarays_pk PRIMARY KEY (uuid_maankayttoalue,uuid_kaavamaarays)

);
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES yleiskaava.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: yleiskaava.many_kaavaelementti_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS yleiskaava.many_kaavaelementti_has_many_kaavamaarays CASCADE;
CREATE TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays (
	uuid_kaavaelementti uuid NOT NULL,
	uuid_kaavamaarays uuid NOT NULL,
	CONSTRAINT many_kaavaelementti_has_many_kaavamaarays_pk PRIMARY KEY (uuid_kaavaelementti,uuid_kaavamaarays)

);
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES yleiskaava.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
-- ddl-end --


