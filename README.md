# qaava
QGIS toolbox for land use planners in Finland. 

Kaavoittajan työkalut QGIS-lisäosana.

## Yhteistyössä

Toteutus tehdään avoimesti yhteistyössä eri toimijoiden kanssa. Mukana nyt:
- [Paimion kaupunki](https://paim.io/) (asemakaavan tietomallityö)
- [Kuntaliitto](https://www.kuntaliitto.fi/) (asemakaavan visualisointikirjasto, [lue tiedote](https://www.kuntaliitto.fi/ajankohtaista/2020/avoin-tyylikirjasto-helpottaa-asemakaavojen-digitalisointia))
- [Gispo Oy](https://www.gispo.fi/) (tekninen toteutus)
- Mukana voivat olla kaikki halukkaat! Niin rahoittamassa, määrittelemässä kuin tekemässäkin!

## Suunnitelma

Tavoitteena on tuottaa QGISin ja PostGISin avulla kaavoittajalle työkaluja, joilla voi tuottaa kansallisen kaavan tietomallin mukaista kaavaa. Kun peruspaletti on valmis, työkaluja voi käyttää uusien kaavojen tuotantoon tai vaikkapa vanhojen kaavojen digitointiin. 
- [Suunnitteludokumentti](https://docs.google.com/document/d/1J_FsiR9pY3MsO3VqV3DKb76bFLolV5VrMO6Lxa2_tlk/edit?usp=sharing) (voi kommentoida avoimesti)
- [QAAVA esitelmä (2020-04-03)](https://docs.google.com/presentation/d/1NgBFhvlTGxtXW1giWtwG0q-2zFSZHfSUCE-ZmgkKmOo/edit?usp=sharing)

## Työkalutarpeita

### Toteutetetaan hankkeessa näillä näkymin

- Kansallisesta kaavan tietomallista avoin referenssitoteutus asema- ja yleiskaavoille (fyysinen tietomalli PostGIS-ympäristössä), huomioidaan mm. että kaavakohteilla globaalisti uniikki id ja versionhallinta ja kohteiden elinkaari (muutostietojen tallennus)
- QGIS-työkalu PostGIS-tietokannan alustukseen kaavoituksen käyttöön
- QGIS-työkalut kaavoituksen käyttöön (kaavan perustietojen syöttö, kaavakohteen lisäys, kaavakohteen muuttaminen, kaavamääräyksen linkitys, kaavatietojen tuominen muista lähteistä, tietojen suodatus, kuten kaavamääräysluettelo suoraan taulukkomuotoon halutuilla hakukriteereillä)
- Yleinen asemakaavan kuvaustyyli (SLD/QML) avoimesti jaossa
- Ohjeistusten tuotanto

### Toteutetaan hankkeessa, jos rahoitus löytyy (jos haluat rahoittaa näitä osioita tai kontribuoida näiden toteutukseen, ota yhteyttä sanna@gispo.fi!)
- QGIS-profiili kaavoittajalle (valmiit tulostepohjat ja selitteet, soveltuvat kaavoittajan työkalut, yleisesti käytössä olevat kansalliset rajapinnat linkitettynä työtilaan)
- Yleinen yleiskaavan kuvaustyyli (SLD/QML) avoimesti jaossa
- CAD-tyyppisiä työkalujen kehitys ja paketointi kaavoituskäyttöön.
- Yhteys kuntien muihin rekisterijärjestelmiin

## Työvaiheet ja aikataulu (päivittyy tarpeen mukaan)

1. Määrittely kevät 2020
2. Asemakaavan tietomallityö 05-06/2020
3. Yleiskaavan tietomallityö 06-07/2020
4. QGIS-työkalu PostGIS-tietokannan alustamiseen 06-07/2020
5. Kaavoittajan työkalut QGISiin 08-10/2020
6. QAAVA-projektin valmistuminen 11-12/2020
7. Ohjeistus ja koulutus mukana oleville toimijoille 11-12/2020

## Aiheeseen liittyviä linkkejä
- [Kaavan tietomalli, YM - Kuntapilotti 06/2019](https://github.com/YM-rakennettu-ymparisto/kaavatietomalli)
- [Kaavan käsitemallin luonnos, YM - TUMA 12/20219](https://tietomallit.suomi.fi/model/tuma/)

## QGIS työkalut editointiin
- QGISissä valmiina olevat editointityökalut, mm: Laajennetun digitoinnin työkalut, Digitoinnin lisätyökalupakki
- [QAD](https://github.com/gam17/QAD)

## Materiaalipankki
- [QGIS "kaavoittajan profiili"](qgis-user-profile/qgis_qaava_profiili.md), tuotettu esimerkin vuoksi soveltuvat työkalut kaavoittajalle QGIS työtilaan.
- [Asemakaavan ja yleiskaavan SLD-toteutus](https://github.com/GispoCoding/qaava/tree/master/paimion-asemakaavan-sld) (Paimion kaupunki, Virpi Lindvall)
- [Maakuntakaavan SLD-toteutus](https://www.lounaistieto.fi/wp-content/uploads/2019/12/hame_sld_17_12_2019.zip) (Lounaistieto, HAME-hanke)

## Kokoukset
- 21.4.2020 yhteistyöpalaveri [muistio](https://docs.google.com/document/d/1YvypIpuVYa5igNHz8cdueZe8U6aY09Ge2Vd6SHvd7q0/edit?usp=sharing)
