-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.2
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
CREATE TABLE asemakaavat.asemakaava
(
    gid              serial,
    uuid             uuid NOT NULL DEFAULT uuid_generate_v4(),
    geom             geometry(MULTIPOLYGONZ, 3877),
    nimi             varchar,
    kaavatunnus      varchar,
    laatija          varchar,
    vahvistaja       varchar,
    pinta_ala        real,
    luomispvm        timestamp     DEFAULT now(),
    poistamispvm     timestamp,
    voimaantulopvm   date,
    kumoamispvm      date,
    gid_taustakartta integer,
    gid_kieli        integer,
    gid_vaihetieto   integer,
    gid_kaavatyyppi  integer,
    gid_dokumentti   integer,
    CONSTRAINT ak_uuid_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.asemakaava IS E'Kaavoituksen lopputuloksena syntyvä maankäyttösuunnitelma';
-- ddl-end --

-- object: asemakaavat.kaavaelementti | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.kaavaelementti CASCADE;
CREATE TABLE asemakaavat.kaavaelementti
(
    gid                       serial,
    uuid                      uuid NOT NULL DEFAULT uuid_generate_v4(),
    geom_polygon              geometry(MULTIPOLYGONZ, 3877),
    geom_line                 geometry(MULTILINESTRINGZ, 3877),
    geom_point                geometry(MULTIPOINTZ, 3877),
    luontipvm                 timestamp     DEFAULT now(),
    periytynytkohde           boolean,
    uuid_asemakaava           uuid,
    gid_kaavaelementti_tyyppi integer,
    gid_dokumentti            integer,
    CONSTRAINT kaavaelementti_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.kaavaelementti IS E'yhden tai useamman käyttötarkoitusalueen osa. Kaavaelementti tarkentaa käyttötarkoitusalueen maankäyttöä. Esim. melurajoitteet yms.';
-- ddl-end --

-- object: asemakaavat.maankayttoalue | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.maankayttoalue CASCADE;
CREATE TABLE asemakaavat.maankayttoalue
(
    gid                  serial,
    uuid                 uuid NOT NULL DEFAULT uuid_generate_v4(),
    geom                 geometry(MULTIPOLYGONZ, 3877),
    nimi                 varchar,
    pinta_ala            real,
    luontipvm            timestamp     DEFAULT now(),
    periytynytkohde      boolean,
    uuid_asemakaava      uuid,
    gid_maankayttoluokka integer,
    CONSTRAINT kayttotarkoitusalue_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.maankayttoalue IS E'asemakaavan mukainen tiettyyn käyttöön varattu alue\n\nKäyttötarkoitusalueiden pinta-ala täyttää asemakaava-alueen täysin. Käyttötarkoitusalue voi jakaantua yhteen tai useampaan kaavayksikköön. Käyttötarkoitusalueet voivat olla kortteleita, yleisiä alueita tai niiden osia tai muita yhtenäisiä alueita';
-- ddl-end --

-- object: asemakaavat.osa_alue | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.osa_alue CASCADE;
CREATE TABLE asemakaavat.osa_alue
(
    gid                 serial,
    uuid                uuid NOT NULL DEFAULT uuid_generate_v4(),
    geom                geometry(MULTIPOLYGONZ, 3877),
    luontipvm           timestamp     DEFAULT now(),
    pinta_ala           real,
    periytynytkohde     boolean,
    uuid_asemakaava     uuid,
    gid_osa_alue_tyyppi integer,
    CONSTRAINT kaavayksikko_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE asemakaavat.osa_alue IS E'Asemakaavan pienin tiettyyn käyttötarkoitukseen varattu yksikkö';
-- ddl-end --

-- object: koodistot.kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavamaarays CASCADE;
CREATE TABLE koodistot.kaavamaarays
(
    uuid          uuid NOT NULL,
    luontipvm     timestamp DEFAULT now(),
    otsikko       varchar,
    maaraysteksti varchar,
    uuid_osa_alue uuid,
    CONSTRAINT kaavakohtainen_maarays_pk PRIMARY KEY (uuid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.kaavamaarays IS E'kaavaan sisältyvä sanallinen määräys, joka on juridisesti sitova kaavan toimeenpanossa\nhuomautus.\n\nKaavamääräyksellä ja kaavamerkinnöillä yksilöidään maa-alueiden rakentaminen ja käyttö eri\ntarkoituksiin.\n\nAsemakaavamääräyksiä voidaan antaa asemakaavaa laadittaessa. Asemakaavamääräykset\nvoivat koskea myös haitallisten ympäristövaikutusten estämistä tai rajoittamista.';
-- ddl-end --

-- object: kaavan_lisatiedot.taustakartta | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.taustakartta CASCADE;
CREATE TABLE kaavan_lisatiedot.taustakartta
(
    gid         serial NOT NULL,
    nimi        varchar,
    viittauspvm date,
    uri         varchar,
    CONSTRAINT taustakartta_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue
    ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
        REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: osa_alue_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS osa_alue_fk CASCADE;
ALTER TABLE koodistot.kaavamaarays
    ADD CONSTRAINT osa_alue_fk FOREIGN KEY (uuid_osa_alue)
        REFERENCES asemakaavat.osa_alue (uuid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.maankayttoluokka | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.maankayttoluokka CASCADE;
CREATE TABLE koodistot.maankayttoluokka
(
    gid        serial NOT NULL,
    paaluokka  varchar,
    koodi      varchar,
    nimike     varchar,
    gid_hilucs integer,
    CONSTRAINT maankayttoluokat_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Asumista palveleva yhteiskäyttöinen korttelialue', E'AH', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Asuinkerrostalojen korttelialue', E'AK', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Asuinrakennusten korttelialue', E'AK', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Asuin-, liike- ja toimistorakennusten korttelialue', E'AL', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Maatilojen talouskeskusten korttelialue', E'AM', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Erillispientalojen korttelialue', E'AO', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Asuinpientalojen korttelialue', E'AP', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Rivitalojen ja muiden kytkettyjen asuinrakennusten korttelialue', E'AR', E'Asuinrakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Keskustatoimintojen korttelialue', E'C', E'Keskustatoimintojen korttelialue');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Erityisalue', E'E', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Ampumarata-alue', E'EA', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Hautausmaa-alue', E'EH', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Jätteenkäsittelyalue', E'EJ', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Kaivosalue', E'EK', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Mastoalue', E'EMT', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Energiahuollon alue', E'EN', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Maa-ainesten ottoalue', E'EO', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Puolustusvoimien alue', E'EP', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Yhdyskuntateknistä huoltoa palvelevien rakennusten ja laitosten alue', E'ET', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Suojaviheralue', E'EV', E'Erityisalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Liike- ja toimistorakennusten korttelialue', E'K', E'Liike- ja toimistorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Liikerakennusten korttelialue', E'KL', E'Liike- ja toimistorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Liikerakennusten korttelialue, jolle saa sijoittaa vähittäiskaupan suuryksikön', E'KM',
        E'Liike- ja toimistorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Toimistorakennusten korttelialue', E'KT', E'Liike- ja toimistorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Toimitilarakennusten korttelialue', E'KTY', E'Liike- ja toimistorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Liikennealue', E'L', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Huoltoaseman korttelialue', E'LH', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Henkilöliikenneterminaalin korttelialue', E'LHA', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Kanava-alue', E'LK', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Lentokenttäalue', E'LL', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Yleinen pysäköintialue', E'LP', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Autopaikkojen korttelialue', E'LPA', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Yleisten pysäköintilaitosten korttelialue', E'LPY', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Rautatiealue', E'LR', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Satama-alue', E'LS', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Yleisen tien alue', E'LT', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Tavaraliikenneterminaalin korttelialue', E'LTA', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Venesatama/venevalkama', E'LV', E'Liikennealueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Maa- ja metsätalousalue', E'M', E'Maa- ja metsätalousalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Maisemallisesti arvokas peltoalue', E'MA', E'Maa- ja metsätalousalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Kotieläintalouden suuryksikön alue', E'ME', E'Maa- ja metsätalousalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Puutarha- ja kasvihuonealue', E'MP', E'Maa- ja metsätalousalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Maatalousalue', E'MT', E'Maa- ja metsätalousalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Maa- ja metsätalousalue, jolla on erityistä ulkoilun ohjaamistarvetta', E'MU', E'Maa- ja metsätalousalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Maa- ja metsätalousalue, jolla on erityisiä ympäristöarvoja', E'MY', E'Maa- ja metsätalousalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Palvelurakennusten korttelialue', E'P', E'Palvelurakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Lähipalvelurakennusten korttelialue', E'PL', E'Palvelurakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Palvelurakennusten korttelialue', E'PV', E'Palvelurakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Loma- ja matkailualue', E'R', E'Loma- ja matkailualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Loma-asuntojen korttelialue', E'RA', E'Loma- ja matkailualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Leirintäalue', E'RL', E'Loma- ja matkailualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Matkailua palvelevien rakennusten korttelialue', E'RM', E'Loma- ja matkailualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Siirtolapuutarha-/palstaviljelyalue', E'RP', E'Loma- ja matkailualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Asuntovaunualue', E'RV', E'Loma- ja matkailualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Suojelualue', E'S', E'Suojelualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Luonnonsuojelualue', E'SL', E'Suojelualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Muinaismuistoalue', E'SM', E'Suojelualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Rakennussuojelualue', E'SR', E'Suojelualueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Teollisuus- ja varastorakennusten korttelialue', E'T', E'Teollisuus- ja varastorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Teollisuus- ja varastorakennusten korttelialue, jolla on/jolle saa sijoittaa merkittävän, vaarallisia kemikaaleja valmistavan tai varastoivan laitoksen',
        E'T/kem', E'Teollisuus- ja varastorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Teollisuusrakennusten korttelialue', E'TT', E'Teollisuus- ja varastorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Varastorakennusten korttelialue', E'TV', E'Teollisuus- ja varastorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Teollisuusrakennusten korttelialue, jolla ympäristö asettaa toiminnan laadulle erityisiä vaatimuksia', E'TY',
        E'Teollisuus- ja varastorakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Leikkipuisto', E'VK', E'Virkistysalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Lähivirkistysalue', E'VL', E'Virkistysalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Virkistysalue', E'VL', E'Virkistysalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Puisto', E'VP', E'Virkistysalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Retkeily- ja ulkoilualue', E'VR', E'Virkistysalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Urheilu- ja virkistyspalvelujen alue', E'VU', E'Virkistysalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Uimaranta-alue', E'VV', E'Virkistysalueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Vesialue', E'W', E'Vesialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Yleisten rakennusten korttelialue', E'Y', E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Hallinto- ja virastorakennusten korttelialue', E'YH', E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Kirkkojen ja muiden seurakunnallisten rakennusten korttelialue', E'YK',
        E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Julkisten lähipalvelurakennusten korttelialue', E'YL', E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Museorakennusten korttelialue', E'YM', E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Opetustoimintaa palvelevien rakennusten korttelialue', E'YO', E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Sosiaalitointa ja terveydenhuoltoa palvelevien rakennusten korttelialue', E'YS',
        E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Urheilutoimintaa palvelevien rakennusten korttelialue', E'YU', E'Yleisten rakennusten korttelialueet');
-- ddl-end --
INSERT INTO koodistot.maankayttoluokka (nimike, koodi, paaluokka)
VALUES (E'Kulttuuritoimintaa palvelevien rakennusten korttelialue', E'YY', E'Yleisten rakennusten korttelialueet');
-- ddl-end --

-- object: kaavan_lisatiedot.dokumentti | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.dokumentti CASCADE;
CREATE TABLE kaavan_lisatiedot.dokumentti
(
    gid                  serial NOT NULL,
    otsikko              varchar,
    uri                  varchar,
    gid_kieli            integer,
    gid_dokumenttityyppi integer,
    CONSTRAINT dokumentti_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: taustakartta_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS taustakartta_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava
    ADD CONSTRAINT taustakartta_fk FOREIGN KEY (gid_taustakartta)
        REFERENCES kaavan_lisatiedot.taustakartta (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.kaavatyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavatyyppi CASCADE;
CREATE TABLE koodistot.kaavatyyppi
(
    gid  serial NOT NULL,
    nimi varchar,
    CONSTRAINT kaavatyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kaavatyyppi (gid, nimi)
VALUES (E'1', E'Asemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi)
VALUES (E'2', E'Ranta-asemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi)
VALUES (E'3', E'Vaiheasemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi)
VALUES (E'4', E'Maanalainen asemakaava');
-- ddl-end --
INSERT INTO koodistot.kaavatyyppi (gid, nimi)
VALUES (E'5', E'Vaiheranta-asemakaava');
-- ddl-end --

-- object: koodistot.kaavaelementti_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaavaelementti_tyyppi CASCADE;
CREATE TABLE koodistot.kaavaelementti_tyyppi
(
    gid                  serial NOT NULL,
    nimi                 varchar,
    gid_hsrcl            integer,
    gid_geometria_tyyppi integer,
    CONSTRAINT kaavaelementti_tyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'1', E'Ajoneuvoliittymän likimääräinen sijainti', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'2', E'Ajoyhteys', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'3', E'Alue on varattu kunnan tarpeisiin', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'4', E'Alue on varattu valtion tarpeisiin', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'5', E'Alue, jolla ympäristö säilytetään', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'6', E'Alue, jolle saa sijoittaa polttoaineen jakeluaseman', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'7', E'Alueen osa, jolla sijaitsee luonnonsuojelulain mukainen luonnonsuojelualue tai -kohde', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'8', E'Alueen osa, jolla sijaitsee muinaismuistolailla rauhoitettu kiinteä muinaisjäännös', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'9', E'Alueen sisäiselle huoltoliikenteelle varattu alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'10', E'Alueen sisäiselle jalankululle varattu alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'11', E'Arvokas harjualue tai muu geologinen muodostuma', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'12', E'Auton säilytyspaikan rakennusala', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'13', E'Eritasoristeys', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'14', E'Hidaskatu', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'15', E'Istutettava alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'16', E'Jalankululle ja polkupyöräilylle varattu katu/tie', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'17', E'Jalankululle ja polkupyöräilylle varattu katu/tie, jolla huoltoajo on sallittu', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'18', E'Jalankululle ja polkupyöräilylle varattu katu/tie, jolla tontille/rakennuspaikalle ajo on sallittu',
        E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'19', E'Jalankululle varattu katu/tie', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'20', E'Johtoa varten varattu alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'21', E'Joukkoliikenteelle varattu katu/tie', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'22', E'Kadun tai liikennealueen alittava kevyen liikenteen yhteys', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'23', E'Kadun tai liikennealueen ylittävä kevyen liikenteen yhteys', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'24', E'Kansallinen kaupunkipuisto', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'25', E'Katu', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'26', E'Katuaukio/tori', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'27', E'Kaupunki- tai kyläkuvallisesti tärkeä alue tai alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'28', E'Kehittämisalue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'29', E'Leikki- ja oleskelualueeksi varattu alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'30', E'Liikennetunneli', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'31', E'Luonnon monimuotoisuuden kannalta erityisen tärkeä alue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'32', E'Maanalainen tila', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'33', E'Maanalainen väestönsuojaksi tarkoitettu tila', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'34', E'Maanalainen yleinen pysäköintilaitos', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'35', E'Maanalaisiin tiloihin johtava ajoluiska', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'36', E'Maisemallisesti arvokas alue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'37', E'Maisemallisesti arvokas peltoalue 2', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'38',
        E'Merkintä osoittaa, että liikennealue on varustettava meluvallilla tai muulla melua estävällä rakenteella niin, että melutaso pienenee viereisellä korttelialueella/alueella 00 metrin korkeudella vähintään 00 dBA',
        E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'39',
        E'Merkintä osoittaa, että liikennealue on varustettava meluvallilla tai muulla melua estävällä rakenteella niin, että melutaso viereisellä korttelialueella/alueella saa olla korkeintaan 00 dBA',
        E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'40', E'Natura 2000 -verkostoon kuuluva tai ehdotettu alue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'41', E'Pihakatu', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'42', E'Puhdistettava/kunnostettava maa-alue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'43', E'Pysäköimispaikka', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'44', E'Rakennukseen jätettävä kulkuaukko', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'45', E'Rakennusala', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'46', E'Rakennusala, jolle saa sijoittaa lasten päiväkodin', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'47', E'Rakennusala, jolle saa sijoittaa maatilan talouskeskuksen', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'48', E'Rakennusala, jolle saa sijoittaa myymälän', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'49', E'Rakennusala, jolle saa sijoittaa talousrakennuksen', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'50', E'Rakennussuojelulain nojalla suojeltu rakennus', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'51', E'Suojavyöhyke', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'52', E'Suojeltava alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'53', E'Suojeltava rakennus', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'55', E'Tuulivoimaloiden alue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'56', E'Tärkeä tai veden hankintaan soveltuva pohjavesialue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'57', E'Uloke', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'58', E'UNESCO:n maailmanperintökohde', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'59', E'Vaara-alue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'60', E'Valokatteinen tila', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'61', E'Yhteiskäyttöalue', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'62', E'Yleiseen tiehen kuuluva jalankulku- ja polkupyörätie', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'63', E'Yleiselle jalankululle varattu alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'64', E'Yleisen tien näkemäalueeksi varattu alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'65', E'Yleisen tien suoja-alueeksi varattu alueen osa', E'1');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'66', E'3 m kaava-alueen rajan ulkopuolella oleva viiva', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'67', E'Alueelle on rakennettava melueste', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'68', E'Katualueen rajan osa, jonka kohdalta ei saa järjestää ajoneuvoliittymää', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'69', E'Kaupungin- tai kunnanosan raja', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'70', E'Korttelin, korttelinosan ja alueen raja', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'71', E'Merkintä osoittaa rakennuksen sivun, jolla tulee olla suora uloskäynti porrashuoneista', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'72',
        E'Merkintä osoittaa rakennusalan sivun, jonka puoleisten rakennuksen ulkoseinien sekä ikkunoiden ja muiden rakenteiden ääneneristävyyden liikennemelua vastaan on oltava vähintään 00 dBA',
        E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'73',
        E'Merkintä osoittaa, rakennusalan sivun, jonka puoleiseen rakennuksen seinään ei saa sijoittaa ikkunoita',
        E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'74', E'Nuoli osoittaa rakennusalan sivun, johon rakennus on rakennettava kiinni', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'75', E'Ohjeellinen alueen tai osa-alueen raja', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'76', E'Ohjeellinen tontin/rakennuspaikan raja', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'77', E'Osa-alueen raja', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'78', E'Poikkiviiva osoittaa rajan sen puolen, johon merkintä kohdistuu', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'79', E'Rakennuksen harjansuuntaa osoittava viiva', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'80', E'Risti merkinnän päällä osoittaa merkinnän poistamista', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'81', E'Sitovan tonttijaon mukaisen tontin raja ja numero', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'82', E'Säilytettävä/istutettava puurivi', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'83', E'Ulkoilureitti', E'2');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'84',
        E'Alleviivattu luku osoittaa ehdottomasti käytettävän rakennusoikeuden, rakennuksen korkeuden, kattokaltevuuden tai muun määräyksen',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'85', E'Alueeseen tai kohteeseen liittyvä kirjain- tai numerotunnus', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'86', E'Kadun, tien, katuaukion, torin, puiston tai muun yleisen alueen nimi', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'87', E'Kattokaltevuus', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'88', E'Kaupungin- tai kunnanosan nimi', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'89', E'Kaupungin- tai kunnanosan numero', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'90', E'Korttelin numero', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'91',
        E'Luku osoittaa neliömetreinä, kuinka suuren osan rakennuksen alimmasta kerroksesta (I) saa kerrosalaneliömetreinä ilmoitetun kerrosalan lisäksi käyttää asukkaiden yhteistiloihin',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'92', E'Luku osoittaa, kuinka suuren osan alueesta tai rakennusalasta saa käyttää rakentamiseen', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'93',
        E'Luku osoittaa, kuinka suuri osa rakennuksen alimmasta kerroksesta (I) tulee käyttää päiväkodin tiloiksi',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'94', E'Maanpinnan likimääräinen korkeusasema', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'95', E'Merkintä osoittaa, kuinka monta autopaikkaa asuntoa kohti on rakennettava', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'96', E'Merkintä osoittaa, kuinka monta kerrosalaneliömetriä kohti on rakennettava yksi autopaikka', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'97',
        E'Merkintä osoittaa, kuinka monta prosenttia rakennusalalle sallitusta kerrosalasta saadaan käyttää asuinhuoneistoja varten',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'98',
        E'Merkintä osoittaa, kuinka monta prosenttia rakennusalalle sallitusta kerrosalasta saadaan käyttää myymälätiloja varten',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'99',
        E'Murtoluku roomalaisen numeron edessä osoittaa, kuinka suuren osan rakennuksen suurimman kerroksen alasta saa kellarikerroksessa käyttää kerrosalaan luettavaksi tilaksi',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'100',
        E'Murtoluku roomalaisen numeron jäljessä osoittaa, kuinka suuren osan rakennuksen suurimman kerroksen alasta ullakon tasolla saa käyttää kerrosalaan laskettavaksi tilaksi',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'101', E'Ohjeellisen tontin/rakennuspaikan numero', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'102', E'Rakennuksen julkisivun enimmäiskorkeus metreinä', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'103', E'Rakennuksen julkisivupinnan ja vesikaton leikkauskohdan ylin korkeusasema', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'104', E'Rakennuksen vesikaton ylimmän kohdan korkeusasema', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'105', E'Rakennuksen, rakenteiden ja laitteiden ylin korkeusasema', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'106', E'Rakennusoikeus kerrosalaneliömetreinä', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'107', E'Roomalainen numero osoittaa rakennusten, rakennuksen tai sen osan suurimman sallitun kerrosluvun',
        E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'108', E'Suluissa olevat numerot osoittavat korttelit, joiden autopaikkoja saa alueelle sijoittaa', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'109', E'Suojeltava puu', E'3');
-- ddl-end --
INSERT INTO koodistot.kaavaelementti_tyyppi (gid, nimi, gid_geometria_tyyppi)
VALUES (E'110', E'Tehokkuusluku eli kerrosalan suhde tontin/rakennuspaikan pinta-alaan', E'3');
-- ddl-end --

-- object: koodistot.kieli | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kieli CASCADE;
CREATE TABLE koodistot.kieli
(
    gid   serial NOT NULL,
    kieli varchar,
    CONSTRAINT kieli_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.kieli (gid, kieli)
VALUES (E'1', E'Suomi');
-- ddl-end --
INSERT INTO koodistot.kieli (gid, kieli)
VALUES (E'2', E'Ruotsi');
-- ddl-end --
INSERT INTO koodistot.kieli (gid, kieli)
VALUES (E'3', E'Suomi ja ruotsi');
-- ddl-end --

-- object: koodistot.hilucs | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.hilucs CASCADE;
CREATE TABLE koodistot.hilucs
(
    gid        serial NOT NULL,
    nimi       varchar,
    maaritelma varchar,
    kuvaus     varchar,
    CONSTRAINT hilucs_pk PRIMARY KEY (gid)

);
-- ddl-end --


-- object: koodistot.osa_alue_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.osa_alue_tyyppi CASCADE;
CREATE TABLE koodistot.osa_alue_tyyppi
(
    gid       serial NOT NULL,
    koodi     smallint,
    nimi      varchar,
    gid_hsrcl integer,
    CONSTRAINT osa_alue_tyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'1', E'Tekstimääräys.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'2', E'Auton säilytyspaikan rakennusala.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'3', E'Pysäköimispaikka.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'4', E'Istutettava alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'5', E'Rakennukseen jätettävä kulkuaukko.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'6', E'Maanalaisiin tiloihin johtava ajoluiska.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'7', E'Maanalainen tila.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'8', E'Maanalainen väestönsuojaksi tarkoitettu tila.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'9', E'Maanalainen yleinen pysäköintilaitos.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'10', E'Liikennetunneli.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'11', E'Rakennusala, jolle saa sijoittaa lasten päiväkodin.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'12', E'Rakennusala, jolle saa sijoittaa myymälän.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'13', E'Rakennusala, jolle saa sijoittaa maatilan talouskeskuksen.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'14', E'Rakennusala, jolle saa sijoittaa talousrakennuksen.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'15', E'Alue, jolle saa sijoittaa polttoaineen jakeluaseman.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'16', E'Uloke.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'17', E'Valokatteinen tila.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'18', E'Leikki- ja oleskelualueeksi varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'19', E'Jalankululle ja polkupyöräilylle varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'20', E'Jalankululle ja polkupyöräilylle varattu alueen osa, jolla huoltoajo on sallittu.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'21',
        E'Jalankululle ja polkupyöräilylle varattu alueen osa, jolla tontille/rakennuspaikalle ajo on sallittu.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'22', E'Yleiseen tiehen kuuluva jalankulku- ja polkupyörätie.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'23', E'Joukkoliikenteelle varattu katu/tie.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'24', E'Ajoyhteys.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'25', E'Alueen sisäiselle huoltoliikenteelle varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'26', E'Yleisen tien suoja-alueeksi varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'27', E'Yleisen tien näkemäalueeksi varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'28', E'Maanalaista johtoa varten varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'29', E'Alue on varattu kunnan tarpeisiin.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'30', E'Alue on varattu valtion tarpeisiin.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'31', E'Yhteiskäyttöalue.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'32', E'Suojeltava alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'33', E'Alueen osa, jolla sijaitsee luonnonsuojelulain mukainen luonnonsuojelualue tai -kohde.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'34', E'Suojeltava rakennus.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'35', E'Rakennussuojelulain nojalla suojeltu rakennus.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'36', E'Maan päällistä johtoa varten varattu alueen osa.');
-- ddl-end --
INSERT INTO koodistot.osa_alue_tyyppi (gid, nimi)
VALUES (E'37', E'Rakennusala.');
-- ddl-end --

-- object: koodistot.hsrcl | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.hsrcl CASCADE;
CREATE TABLE koodistot.hsrcl
(
    gid    serial NOT NULL,
    teksti varchar,
    CONSTRAINT hsrcl_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: hsrcl_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS hsrcl_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi
    ADD CONSTRAINT hsrcl_fk FOREIGN KEY (gid_hsrcl)
        REFERENCES koodistot.hsrcl (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.dokumenttityyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.dokumenttityyppi CASCADE;
CREATE TABLE koodistot.dokumenttityyppi
(
    gid    serial NOT NULL,
    nimi   varchar,
    kuvaus varchar,
    CONSTRAINT dokumenttityyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus)
VALUES (E'1', E'Liiteaineisto',
        E'Kaikki kaavaa tarkentavat tai selventävät dokumentit. Kaavan laatimisen aikana syntyvä aineisto pl. kaavaselostus.');
-- ddl-end --
INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus)
VALUES (E'2', E'Kaavaselostus', E'Määrämuotoinen kaavan selostus.');
-- ddl-end --
INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus)
VALUES (E'3', E'Lisätieto', E'Kaavaan liittyvät lisätietodokumentit.');
-- ddl-end --
INSERT INTO koodistot.dokumenttityyppi (gid, nimi, kuvaus)
VALUES (E'4', E'Päätös', E'Kaavan päätösasiakirjat.');
-- ddl-end --

-- object: hsrcl_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.osa_alue_tyyppi DROP CONSTRAINT IF EXISTS hsrcl_fk CASCADE;
ALTER TABLE koodistot.osa_alue_tyyppi
    ADD CONSTRAINT hsrcl_fk FOREIGN KEY (gid_hsrcl)
        REFERENCES koodistot.hsrcl (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.vaihetieto | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.vaihetieto CASCADE;
CREATE TABLE koodistot.vaihetieto
(
    gid    serial NOT NULL,
    nimi   varchar,
    kuvaus varchar,
    CONSTRAINT vaihetyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --
COMMENT ON TABLE koodistot.vaihetieto IS E'Kaavoituksen vaihetieto, jota käytetään kaavoituksen etenemisen yhteydessä.';
-- ddl-end --

INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'1', E'valmisteluvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'2', E'luonnosvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'3', E'ehdotusvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'4', E'hyväksymisvaihe', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'5', E'hyväksytty', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'6', E'lainvoimainen', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'7', E'keskeytetty', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.vaihetieto (gid, nimi, kuvaus)
VALUES (E'8', E'kumottu', DEFAULT);
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue
    ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
        REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti
    ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
        REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.numeerinen_merkintatyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.numeerinen_merkintatyyppi CASCADE;
CREATE TABLE koodistot.numeerinen_merkintatyyppi
(
    gid    serial NOT NULL,
    tyyppi varchar,
    CONSTRAINT numeerinen_merkinta_pk PRIMARY KEY (gid)

);
-- ddl-end --

INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'1', E'Rakennusoikeus kerrosalaneliömetreinä.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'2', E'Rakennusoikeus murtolukuna.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'3', E'Tehokkuusluku.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'4', E'Kerrosluku.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'5', E'Kattokaltevuus.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'6', E'Sallittu asuinhuoneistojen osuus rakennusalasta.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'7', E'Sallittu myymälätilojen osuus rakennusalasta.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'8',
        E'Osuus, jonka rakennuksen suurimman kerroksen alasta saa kellarikerroksessa käyttää kerrosalaan luettavaksi tilaksi.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'9',
        E'Osuus, jonka rakennuksen suurimman kerroksen alasta saa käyttää ullakon tasolla kerrosalaan luettavaksi tilaksi.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'10',
        E'Luku osoittaa neliömetreinä, kuinka suuren osan rakennuksen alimmasta kerroksesta (I) saa kerrosalaneliömetreinä ilmoitetun kerrosalan lisäksi käyttää asukkaiden yhteistiloihin.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'11', E'Velvoitettu päiväkotitilojen osuus alimman kerroksen rakennusalasta.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'12', E'Maanpinnan likimääräinen korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'13', E'Rakennuksen vesikaton ylimmän kohdan korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'14', E'Rakennuksen julkisivupinnan ja vesikaton leikkauskohdan ylin korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'15', E'Rakennuksen julkisivun enimmäiskorkeus metreinä.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'16', E'Rakennuksen, rakenteiden ja laitteiden ylin korkeusasema.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'17', E'Kerrosalaneliömetrimäärä, jota kohti on rakennettava yksi autopaikka.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'18', E'Autopaikkojen lukumäärä asuntoa kohti.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'19', E'Desibeliraja.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'20', E'Muu lisärakennusoikeus kerrosalaneliömetreinä.');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'21', E'Tonttinumero');
-- ddl-end --
INSERT INTO koodistot.numeerinen_merkintatyyppi (gid, tyyppi)
VALUES (E'22', E'Korttelinumero');
-- ddl-end --

-- object: kieli_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava
    ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
        REFERENCES koodistot.kieli (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: vaihetieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS vaihetieto_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava
    ADD CONSTRAINT vaihetieto_fk FOREIGN KEY (gid_vaihetieto)
        REFERENCES koodistot.vaihetieto (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavatyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kaavatyyppi_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava
    ADD CONSTRAINT kaavatyyppi_fk FOREIGN KEY (gid_kaavatyyppi)
        REFERENCES koodistot.kaavatyyppi (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavaelementti_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti
    ADD CONSTRAINT kaavaelementti_tyyppi_fk FOREIGN KEY (gid_kaavaelementti_tyyppi)
        REFERENCES koodistot.kaavaelementti_tyyppi (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: osa_alue_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS osa_alue_tyyppi_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue
    ADD CONSTRAINT osa_alue_tyyppi_fk FOREIGN KEY (gid_osa_alue_tyyppi)
        REFERENCES koodistot.osa_alue_tyyppi (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: maankayttoluokka_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS maankayttoluokka_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue
    ADD CONSTRAINT maankayttoluokka_fk FOREIGN KEY (gid_maankayttoluokka)
        REFERENCES koodistot.maankayttoluokka (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kieli_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti
    ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
        REFERENCES koodistot.kieli (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumenttityyppi_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS dokumenttityyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti
    ADD CONSTRAINT dokumenttityyppi_fk FOREIGN KEY (gid_dokumenttityyppi)
        REFERENCES koodistot.dokumenttityyppi (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: hilucs_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS hilucs_fk CASCADE;
ALTER TABLE koodistot.maankayttoluokka
    ADD CONSTRAINT hilucs_fk FOREIGN KEY (gid_hilucs)
        REFERENCES koodistot.hilucs (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavan_lisatiedot.many_dokumentti_has_many_asemakaava | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.many_dokumentti_has_many_asemakaava CASCADE;
CREATE TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava
(
    gid_dokumentti  integer NOT NULL,
    uuid_asemakaava uuid    NOT NULL,
    CONSTRAINT many_dokumentti_has_many_asemakaava_pk PRIMARY KEY (gid_dokumentti, uuid_asemakaava)

);
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava
    ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
        REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava
    ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
        REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava
    ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
        REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavan_lisatiedot.numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS kaavan_lisatiedot.numeerinen_lisatieto CASCADE;
CREATE TABLE kaavan_lisatiedot.numeerinen_lisatieto
(
    gid                           serial NOT NULL,
    arvo                          varchar,
    gid_numeerinen_merkintatyyppi integer,
    CONSTRAINT numeerinen_lisatieto_pk PRIMARY KEY (gid)

);
-- ddl-end --

-- object: numeerinen_merkintatyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_merkintatyyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto
    ADD CONSTRAINT numeerinen_merkintatyyppi_fk FOREIGN KEY (gid_numeerinen_merkintatyyppi)
        REFERENCES koodistot.numeerinen_merkintatyyppi (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto
(
    uuid_maankayttoalue      uuid    NOT NULL,
    gid_numeerinen_lisatieto integer NOT NULL,
    CONSTRAINT many_maankayttoalue_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_maankayttoalue, gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto
    ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
        REFERENCES asemakaavat.maankayttoalue (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto
    ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
        REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto
(
    uuid_osa_alue            uuid    NOT NULL,
    gid_numeerinen_lisatieto integer NOT NULL,
    CONSTRAINT many_osa_alue_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_osa_alue, gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: osa_alue_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS osa_alue_fk CASCADE;
ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto
    ADD CONSTRAINT osa_alue_fk FOREIGN KEY (uuid_osa_alue)
        REFERENCES asemakaavat.osa_alue (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto
    ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
        REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto CASCADE;
CREATE TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto
(
    uuid_kaavaelementti      uuid    NOT NULL,
    gid_numeerinen_lisatieto integer NOT NULL,
    CONSTRAINT many_kaavaelementti_has_many_numeerinen_lisatieto_pk PRIMARY KEY (uuid_kaavaelementti, gid_numeerinen_lisatieto)

);
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto
    ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
        REFERENCES asemakaavat.kaavaelementti (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: numeerinen_lisatieto_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto
    ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
        REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.tietomalli_metatiedot | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.tietomalli_metatiedot CASCADE;
CREATE TABLE koodistot.tietomalli_metatiedot
(
    gid    serial  NOT NULL,
    nimi   varchar NOT NULL,
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
-- ALTER TABLE koodistot.tietomalli_metatiedot OWNER TO postgres;
-- ddl-end --

INSERT INTO koodistot.tietomalli_metatiedot (gid, nimi, versio)
VALUES (E'1', E'asemakaava', E'0.2.0');
-- ddl-end --

-- object: koodistot.geometria_tyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.geometria_tyyppi CASCADE;
CREATE TABLE koodistot.geometria_tyyppi
(
    gid  serial NOT NULL,
    nimi varchar,
    CONSTRAINT geometria_tyyppi_pk PRIMARY KEY (gid)

);
-- ddl-end --
-- ALTER TABLE koodistot.geometria_tyyppi OWNER TO postgres;
-- ddl-end --

INSERT INTO koodistot.geometria_tyyppi (gid, nimi)
VALUES (E'1', E'alue');
-- ddl-end --
INSERT INTO koodistot.geometria_tyyppi (gid, nimi)
VALUES (E'2', E'viiva');
-- ddl-end --
INSERT INTO koodistot.geometria_tyyppi (gid, nimi)
VALUES (E'3', E'piste');
-- ddl-end --

-- object: geometria_tyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS geometria_tyyppi_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi
    ADD CONSTRAINT geometria_tyyppi_fk FOREIGN KEY (gid_geometria_tyyppi)
        REFERENCES koodistot.geometria_tyyppi (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_maankayttoalue_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_maankayttoalue_has_many_kaavamaarays CASCADE;
CREATE TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays
(
    uuid_maankayttoalue uuid NOT NULL,
    uuid_kaavamaarays   uuid NOT NULL,
    CONSTRAINT many_maankayttoalue_has_many_kaavamaarays_pk PRIMARY KEY (uuid_maankayttoalue, uuid_kaavamaarays)

);
-- ddl-end --

-- object: maankayttoalue_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays
    ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
        REFERENCES asemakaavat.maankayttoalue (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays
    ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
        REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_asemakaava_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_asemakaava_has_many_kaavamaarays CASCADE;
CREATE TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays
(
    uuid_asemakaava   uuid NOT NULL,
    uuid_kaavamaarays uuid NOT NULL,
    CONSTRAINT many_asemakaava_has_many_kaavamaarays_pk PRIMARY KEY (uuid_asemakaava, uuid_kaavamaarays)

);
-- ddl-end --

-- object: asemakaava_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays
    ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
        REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays
    ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
        REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: asemakaavat.many_kaavaelementti_has_many_kaavamaarays | type: TABLE --
-- DROP TABLE IF EXISTS asemakaavat.many_kaavaelementti_has_many_kaavamaarays CASCADE;
CREATE TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays
(
    uuid_kaavaelementti uuid NOT NULL,
    uuid_kaavamaarays   uuid NOT NULL,
    CONSTRAINT many_kaavaelementti_has_many_kaavamaarays_pk PRIMARY KEY (uuid_kaavaelementti, uuid_kaavamaarays)

);
-- ddl-end --

-- object: kaavaelementti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays
    ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
        REFERENCES asemakaavat.kaavaelementti (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: kaavamaarays_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays
    ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
        REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
        ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dokumentti_fk | type: CONSTRAINT --
-- ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti
    ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
        REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
        ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --


