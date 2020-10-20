SET search_path=public,pg_catalog,asemakaavat,koodistot,kaavan_lisatiedot;


ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE koodistot.kaavamaarays DROP CONSTRAINT IF EXISTS osa_alue_fk CASCADE;
ALTER TABLE koodistot.kaavamaarays ADD CONSTRAINT osa_alue_fk FOREIGN KEY (uuid_osa_alue)
REFERENCES asemakaavat.osa_alue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS taustakartta_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT taustakartta_fk FOREIGN KEY (gid_taustakartta)
REFERENCES kaavan_lisatiedot.taustakartta (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS hsrcl_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT hsrcl_fk FOREIGN KEY (gid_hsrcl)
REFERENCES koodistot.hsrcl (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE koodistot.osa_alue_tyyppi DROP CONSTRAINT IF EXISTS hsrcl_fk CASCADE;
ALTER TABLE koodistot.osa_alue_tyyppi ADD CONSTRAINT hsrcl_fk FOREIGN KEY (gid_hsrcl)
REFERENCES koodistot.hsrcl (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
REFERENCES koodistot.kieli (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS vaihetieto_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT vaihetieto_fk FOREIGN KEY (gid_vaihetieto)
REFERENCES koodistot.vaihetieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS kaavatyyppi_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT kaavatyyppi_fk FOREIGN KEY (gid_kaavatyyppi)
REFERENCES koodistot.kaavatyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD CONSTRAINT kaavaelementti_tyyppi_fk FOREIGN KEY (gid_kaavaelementti_tyyppi)
REFERENCES koodistot.kaavaelementti_tyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS osa_alue_tyyppi_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD CONSTRAINT osa_alue_tyyppi_fk FOREIGN KEY (gid_osa_alue_tyyppi)
REFERENCES koodistot.osa_alue_tyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS maankayttoluokka_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD CONSTRAINT maankayttoluokka_fk FOREIGN KEY (gid_maankayttoluokka)
REFERENCES koodistot.maankayttoluokka (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
REFERENCES koodistot.kieli (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE kaavan_lisatiedot.dokumentti DROP CONSTRAINT IF EXISTS dokumenttityyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.dokumentti ADD CONSTRAINT dokumenttityyppi_fk FOREIGN KEY (gid_dokumenttityyppi)
REFERENCES koodistot.dokumenttityyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE koodistot.maankayttoluokka DROP CONSTRAINT IF EXISTS hilucs_fk CASCADE;
ALTER TABLE koodistot.maankayttoluokka ADD CONSTRAINT hilucs_fk FOREIGN KEY (gid_hilucs)
REFERENCES koodistot.hilucs (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_asemakaava ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.asemakaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.asemakaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_merkintatyyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto ADD CONSTRAINT numeerinen_merkintatyyppi_fk FOREIGN KEY (gid_numeerinen_merkintatyyppi)
REFERENCES koodistot.numeerinen_merkintatyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES asemakaavat.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS osa_alue_fk CASCADE;
ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto ADD CONSTRAINT osa_alue_fk FOREIGN KEY (uuid_osa_alue)
REFERENCES asemakaavat.osa_alue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_osa_alue_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES asemakaavat.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS geometria_tyyppi_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT geometria_tyyppi_fk FOREIGN KEY (gid_geometria_tyyppi)
REFERENCES koodistot.geometria_tyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES asemakaavat.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS asemakaava_fk CASCADE;
ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays ADD CONSTRAINT asemakaava_fk FOREIGN KEY (uuid_asemakaava)
REFERENCES asemakaavat.asemakaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_asemakaava_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES asemakaavat.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE asemakaavat.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.kaavaelementti DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.kaavaelementti ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.maankayttoalue DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.maankayttoalue ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE asemakaavat.osa_alue DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE asemakaavat.osa_alue ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;





