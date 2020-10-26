# QAAVA-plugin käyttöohjeet

## Vaihe 1. PostGIS-tietokantayhteyden luominen

Tarvitset QAAVA-lisäosan käyttöön PostGIS-tietokannan eli PostgreSQL-tietokantaohjelmiston ja PostGIS-extension. 

Jos käytössäsi on PostGIS-tietokanta, luo ensin QGISissä yhteys siihen esimerkiksi selain-näkymässä PostGIS-yhteyden kohdalla klikkaamalla hiiren oikealla ja täyttämällä yhteystiedot. 

 - Nimi: tietokantayhteyden nimi, voit laittaa tähän mitä tahansa
 - Isäntä (host): tietokannan palvelimen osoite
 - Portti: palvelimen portti. PostgreSQL käyttää oletuksena aina porttia 5432
 - Tietokanta: yhdistettävän tietokannan nimi
 - Autentikointi: Valitse välilehti yksinkertainen todennus ja kirjoita käyttäjänimi ja salasana. Voit sen jälkeen klikata "Convert to configuration", jolloin yhteystiedot tallentuvat QGISin pääsalasanan taakse ja niitä ei tarvitse enää kirjoittaa uudelleen joka kerta. Jos et ole vielä asettanut pääsalasanaa QGISiin se pitää tehdä Asetukset > Valinnat > Autentikointi ja anna uusi pääsalasana.

<img src="/postgis_yhteys.png" width="500">

Valitse myös ruksit kohtiin: *"Listaa taulut ilman geometriaa"* ja *"Salli QGIS projektien tallennus tietokantaan/sta"*

---------

Testaa näetkö selainnäkymässä PostGIS-yhteyksien alla luomasi tietokantayhteyden. 

Jos työstät sekä asema- että yleiskaavaa, lisää molemmille omat tietokantansa, jotta voit hyödyntää toista yleiskaavan ja toista asemakaavan käyttöön. ÄLÄ LAITA SAMAAN KANTAAN MOLEMPIA KAAVAMALLEJA, ne sisältävät saman nimisiä tauluja ja voivat mennä sen vuoksi sekaisin. 

Huomaathan, että PostGISin käytössä on hyvä olla pääkäyttäjä, joka pystyy poistamaan tietokannan tai päivittämään tietomalleja. Lisäksi muille peruskäyttäjille voidaan sallia vain käyttöoikeudet tietokantaan, jolloin näillä ei ole oikeutta poistaa tietokantapohjaa tai päivittää sitä. 

Jos et tiedä miten PostGIS-yhteyden saa käyttöön, ota yhteyttä info@gispo.fi. Gispo Oy voi myös tarvittaessa asentaa ja ylläpitää tietokannan puolestanne.

## Vaihe 2. Asenna QAAVA-lisäosa

1. QAAVA-lisäosa on saatavilla QGISin laajennososa-listalta ja sen tiedot löytyvät myös täältä: https://plugins.qgis.org/plugins/Qaava/
2. Avaa QGIS ja valitse Lisäosat -> Hallitse ja asenna lisäosia
3. Paina "Kaikki" kohdasta ja kirjoita hakukenttään QAAVA
4. Asenna lisäosa
5. Lisäosa on asentunut onnistuneesti, kun ikkunan yläosaan tulee viesti ja se näkyy asennetuissa lisäosissa

<img src="/asennus_qaava.png" width="750">

## Vaihe 3. Alusta kaavan tietomalli (tarvitsee tehdä vain kerran!)

1. Avaa Qaava-lisäosa valitsemalla QGISin yläpalkista Lisäosat -> Qaava -> Qaava
2. Ensimmäiseksi työkalu avaa oletusnäkymän, jossa valitaan halutaanko tuottaa asema- vai yleiskaavaa. Ensimmäisellä kerralla yhteys pitää määrittää Database-kohdasta kuntoon, jos tietokantaa ei ole vielä sieltä määritelty. Muuten tästä oletusnäkymän paneelista avataan työtila kaavalle. 

<img src="/qaava_session.png" width="750">

3. Valitse ensimmäisellä kerralla (eli siis silloin, jos et ole vielä ottanut QAAVA-työkalulla yhteyttä tietokantaan) työkalusta kohta "Database"

<img src="/qaava_alustus.png" width="750">

4. Valitse kohtaan *"Available PostGIS databases"* haluamasi tietokantayhteys. Huom! Asema- ja yleiskaavalle kannattaa olla omat tietokannat valmiina.
5. Valitse kohtaan *"Data Model for the database"* haluamasi malli (general=yleiskaava, detailed=asemakaava, käännökset ja tekstit tarkentuvat myöhemmin). 
6. Vahvista laatikko *"I understand that this action..."*
7. Paina *"Initialize".* Huom! Tämä toiminta hävittää aina kaikki vanhat tiedot kannasta, jos siellä on jo tuotu kaavan tietomalli, eli todellakin ymmärrä mitä teet :)
8. Alustuksen valmistumisen merkiksi QGISin yläosaan tulee viesti, jos kaikki menee hyvin
9. Promote kohdassa voi näkyä tietokannan versioissa eroja (current vs. newest). Näin voi käydä, jos työkalun kehityksessä tietokannan malli päivittyy. Silloin kannattaa painaa promote. Tätä ei tarvitse tehdä kovinkaan usein. 

![Promote](/qaava_promote_db.gif)

10. Valitse QGIS-projekti (tietokantaan tallentuu samalla QGIS-projekti, joka näkyy nyt työkalun valikossa). 

<img src="/qaava_tyotila.png" width="750">

