# QAAVA-plugin käyttöohjeet

## Vaihe 1. PostGIS-tietokantayhteyden luominen

Tarvitset QAAVA-lisäosan käyttöön PostGIS-tietokannan eli PostgreSQL-tietokantaohjelmiston ja PostGIS-extension. 

Jos käytössäsi on PostGIS-tietokanta, luo ensin QGISissä yhteys siihen esimerkiksi selain-näkymässä PostGIS-yhteyden kohdalla klikkaamalla hiiren oikealla ja täyttämällä yhteystiedot. 

 - Nimi: tietokantayhteyden nimi, voit laittaa tähän mitä tahansa
 - Isäntä (host): tietokannan palvelimen osoite
 - Portti: palvelimen portti. PostgreSQL käyttää oletuksena aina porttia 5432
 - Tietokanta: yhdistettävän tietokannan nimi
 - Autentikointi: Valitse välilehti yksinkertainen todennus ja kirjoita käyttäjänimi ja salasana. Voit sen jälkeen klikata "Convert to configuration", jolloin yhtystiedot tallentuvat QGISin pääsalasanan taakse ja niitä ei tarvitse enää kirjoittaa uudelleen joka kerta.

![PostGIS-yhteys](/postgis_yhteys.png)

Voit lisätä molemmat kaksi tietokantaa, jotta voit hyödyntää toiseta yleiskaavan ja toista asemakaavan käyttöön. 

Jos et tiedä miten PostGIS-yhteyden saa käyttöön, ota yhteyttä info@gispo.fi. Gispo Oy voi myös tarvittaessa asentaa ja ylläpitää tietokannan puolestanne.

## Vaihe 2. Lataa QAAVA-lisäosa

1. [Lataa QAAVA-plugin-zip tiedostona omalle koneelle](https://github.com/GispoCoding/qaava-qgis-plugin/releases/), valitse uusin listalta ja lataa siihen liittyvä .zip-paketti
2. Avaa QGIS ja valitse Lisäosat -> Hallitse ja asenna lisäosia
3. Paina "Asenna ZIP-tiedostosta" ja hae lataamasi tiedosto
4. Paina "Asenna lisäosa" painikkeesta ja paina kyllä avautuvasta varoitusikkunasta
5. Lisäosa on asentunut onnistuneesti, kun ikkunan yläosaan tulee viesti ja se nkäyy asennetuissa lisäosissa

![Asenna lisäosa](/asennazip.png)

## Vaihe 3. Alusta kaavan tietomalli

1. Avaa Qaava-lisäosa valitsemalla Lisäosat -> Qaava -> Qaava
2. Valitse vasemmalta paneeli "Database"

![Alusta tietomalli](/qaava_alustus.png)

3. Valitse kohtaan "Available PostGIS databases" haluamasi tietokantayhteys. ÄLÄ LAITA SAMAAN TIETOKANTAAN MOLEMPIA KAAVAMALLEJA, sillä niissä saman nimisiä tauluja. 
4. Valitse kohtaan "Data Model for the database" haluamasi malli (general=yleiskaava, detailed=asemakaava, käännökset ja tekstit tarkentuvat myöhemmin)
5. Vahvista laatikko "I understand that this action..."
6. Paina "Initialize". Huom! Tämä toiminta hävittää aina kaikki vanhat tiedot kannasta, jos siellä on jo tuotu kaavan tietomalli. 
7. Alustuksen valmistumisen merkiksi QGISin yläosaan tulee viesti ja voit tarkistaa Selain-kohdasta, että tietokannasta löytyy halutut taulut
8. Valitse QGIS-projekti (tietokantaan tallentuu samalla QGIS-projekti, joka näkyy nyt työkalun valikossa). Valinta avaa QGIS-projektin automaattisesti näkyviin. Se löytyy myös tietomallin public-skeemasta, jos olet sallinut QGIS-projektin tallennuksen tietokannan yhteyksien muodostamisen yhteydessä. 

![QGIS projekti](/qaava_tyotila.png)
![Projekti](/qaava_open_project.gif)

9. Jatkossa tietokannan skeeman päivittäminen tapahtuu helposti painamalla "Promote"-nappia. Jos kaavan tietomallista on tullut uusi versio, havaitsee lisäosa sen automaattisesti rekisteröinnin yhteydessä ja antaa käyttäjän päivittää tietokanta migraatioskriptien avulla, jolloin data ei vaarannu.

![Promote](/qaava_promote_db.gif)

## Vaihe 4. QGIS-projektin hyödyntäminen

Työtilassa pitäisi nyt näkyä QGIS-projekti joko asema- tai yleiskaavalle. Voit alkaa lisäämään kohteita, tee ensin kaavan ulkoraja.

![Työtila](/qaava_tyotila2.png)

Huom! Jotta tietojen yhteydet toisiin tauluihin toimivat, kannattaa ensin luoda geometriakohteet ja sitten lisätä esimerkiksi teemoja, kaavamääräyksiä tai muita lisätietoja. Kohde pitää olla ensi olemassa (sisältää rivin tietoa), ennenkuin siihen voi liittää muita kohteita.

## Vaihe 5. Tietojen suodatus

![Projekti](/qaava_suodatus_1.gif)
![Projekti](/qaava_suodatus_2.gif)

## Yleisiä ohjeita
- Kun vaihdat tietokantayhteyttä tai suljet projektin, sammuta välillä QGIS jotta varmistut siitä, ettei tietoja menetetä
- Jos muokkaat projektia, voit tallentaa sen tietokantaan QGISin avulla: Projekti -> Tallenna tiedostoon -> PostgreSQL ja valitsemalla seuraavat arvot:
  - Yhteys: käyttämäsi tietokantayhteyden nimi
  - Skeema: public
  - Projekti: voit tallentaa joko saman projektin päälle tai luoda uuden projektin. Uusi projekti on mahdollista ladata samalla tavalla myös lisäosan toimesta.


