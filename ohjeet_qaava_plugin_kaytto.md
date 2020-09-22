# QAAVA-plugin käyttöohjeet

## Vaihe 1. PostGIS-tietokantayhteyden luominen

Tarvitset QAAVA-lisöosan käyttöön PostGIS-tietokannan eli PostgreSQL-tietokantaohjelmiston ja PostGIS-extension. 

Jos käytössäsi on PostGIS-tietokanta, luo ensin QGISissä yhteys siihen esimerkiksi selain-näkymässä PostGIS-yhteyden kohdalla klikkaamalla hiiren oikealla ja täyttämällä yhteystiedot. 

Voit lisätä molemmat kaksi tietokantaa, jotta voit hyödyntää toiseta yleiskaavan ja toista asemakaavan käyttöön. 

Jos et tiedä miten PostGIS-yhteyden saa käyttöön, ota yhteyttä info@gispo.fi. Gispo Oy voi myös hostata tarvittaessa tietokantaa.

## Vaihe 2. Lataa QAAVA-lisäosa

1. [Lataa QAAVA-plugin-zip tiedostona omalle koneelle](https://github.com/GispoCoding/qaava-qgis-plugin/releases/), valitse uusin listalta ja lataa siihen liittyvä .zip-paketti
2. Avaa QGIS ja valitse Lisäosat -> Hallitse ja asenna lisäosia
3. Paina "Asenna ZIP-tiedostosta" ja hae lataamasi tiedosto
4. Paina "Asenna lisäosa" painikkeesta ja paina kyllä avautuvasta varoitusikkunasta
5. Lisäosa on asentunut onnistuneesti, kun ikkunan yläosaan tulee viesti ja se nkäyy asennetuissa lisäosissa

## Vaihe 3. Alusta kaavan tietomalli

2. Avaa Qaava-lisäosa valitsemalla Lisäosat -> Qaava -> Qaava
3. Valitse vasemmalta paneeli "Database"
4. Valitse kohtaan "Available PostGIS databases" haluamasi tietokantayhteys. ÄLÄ LAITA SAMAAN TIETOKANTAAN MOLEMPIA KAAVAMALLEJA, sillä niissä saman nimisiä tauluja. 
5. Valitse kohtaan "Data Model for the database" haluamasi malli (general=yleiskaava, detailed=asemakaava, käännökset ja tekstit tarkentuvat myöhemmin)
6. Vahvista laatikko "I understand that this action..."
7. Paina "Initialize"
8. Alustuksen valmistumisen merkiksi QGISin yläosaan tulee viesti ja voit tarkistaa Selain-kohdasta, että tietokannasta löytyy halutut taulut


