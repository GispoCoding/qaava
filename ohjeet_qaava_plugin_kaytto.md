# QAAVA-plugin käyttöohjeet

## Vaihe 1. PostGIS-tietokantayhteyden luominen

Tarvitset QAAVA-lisäosan käyttöön PostGIS-tietokannan eli PostgreSQL-tietokantaohjelmiston ja PostGIS-extension. 

Jos käytössäsi on PostGIS-tietokanta, luo ensin QGISissä yhteys siihen esimerkiksi selain-näkymässä PostGIS-yhteyden kohdalla klikkaamalla hiiren oikealla ja täyttämällä yhteystiedot. 

 - Nimi: tietokantayhteyden nimi, voit laittaa tähän mitä tahansa
 - Isäntä (host): tietokannan palvelimen osoite
 - Portti: palvelimen portti. PostgreSQL käyttää oletuksena aina porttia 5432
 - Tietokanta: yhdistettävän tietokannan nimi
 - Autentikointi: Valitse välilehti yksinkertainen todennus ja kirjoita käyttäjänimi ja salasana. Voit sen jälkeen klikata "Convert to configuration", jolloin yhtystiedot tallentuvat QGISin pääsalasanan taakse ja niitä ei tarvitse enää kirjoittaa uudelleen joka kerta.

<img src="/postgis_yhteys.png" width="500">

Valitse myös ruksit kohtiin: "Listaa taulut ilman geometriaa" ja "Salli QGIS projektien tallennus tietokantaan/sta"

Testaa näetkö selainnäkymässä PostGIS-yhteyksien alla luomasi tietokantayhteyden. 

Jos et ole vielä asettanut pääsalasanaa QGISiin se pitää tehdä Asetukset > Valinnat > Autentikointi ja anna uusi pääsalasana.

Jos työstät sekä asema- että yleiskaavaa, lisää molemmille omat tietokantansa, jotta voit hyödyntää toista yleiskaavan ja toista asemakaavan käyttöön. ÄLÄ LAITA SAMAAN KANTAAN MOLEMPIA KAAVAMALLEJA, ne sisältävät saman nimisiä tauluja ja voivat mennä sen vuoksi sekaisin. 

Huomaathan, että PostGISin käytössä on hyvä olla pääkäyttäjä, joka pystyy poistamaan tietokannan tai päivittämään tietomalleja. Lisäksi muille peruskäyttäjille voidaan sallia vain käyttöoikeudet tietokantaan, jolloin näillä ei ole oikeutta poistaa tietokantapohjaa tai päivittää sitä. 

Jos et tiedä miten PostGIS-yhteyden saa käyttöön, ota yhteyttä info@gispo.fi. Gispo Oy voi myös tarvittaessa asentaa ja ylläpitää tietokannan puolestanne.

## Vaihe 2. Asenna QAAVA-lisäosa

1. QAAVA-lisäosa on saatavilla QGISin laajennososa-listalta ja sen tiedot löytyvät myös täältä: https://plugins.qgis.org/plugins/Qaava/
2. Avaa QGIS ja valitse Lisäosat -> Hallitse ja asenna lisäosia
3. Paina "Kaikki" kohdasta ja kirjoita hakukenttään QAAVA
4. Asenna lisäosa
5. Lisäosa on asentunut onnistuneesti, kun ikkunan yläosaan tulee viesti ja se nkäyy asennetuissa lisäosissa

<img src="/asennus_qaava.png" width="750">

## Vaihe 3. Alusta kaavan tietomalli (tarvitsee tehdä vain kerran!)

1. Avaa Qaava-lisäosa valitsemalla QGISIn yläpalkista Lisäosat -> Qaava -> Qaava
2. Ensimmäiseksi työkalu avaa oletusnäkymän, jossa valitaan halutaanko tuottaa asema- vai yleiskaavaa. Ensimmäisellä kerralla yhteys pitää määrittää Database-kohdasta kuntoon, jos tietokantaa ei ole vielä sieltä määritelty. Muuten tästä oletusnäkymän paneelista avataan työtila kaavalle. 

<img src="/qaava_session.png" width="750">

3. Valitse ensimmäisellä kerralla (eli siis silloin, jos et ole vielä ottanut QAAVA-työkalulla yhteyttä tietokantaan) vasemmalta paneeli "Database"

<img src="/qaava_alustus.png" width="750">

4. Valitse kohtaan "Available PostGIS databases" haluamasi tietokantayhteys. Jos pääkäyttäjä on tuonut tietokantaan valmiit mallit, ÄLÄ LAITA SAMAAN TIETOKANTAAN MOLEMPIA KAAVAMALLEJA, sillä niissä saman nimisiä tauluja. 
5. Valitse kohtaan "Data Model for the database" haluamasi malli (general=yleiskaava, detailed=asemakaava, käännökset ja tekstit tarkentuvat myöhemmin)
6. Vahvista laatikko "I understand that this action..."
7. Paina "Initialize". Huom! Tämä toiminta hävittää aina kaikki vanhat tiedot kannasta, jos siellä on jo tuotu kaavan tietomalli, eli todellakin ymmärrä mitä teet :)
8. Alustuksen valmistumisen merkiksi QGISin yläosaan tulee viesti, jos kaikki menee hyvin
9. Promote kohdassa voi näkyä tietokannan versioissa eroja (current vs. newest), näin voi käydä jos työkalun kehityksessä tietokannan malli päivittyy. Silloin kannattaa painaa promote. Tätä ei tarvitse tehdä usein ja sen voi tehdä vain pääkäyttäjä. 
9. Valitse QGIS-projekti (tietokantaan tallentuu samalla QGIS-projekti, joka näkyy nyt työkalun valikossa). Valinta avaa QGIS-projektin automaattisesti näkyviin. Työtilat löytyvät myös tietomallin public-skeemasta, jos olet sallinut QGIS-projektin tallennuksen tietokannan yhteyksien muodostamisen yhteydessä. Muuten QAAVA-lisäosan aloituspaneelista (kohta 1) pääset aina työtilaan takaisin. 

<img src="/qaava_tyotila.png" width="750">

![Projekti](/qaava_open_project.gif)

9. Jatkossa tietokannan skeeman päivittäminen tapahtuu helposti painamalla "Promote"-nappia. Jos kaavan tietomallista on tullut uusi versio, havaitsee lisäosa sen automaattisesti rekisteröinnin yhteydessä ja antaa käyttäjän päivittää tietokanta migraatioskriptien avulla, jolloin data ei vaarannu.

![Promote](/qaava_promote_db.gif)

## Vaihe 4. QGIS-projektin hyödyntäminen

Työtilassa pitäisi nyt näkyä QGIS-projekti joko asema- tai yleiskaavalle. Voit alkaa lisäämään kohteita, tee ensin kaavan ulkoraja.

<img src="/qaava_tyotila2.png" width="750">

Huom! Jotta tietojen yhteydet toisiin tauluihin toimivat, kannattaa ensin luoda geometriakohteet ja sitten lisätä esimerkiksi teemoja, kaavamääräyksiä tai muita lisätietoja. Kohde pitää olla ensi olemassa (sisältää rivin tietoa), ennenkuin siihen voi liittää muita kohteita.

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