Valinta avaa QGIS-projektin automaattisesti näkyviin. Työtilat löytyvät myös tietomallin public-skeemasta, jos olet sallinut QGIS-projektin tallennuksen tietokannan yhteyksien muodostamisen yhteydessä. Muuten QAAVA-lisäosan aloituspaneelista (kohta 1) pääset aina työtilaan takaisin. 

![Projekti](/qaava_open_project.gif)


## Vaihe 4. QGIS-projektin hyödyntäminen

Työtilassa pitäisi nyt näkyä QGIS-projekti joko asema- tai yleiskaavalle.

Huomaat, että työtilassa on paikkatietotasoja sekä liuta taulukoita, joissa ei ole geometriaa. 

Suurin osa näistä tiedoista on koodilistoja (esim. kaavan tyyppi, prosessin vaihe, maankäyttöluokka). Koodilistat perustuvat kaavan tietomallityöhön, QAAVA-kehittämisryhmän kommentteihin sekä visualisointien osalta MRL:n oppaisiin. Esimerkiksi Maankäyttöluokka-taulu sisältää kaikki MRL:n visualisointiohjeistuksessa löydetyt aluevarausluokitukset (LHA, T, VL, MA). Emme ole estäneet omien tietojen syöttöä näihin listoihin. Jos listalta puuttuu olennaisia tietoja, taulukoita voi editoida ja lisätä omia koodilistoja. Huomaathan tällöin, että esimerkiksi visualisoitaessa maankäyttöluokkia, visualisoinnin arvo tulee maankäyttöluokka-taulun id:n perusteella. Lisäksi jos teet uuden koodin esimerkiksi maankäyttöluokka-tauluun, pitää se myös erikseen visualisoida maankäyttöalueiden luokituksessa. Mieluusti otamme myös vastaan kehitysehdotukset ja virheraportit. Tee silloin issue tänne GitHubiin ja kuvaile mitä haluaisit tehtävän. 

<img src="/qaava_maankaytto.png" width="750">
Koodilista asemakaavan maankäyttöluokille.

<img src="/qaava_maankayttoalue.png" width="750">
Vastaava lista käytössä asemakaavan maankäyttöalueen lomakkeella alasvetovalikossa. Kohteet visualisoidaan maankäyttöluokan id:n perusteella (gid_maankayttoluokka). 

Lisäksi työtilassa on relaatiotauluja, jotka yhdistävät mm. numeerisen arvon, kaavamääräyksen, dokumentit ja yleiskaavan tapauksessa teeman spatiaalisiin kaavakohteisiin. 

Älä poista mitään työtilasta, sillä kaikkia tauluja tarvitaan. Jos näin tapahtuu vahingossa, saat palautettua alkuperäisen QAAVA-työtilan QAAVA-lisäosalla.

----------------------

Voit alkaa lisäämään kohteita, tee ensin kaavan ulkoraja.

<img src="/qaava_tyotila2.png" width="750">

Huom! Jotta tietojen yhteydet toisiin tauluihin toimivat, kannattaa ensin luoda geometriakohteet ja sitten lisätä esimerkiksi teemoja, kaavamääräyksiä tai muita lisätietoja. Kohde pitää olla ensi olemassa (sisältää rivin tietoa), ennenkuin siihen voi liittää muita kohteita. Tähän mahdollisesti kehitetään helpotusta QAAVAn jatkoprojekteissa.

Kaikille kaavakohteille on luotu valmiit visualisoinnit. Esimerkiksi kaavan ulkoraja piirtyy automaattisesti MRL:n oppaan 2003 mukaisesti. 

Muille kaavatasoille (maankäyttö, osa-alueet, pisteet, viivat), valmis visualisointi perustuu kaava

## Vaihe 5. Tietojen suodatus

Kun tietoja on tuotettu, niitä voi suodattaa eri tavoin SQL:n avulla. Mutta koska kaikille SQL ei ole ihan tuttu ja kaavan tietomallista muodostuu aika monimutkaisiakin yhteyksiä taulujen välillä, teimme työtä helpottamaan lisäosan yhteyteen suodatus-työkalun. Lisää haluttuja tasoja ja kenttiä ja niiden välisiä operaatiota ja muodosta omiin tarpeisiin kysely. 

Kysely ei tuota uutta taulua työtilaan vaan suodattaa olemassa olevia tauluja siten, että lopputuloksessa näkyvät vain suodatuksen tulokset. Esimerkkejä suodatuksista voi olla vaikkapa: "Näytä kaaavoittajan x tekemät muutokset päivänä y", jos halutaan näyttää vain tietyn henkilön tuottamat kohteet. Jos on tarve tarkistaa, että onko kaikilla kaavakohteilla kaavamääräys, voidaan tehdä suodatus joka toteuttaa lauseen "Näytä kaikki ne maankäyttöalueet joilla ei ole kaavamääräyksiä". 

![Projekti](/qaava_suodatus_1.gif)
![Projekti](/qaava_suodatus_2.gif)

## Vaihe 6. Tietojen tuonti toisesta lähteestä

Työkalu kehityksen alla.

## Yleisiä ohjeita
- Kun vaihdat tietokantayhteyttä tai suljet projektin, sammuta välillä QGIS jotta varmistut siitä, ettei tietoja menetetä
- Jos muokkaat projektia, voit tallentaa sen tietokantaan QGISin avulla: Projekti -> Tallenna tiedostoon -> PostgreSQL ja valitsemalla seuraavat arvot:
  - Yhteys: käyttämäsi tietokantayhteyden nimi
  - Skeema: public
  - Projekti: voit tallentaa joko saman projektin päälle tai luoda uuden projektin. Uusi projekti on mahdollista ladata samalla tavalla myös lisäosan toimesta.


