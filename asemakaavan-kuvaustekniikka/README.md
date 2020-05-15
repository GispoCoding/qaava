# Asemakaavan kuvaustekniikka

Asemakaavan kuvaustekniikka tuotetaan yhteistyössä QAAVA-kehitysprojektiin osallistuneiden toimijoiden kanssa. 
Sen on rahoittanut [Kuntaliitto](https://www.kuntaliitto.fi/ajankohtaista/2020/avoin-tyylikirjasto-helpottaa-asemakaavojen-digitalisointia?fbclid=IwAR3d_moQRJR0IxAxzJXxjlo4YtGfzT4ju87H8DTurRdNXtqo7FvnMIFkCUA). Kuvaustekniikka tuotetaan QML ja SLD-muodossa. Näin kuvaustekniikkaa voidaan käyttää QGISissä sekä esimerkiksi GeoServerillä. Toteutus valmistuu toukokuussa 2020.

- [QGISin QML tiedosto](asemakaavamerkinnat_150520.xml) (15.5.2020 versio 1.0)
- SLD-visualisointikirjasto (tulossa)
- [Testiaineisto GeoPackage-muodossa](Testiasemakaava.gpkg), siinä on valmiina QGIS projekti ja tyylikirjasto sisällä

## Ohjeet käyttöönottoon

1. Lataa XML-muotoinen tyylikirjasto koneellesi ja avaa QGIS. Kohdasta **Asetukset > Tyylien hallinta** avautuvassa paneelissa voit importoida (tuoda) XML-tyylin QGISiin. Valitse kaikki ja Tuo tiedot. 

<img src="tyylien_tuonti_QGIS.png" width="500"/>

2.  Käytä omaa aineistoa ja luokittele aineistosi QGISin tason tyylit-kohdassa. Määrittele haluamallesi kohteille sopivat tyylit. Muista, että tyylikirjasto koostuu polygoneista, viivoista ja pisteistä. Pistemäiset tyylit *eivät* näy polygoneille ja toisinpäin. 

<img src="tyylien_lisaaminen.png" width="500"/>

## Ohjeet datan määrittämien visualisointien käyttöön



## Taustatietona hyödynnetty
- [MRL:n opas asemakaavoitukseen, YM - Opas 12 Asemakaavamerkinnät- ja määräykset, 2003](https://www.ym.fi/fi-FI/Maankaytto_ja_rakentaminen/Lainsaadanto_ja_ohjeet/Maankaytto_ja_rakennuslaki_2000_sarja/Opas_12_Asemakaavamerkinnat_ja_maaraykse(4437))
- [Paimion asemakaavan SLD](paimion-asemakaavan-sld)
