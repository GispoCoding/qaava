SET search_path=public,pg_catalog,yleiskaava,koodistot,kaavan_lisatiedot;

ALTER TABLE yleiskaava.maankayttoalue DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;


ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS taustakartta_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT taustakartta_fk FOREIGN KEY (gid_taustakartta)
REFERENCES kaavan_lisatiedot.taustakartta (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS hsrcl_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT hsrcl_fk FOREIGN KEY (gid_hsrcl)
REFERENCES koodistot.hsrcl (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.kaavaelementti DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS kieli_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT kieli_fk FOREIGN KEY (gid_kieli)
REFERENCES koodistot.kieli (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS vaihetieto_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT vaihetieto_fk FOREIGN KEY (gid_vaihetieto)
REFERENCES koodistot.vaihetieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS kaavatyyppi_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT kaavatyyppi_fk FOREIGN KEY (gid_kaavatyyppi)
REFERENCES koodistot.kaavatyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.kaavaelementti DROP CONSTRAINT IF EXISTS kaavaelementti_tyyppi_fk CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD CONSTRAINT kaavaelementti_tyyppi_fk FOREIGN KEY (gid_kaavaelementti_tyyppi)
REFERENCES koodistot.kaavaelementti_tyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.maankayttoalue DROP CONSTRAINT IF EXISTS maankayttoluokka_fk CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD CONSTRAINT maankayttoluokka_fk FOREIGN KEY (gid_maankayttoluokka)
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

ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.many_dokumentti_has_many_yleiskaava ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.yleiskaava DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.yleiskaava ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_merkintatyyppi_fk CASCADE;
ALTER TABLE kaavan_lisatiedot.numeerinen_lisatieto ADD CONSTRAINT numeerinen_merkintatyyppi_fk FOREIGN KEY (gid_numeerinen_merkintatyyppi)
REFERENCES koodistot.numeerinen_merkintatyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES yleiskaava.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES yleiskaava.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto DROP CONSTRAINT IF EXISTS numeerinen_lisatieto_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_numeerinen_lisatieto ADD CONSTRAINT numeerinen_lisatieto_fk FOREIGN KEY (gid_numeerinen_lisatieto)
REFERENCES kaavan_lisatiedot.numeerinen_lisatieto (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES yleiskaava.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema DROP CONSTRAINT IF EXISTS teema_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_teema ADD CONSTRAINT teema_fk FOREIGN KEY (gid_teema)
REFERENCES koodistot.teema (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE koodistot.kaavaelementti_tyyppi DROP CONSTRAINT IF EXISTS geometria_tyyppi_fk CASCADE;
ALTER TABLE koodistot.kaavaelementti_tyyppi ADD CONSTRAINT geometria_tyyppi_fk FOREIGN KEY (gid_geometria_tyyppi)
REFERENCES koodistot.geometria_tyyppi (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES yleiskaava.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema DROP CONSTRAINT IF EXISTS teema_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_teema ADD CONSTRAINT teema_fk FOREIGN KEY (gid_teema)
REFERENCES koodistot.teema (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema DROP CONSTRAINT IF EXISTS teema_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_teema ADD CONSTRAINT teema_fk FOREIGN KEY (gid_teema)
REFERENCES koodistot.teema (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.maankayttoalue DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.maankayttoalue ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.kaavaelementti DROP CONSTRAINT IF EXISTS dokumentti_fk CASCADE;
ALTER TABLE yleiskaava.kaavaelementti ADD CONSTRAINT dokumentti_fk FOREIGN KEY (gid_dokumentti)
REFERENCES kaavan_lisatiedot.dokumentti (gid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS yleiskaava_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays ADD CONSTRAINT yleiskaava_fk FOREIGN KEY (uuid_yleiskaava)
REFERENCES yleiskaava.yleiskaava (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_yleiskaava_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS maankayttoalue_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT maankayttoalue_fk FOREIGN KEY (uuid_maankayttoalue)
REFERENCES yleiskaava.maankayttoalue (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_maankayttoalue_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavaelementti_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavaelementti_fk FOREIGN KEY (uuid_kaavaelementti)
REFERENCES yleiskaava.kaavaelementti (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays DROP CONSTRAINT IF EXISTS kaavamaarays_fk CASCADE;
ALTER TABLE yleiskaava.many_kaavaelementti_has_many_kaavamaarays ADD CONSTRAINT kaavamaarays_fk FOREIGN KEY (uuid_kaavamaarays)
REFERENCES koodistot.kaavamaarays (uuid) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
