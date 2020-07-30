# Yleiskaavan tietomalli

Yleiskaavan tietomalli on tuotettu yhteistyössä QAAVA-kehitysprojektiin osallistuneiden toimijoiden kanssa. Työ alkaa kesäkuussa 2020. Tietomallia on kehitetty yhdessä Espoon, Joensuun ja Seinäjoen sekä Gispo Oy:n kanssa. Kaikki kommentit otetaan ilolla vastaan!

Kehitysversiot:
- Yleiskaavan tietomalli - versio 1.0, dbm] TBD
- Yleiskaavan tietomalli - versio 1.0, sql] TBD

## Tietomallin sisältö

Asemakaavan tietomalliin verrattuna yleiskaavan tietomalli on hieman erilainen. Eroavaisuuksia löytyy seuraavista osioista:
- koodilistat (mm. numeeriset arvot, maankäyttötyypit ja muut kohdetyypit, yleiskaavatyypit)
- Kohteilla ja kaavalla voi olla teema, esim. "liikenne" tai "viherkaava". Jokainen kohde voi liittyä useampaan teemaan.
- Geometriakohteet voidaan jakaa yleiskaavan ulkorajaan, maankäyttöalueisiin, osa-alueisiin, viivoihin ja pisteisiin

Emme ole vielä havainneet rakenteellisia tarpeita eritellä strategista tai "grid"-kaavaa "normaalista" yleiskaavasta. Jos selkeitä tarpeita ilmenee, otetaan tämä huomioon tietomalissa. Lähdetietojen ja numeeristen arvojen perusteella esimerkiksi kiinteistö- tai väestötiedot voidaan liittää kaavakohteeseen. 

## Tietomallin pohjana on käytetty seuraavia tausta-aineistoja ja selvityksiä:

- [INSPIRE: Planned Land Use](https://inspire.ec.europa.eu/data-model/approved/r4618-ir/html/index.htm?goto=2:3:10:1:4:8445)
- [Tampereen yleiskaavan tietomalli](https://github.com/GispoCoding/Tampere-KDYK/)
- [Ympäristöministeriön rakennetun ympäristön kaavatietomalli](https://github.com/YM-rakennettu-ymparisto/kaavatietomalli/blob/master/uml/Kaavoituksen_kansallinen_tietomalli_14062019.pdf)
- [Ympäristöministeriön tulevaisuuden maankäyttöpäätökset -hankkeen tulokset](http://julkaisut.valtioneuvosto.fi/handle/10024/162107)
- [Harmonisoidut maakuntakaavat e-palveluiksi -hankkeen tulokset](https://www.lounaistieto.fi/maakuntakaavat/)
- [Helsingin kaupungin KIRA-digi-hankkeen tulokset](https://www.avoindata.fi/data/fi/dataset/kiradigi_helsingin-asemakaavat-yhteisena-tietovarantona/resource/0e35451b-862e-4a1a-b3f9-15f03db7466b?inner_span=True)

Lisäksi siinä huomioidaan ympäristöministeriön pian käynnistyvä käsitteistö, sanasto ja tietomallien kehitystyö. 
