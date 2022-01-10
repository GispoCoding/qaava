# QAAVA

QGIS toolbox for land use planners in Finland. 

[QAAVA-lisäosa](https://plugins.qgis.org/plugins/Qaava/) 

Ota työkalu käyttöön seuraavammalla [näitä ohjeita](ohjeet_qaava_plugin_kaytto.md).

QAAVA-lisäosan kehityksen([oma repositorio](https://github.com/GispoCoding/qaava-qgis-plugin)).

*Huom! QAAVA-työkalu hyödyntää vuoden 2019 kaavatietomallityötä. Uusin kaavan tietomalli löytyy osoitteesta https://kaavatietomalli.fi/ ja QAAVA-työkalu ei tue sen käyttöä vielä. Tavoitteena on päivittää QAAVA-työkalu vuonna 2022 tai tuottaa uusi työkalu QGISille kaavatietojen tuottamiseen. Gispo on tuottanut kaavatietomalli.fi-mukaisen PostGIS-toteutuksen syksyllä 2021 https://github.com/GispoCoding/rytj osana SYKE:n RYTJ-työtä.* 

## Yhteistyössä

Toteutus tehdään avoimesti yhteistyössä eri toimijoiden kanssa. Mukana ovat nyt:
- [Paimion kaupunki](https://paim.io/) (asemakaavan tietomallityö + tulostepohjat)
- [Kuntaliitto](https://www.kuntaliitto.fi/) (asemakaavan visualisointikirjasto, [lue tiedote](https://www.kuntaliitto.fi/ajankohtaista/2020/avoin-tyylikirjasto-helpottaa-asemakaavojen-digitalisointia))
- [Seinäjoki](https://www.seinajoki.fi/) (yleiskaavan tietomallityö ja työkalu QGISiin kaavan alustusta varten PostGIS-kantaan)
- [Joensuu](https://www.joensuu.fi/) (yleiskaavan tietomallityö ja työkalu QGISiin kaavan alustusta varten PostGIS-kantaan)
- [Espoo](https://www.espoo.fi/fi-FI) (Kaavoittajan QGIS-työkalut)
- [Gispo Oy](https://www.gispo.fi/) (tekninen toteutus)

Kaikki halukkaat voivat tulla mukaan QAAVA-yhteiskehitykseen! Voit osallistua työhön esimerkiksi rahoittamalla työtä, osallistumalla määrittelyyn tai auttamalla työkalujen toteutuksessa.

## Suunnitelma

Tavoitteena on tuottaa QGISin ja PostGISin avulla kaavoittajan työkaluja, joilla voi tuottaa kansallisen kaavan tietomallin mukaista kaavaa. Kun peruspaletti on valmis, työkaluja voi käyttää uusien kaavojen tuotantoon tai vaikkapa vanhojen kaavojen digitointiin.
- [Suunnitteludokumentti](https://docs.google.com/document/d/1J_FsiR9pY3MsO3VqV3DKb76bFLolV5VrMO6Lxa2_tlk/edit?usp=sharing) (voi kommentoida avoimesti)
- [QAAVA-esitelmä (2020-11)](https://docs.google.com/presentation/d/1NgBFhvlTGxtXW1giWtwG0q-2zFSZHfSUCE-ZmgkKmOo/edit?usp=sharing)

## QAAVA-työkalu

[QAAVA-lisäosa](https://plugins.qgis.org/plugins/Qaava/) on lisätty QGISin laajennososien viralliselle listalle 20.10.2020 ja löytyy siis nyt QGISin lisäsosalistalta. **Huomaathan, että QAAVA-työkalu tarvitsee taustalle aina PostGIS-tietokannan**. Jos omaa PostGIS-ympäristöä ei ole käytössä, sen saa käyttöön helpoiten hankkimalla asennuksen ja ylläpidon Gispolta (ota yhteyttä info@gispo.fi ja kysy tarjousta).

### Pilttoprojektissa toteutettiin vuoden 2020 aikana seuraavaa:

- Kansallisesta kaavan tietomallista (vuoden 2019 versio) muokattu ja eteenpäin kehitetty avoin referenssitoteutus [asema](asemakaavan-tietomalli)- ja [yleiskaavoille](yleiskaavan-tietomalli) (fyysinen tietomalli PostGIS-ympäristössä)
- [QGIS-lisäosa](https://plugins.qgis.org/plugins/Qaava/): PostGIS-tietokannan alustus, tietojen suodatus, asema- tai yleiskaavan työtilan käyttöönotto
- QGIS työtilojen avulla onnistuu mm. kaavan perustietojen syöttö, kaavakohteen lisäys, kaavakohteen muuttaminen, kaavamääräyksen linkitys
- QGIS-tulostelayoutit: kaavamääräysseloste ja valmiit layoutit(tehty osana QGIS-työtilaa, kaavamääräystekstin liittäminen selitteeseen siirtyy QGISin ominaisuuksien vuoksi)
- [Yleinen asemakaavan kuvaustyyli (SLD/QML) avoimesti jaossa](/asemakaavan-kuvaustekniikka), liitetty mukaan asemakaavan työtilaan
- [Yleinen yleiskaavan kuvaustyyli (SLD/QML) avoimesti jaossa](/yleiskaavan-kuvaustekniikka), liitetty mukaan yleiskaavan työtilaan
- Ohjeistukset

### Jatkokehityslistalla (jos haluat rahoittaa näitä osioita tai kontribuoida näiden toteutukseen, ota yhteyttä sanna@gispo.fi!)
- Kaavatietojen tuominen muista lähteistä (kohteet tietomalliin lisätyökalun avulla, ns. mäppäys)
- Kaavamääräystekstin liittäminen selitteeseen (pitää raportoida ja mahdollisesti kehittää QGISin corea)
- Kaavamääräysten, teemojen ja numeeristen arvojen lisäys usealle kohteelle yhtäaikaa (N:M relaatiot)
- QGIS-profiili kaavoittajalle (valmiit tulostepohjat ja selitteet, soveltuvat kaavoittajan työkalut, yleisesti käytössä olevat kansalliset rajapinnat linkitettynä työtilaan) 
- CAD-tyyppisiä työkalujen kehitys ja paketointi kaavoituskäyttöön
- Ruotsinkielisyyden tuki
- Yhteys kuntien muihin rekisterijärjestelmiin?
- Nimiöintien tuotanto visualisointeihin (erityisesti asemakaavatyössä tärkeää)
- Työprosessien kehitys ja ohjeistuksen parantaminen
- Muutostietojen ja elinkaaren hallinta (tarvitaan ohjeistusta kansallisesti)
- YM:n uusimman tietomallin päivitys (kun valmista)
- INSPIRE-rajapinnan tuotannon ohjeistus ja mahdollinen automatisointi (tarvitsee esim. GeoServerin väliin)
- RYTJ-projektin kautta tulevien tarpeiden huomioiminen

## Pilottiprojektin aikataulu ja työvaiheet vuonna 2020

- 1-5/2020: Määrittelytyö
- 5-6/2020: Asemakaavan tietomallityö
- 6-7/2020: Yleiskaavan tietomallityö
- 6-7/2020: QGIS-työkalu PostGIS-tietokannan alustamiseen
- 8-10/2020: QGIS työtilat (asema- ja yleiskaava) + QAAVA-lisäsosa (sis. suodatuksen, alustuksen, tietokantayhteyksien muokkauksen, työtilan valinnan)
- 11/2020:  QAAVA-projektin valmistuminen sekä ohjeistus ja koulutus mukana oleville toimijoille

## Jatkokehitysprojektin aikataulu (päivittyy)

- xx/2022?: Uusi tietomalli käyttöön, kehitetään tietojen tuontia helpottavia työkaluja

## Aiheeseen liittyviä linkkejä
- https://kaavatietomalli.fi/
- https://ym.fi/ryhti/rytj 
- [Ota-kantaa kyselyssä esitetty käsitemalli 09/2020](https://miro.com/app/board/o9J_knLEl1w=/) 
- [Kaavan tietomalli, YM - Kuntapilotti 06/2019](https://github.com/YM-rakennettu-ymparisto/kaavatietomalli)
- [Kaavan käsitemallin luonnos, YM - TUMA 12/20219](https://tietomallit.suomi.fi/model/tuma/)

## Olemassa olevat QGIS-työkalut editointiin
- QGISissä valmiina olevat editointityökalut
    - Laajennetun digitoinnin työkalut, Digitoinnin lisätyökalupakki
- [QAD](https://github.com/gam17/QAD)

## Materiaalipankki
- [QGIS "kaavoittajan profiili"](qgis-user-profile/qgis_qaava_profiili.md), tuotettu esimerkin vuoksi soveltuvat työkalut kaavoittajalle QGIS työtilaan.
- [Asemakaavan ja yleiskaavan SLD-toteutus Paimiossa](https://github.com/GispoCoding/qaava/tree/master/paimion-asemakaavan-sld) (Paimion kaupunki, Virpi Lindvall)
- [Maakuntakaavan SLD-toteutus](https://www.lounaistieto.fi/wp-content/uploads/2019/12/hame_sld_17_12_2019.zip) (Lounaistieto, HAME-hanke)

## Kokoukset
- 21.4.2020 yhteistyökokous [muistio](https://docs.google.com/document/d/1YvypIpuVYa5igNHz8cdueZe8U6aY09Ge2Vd6SHvd7q0/edit?usp=sharing)
