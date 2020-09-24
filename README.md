# QAAVA

QGIS toolbox for land use planners in Finland. 

Ota työkalu käyttöön seuraavammalla [näitä ohjeita](ohjeet_qaava_plugin_kaytto.md).

Kaavoittajan työkalut QGIS-lisäosana ([oma repositorio](https://github.com/GispoCoding/qaava-qgis-plugin)).

## Yhteistyössä

Toteutus tehdään avoimesti yhteistyössä eri toimijoiden kanssa. Mukana ovat nyt:
- [Paimion kaupunki](https://paim.io/) (asemakaavan tietomallityö)
- [Kuntaliitto](https://www.kuntaliitto.fi/) (asemakaavan visualisointikirjasto, [lue tiedote](https://www.kuntaliitto.fi/ajankohtaista/2020/avoin-tyylikirjasto-helpottaa-asemakaavojen-digitalisointia))
- [Seinäjoki](https://www.seinajoki.fi/) (yleiskaavan tietomallityö ja työkalu QGISiin kaavan alustusta varten PostGIS-kantaan)
- [Joensuu](https://www.joensuu.fi/) (yleiskaavan tietomallityö ja työkalu QGISiin kaavan alustusta varten PostGIS-kantaan)
- [Espoo](https://www.espoo.fi/fi-FI) (Kaavoittajan QGIS-työkalut)
- [Gispo Oy](https://www.gispo.fi/) (tekninen toteutus)

Kaikki halukkaat voivat tulla mukaan QAAVA-yhteiskehitykseen! Voit osallistua työhön esimerkiksi rahoittamalla työtä, osallistumalla määrittelyyn tai auttamalla työkalujen toteutuksessa.

## Suunnitelma

Tavoitteena on tuottaa QGISin ja PostGISin avulla kaavoittajan työkaluja, joilla voi tuottaa kansallisen kaavan tietomallin mukaista kaavaa. Kun peruspaletti on valmis, työkaluja voi käyttää uusien kaavojen tuotantoon tai vaikkapa vanhojen kaavojen digitointiin.
- [Suunnitteludokumentti](https://docs.google.com/document/d/1J_FsiR9pY3MsO3VqV3DKb76bFLolV5VrMO6Lxa2_tlk/edit?usp=sharing) (voi kommentoida avoimesti)
- [QAAVA-esitelmä (2020-08)](https://docs.google.com/presentation/d/1NgBFhvlTGxtXW1giWtwG0q-2zFSZHfSUCE-ZmgkKmOo/edit?usp=sharing)

## Työkalutarpeet

### Toteutetaan hankkeessa (päivitetty 22.9.2020)

- Kansallisesta kaavan tietomallista avoin referenssitoteutus [asema](asemakaavan-tietomalli)- ja [yleiskaavoille](yleiskaavan-tietomalli) (fyysinen tietomalli PostGIS-ympäristössä), huomioidaan mm. että kaavakohteilla globaalisti uniikki id ja versionhallinta ja kohteiden elinkaari (muutostietojen tallennus)
- QGIS-lisäosa PostGIS-tietokannan alustukseen kaavoituksen käyttöön (ks. lisäosa)
- QGIS-työkalut kaavoituksen käyttöön QGIS työtilan avulla: (kaavan perustietojen syöttö, kaavakohteen lisäys, kaavakohteen muuttaminen, kaavamääräyksen linkitys (ks. lisäosa)
- QGIS-lisäosa kaavoituksen käyttöön: kaavatietojen tuominen muista lähteistä (tulossa)
- QGIS-lisäosa: tietojen suodatus (ks. lisäosa)
- QGIS-tuloste: kaavamääräysseloste ja valmis layout (tulossa)
- [Yleinen asemakaavan kuvaustyyli (SLD/QML) avoimesti jaossa](/asemakaavan-kuvaustekniikka)
- [Yleinen yleiskaavan kuvaustyyli (SLD/QML) avoimesti jaossa](/yleiskaavan-kuvaustekniikka)
- Ohjeistukset

### Toteutetaan hankkeessa, jos rahoitus löytyy (jos haluat rahoittaa näitä osioita tai kontribuoida näiden toteutukseen, ota yhteyttä sanna@gispo.fi!)
- QGIS-profiili kaavoittajalle (valmiit tulostepohjat ja selitteet, soveltuvat kaavoittajan työkalut, yleisesti käytössä olevat kansalliset rajapinnat linkitettynä työtilaan) 
- CAD-tyyppisiä työkalujen kehitys ja paketointi kaavoituskäyttöön
- Yhteys kuntien muihin rekisterijärjestelmiin

### Jatkokehitykseen
- Nimiöintien tuotanto visualisointeihin (erityisesti asemakaavatyössä tärkeää)
- Työprosessien kehitys
- YM:n tietomallin ja RYTJ-projektin kautta tulevien tarpeiden huomioiminen

## Aikataulu ja työvaiheet (päivitetään tarvittaessa)

- 1-5/2020: Määrittelytyö
- 5-6/2020: Asemakaavan tietomallityö
- 6-7/2020: Yleiskaavan tietomallityö
- 6-7/2020: QGIS-työkalu PostGIS-tietokannan alustamiseen
- 8-10/2020: Kaavoittajan työkalut QGISiin
- 11-12/2020: QGIS-profiili ja digitointityökalujen kehitys
- 11-12/2020:  QAAVA-projektin valmistuminen sekä ohjeistus ja koulutus mukana oleville toimijoille

## Aiheeseen liittyviä linkkejä
- [Ota-kantaa kyselyssä estietty käsitemalli 09/2020](https://miro.com/app/board/o9J_knLEl1w=/) 
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
