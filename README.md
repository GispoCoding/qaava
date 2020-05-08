# qaava
QGIS toolbox for land use planners in Finland. 

Kaavoittajan työkalut QGIS-lisäosana.

## Yhteistyössä

Toteutus tehdään avoimesti yhteistyössä eri toimijoiden kanssa. Mukana nyt:
- [Paimion kaupunki](https://paim.io/)
- [Kuntaliitto](https://www.kuntaliitto.fi/)
- [Gispo Oy](https://www.gispo.fi/)

## Suunnitelma

Tavoitteena on tuottaa QGISin ja PostGISin avulla kaavoittajalle työkaluja, joilla voi tuottaa kansallisen kaavan tietomallin mukaista kaavaa. Kun peruspaletti on valmis, työkaluja voi käyttää uusien kaavojen tuotantoon tai vaikkapa vanhojen kaavojen digitointiin. 
- [Suunnitteludokumentti](https://docs.google.com/document/d/1J_FsiR9pY3MsO3VqV3DKb76bFLolV5VrMO6Lxa2_tlk/edit?usp=sharing) (voi kommentoida avoimesti)
- [QAAVA esitelmä (2020-04-03)](https://docs.google.com/presentation/d/1NgBFhvlTGxtXW1giWtwG0q-2zFSZHfSUCE-ZmgkKmOo/edit?usp=sharing)

## Alustavia tarpeita

- Kansallisesta kaavan tietomallista avoin referenssitoteutus (fyysinen tietomalli)
- Kaavamääräysluettelo suoraan taulukkomuotoon halutuilla hakukriteereillä
- Valmiit tulostepohjat ja selitteet, selitteissä huomioitava nimiöinti (label)
- Valmis listaus usein käytetyistä lähtötiedoista ja mahdollisuus lisätä omia
- Kaavakohteilla globaalisti uniikki id 
- Versionhallinta ja kohteiden elinkaari (muutostietojen tallennus)
- Mahdollistettava useita nimiöitä / kohde
- Yleinen asema/yleiskaavan kuvaustyyli (SLD/QML) avoimesti jaossa
- CAD-tyyppisiä työkalujen kehitys ja paketointi kaavoituskäyttöön.

## Työvaiheet

1. Määrittely
2. Tietomallityö
3. QGIS työkalukehitys
4. Ohjeistus ja koulutus

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
