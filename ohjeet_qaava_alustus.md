## QAAVAn alustustyökalu

Työkalu alustaa QAAVA-tietokannan (joko asema- tai yleiskaava) PostGIS-kantaan. Tarvitset sitä varten yhteyden PostgreSQL-tietokantaan, jossa on PostGIS-lisäosa. Gispo voi myös hostata tarvittaessa tietokantaa.

1. [Lataa plugin-zip tiedostona omalle koneelle](https://github.com/GispoCoding/qaava-qgis-plugin/releases/download/v0.0.1/Qaava_v0.0.1.zip)
2. Avaa QGIS ja valitse Lisäosat -> Hallitse ja asenna lisäosia
3. Paina "Asenna ZIP-tiedostosta" ja hae lataamasi tiedosto
4. Paina "Asenna lisäosa" painikkeesta ja paina kyllä avautuvasta varoitusikkunasta
5. Lisäosa on asentununt onnistuneesti kun ikkunan yläosaan tulee viesti ja se nkäyy asennetuissa lisäosissa


Tässä vielä nopeat ohjeet tietokannan alustamiseen:

1. Lisää tietokantayhteydet. Voit lisätä molemmat kaksi tietokantaa, jotta voit alustaa toisen yleiskaavan ja toisen asemakaavan käyttöön
2. Avaa Qaava-ikkuna valitsemalla Lisäosat -> Qaava -> Qaava
3. Valitse vasemmalta paneeli "Database"
4. Valitse kohtaan "Available PostGIS databases" haluamasi tietokantayhteys
5. Valitse kohtaan "Data Model for the database" haluamasi malli (general=yleiskaava, detailed=asemakaava, käännökset ja tekstit tarkentuvat myöhemmin)
6. Vahvista laatikko "I understand that this action..."
7. Paina "Initialize"
8. Alustuksen valmistumisen merkiksi QGISin yläosaan tulee viesti ja voit tarkistaa Selain-kohdasta, että tietokannasta löytyy halutut taulut
