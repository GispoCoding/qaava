# QGIS-profiili kaavoittajalle

Valmiiksi luotu työtila, jossa on valmiina nykyiset (03/2020) työkalut, jotka soveltuvat kaavoittajan käyttöön QGISissä. Tämä profiili täydentyy mahdollisesti QAAVA-projektin aikana. Ei siis sisällä vielä seuraavia toivottuja asioita: valmiit tulostepohjat, visualisointikirjastot, selitteet, kaavoittajan työkalut. 

Sisältää nyt (03/2020):
 - Kansallisia lähtötietorajapintoja esimerkkinä
 - Digitoinnin työkaluja
 - Poistettu näkyvistä muutamia työkaluja
 - Suurennettu työkalujen kokoa

## Ohjeet QGIS-profiilin käyttöönottoon

QGISiin voi luoda erilaisia räätälöityjä käyttäjäprofiileja eri käyttötarkoituksia varten. QGIS-asennukseesi tehdyt käyttäjäprofiilit voit tarkistaa avaamalla QGISin ja menemällä valikkoon _"Asetukset/Käyttäjäprofiilit"_ (englanninkielisessä käyttöliittymässä _"Settings/User Profiles"_). Oletusasennuksessa luodaan ainakin _default_-niminen käyttäjäprofiili.

Kutakin käyttäjäprofiilia vastaa kansio tiedostojärjestelmässä ja Qaava-käyttäjäprofiilin saa otettua käyttöön omaan QGIS-asennukseen seuraavasti: 

1. Selvitä missä sijaitsee QGIS-asennuksesi käyttäjäprofiilien _profiles_-kansio. Tähän on eri tapoja:

   - Avaa QGISin valikko _"Asetukset/Käyttäjäprofiilit/Avaa aktiivisen profiilin hakemisto"_ (englanninkielisessä käyttöliittymässä _"Settings/User Profiles/Open Active Profile Folder"_). Nyt _profiles_-kansio löytyy tämän yläkansiona.

   - QgsApplication.qgisSettingsDirPath-komentoa hyväksikäyttämällä konsolista.

   - Voit katsoa löytyykö se yleisesti käytetystä oletushakemistopolusta (suhteessa kotihakemistoon, esim. Windowsissa C:\Users\USER): AppData\Roaming\QGIS\QGIS3\profiles (Windows), .local/share/QGIS/QGIS3/profiles/ (Linux), Library/Application Support/QGIS/QGIS3/profiles (Mac OS X).

2. Luo _profiles_-kansioon uusi alakansio nimettynä profiilin nimellä, esimerkiksi _qaava_profiili_.

3. Kopioi tämän Github-repositorion kansiosta _qaava/qgis-user-profile/qaava_profiili/QGIS/_ tiedostot _QGISCUSTOMIZATION3.ini_ ja _QGIS3.ini_ äsken luomaasi profiilikansioon.

   - Tämän tehtyäsi QGISin valikosta  _"Asetukset/Käyttäjäprofiilit"_ löytyy profiili nimeltä _qaava_profiili_, joka valitsemalla aukeaa uusi QGIS-käyttöliittymäikkuna tämän profiilin asetuksilla. Kunkin QGIS-käyttöliittymän aktiivisen profiilin nimi näkyy yläpalkissa projektinimen jälkeen hakasuluissa. 

   - **Huom!** Tehtyäsi ja käytettyäsi profiilia, QGIS luo profiilikansioon automaattisesti joitakin uusia tiedostoja ja kansioita liittyen esimerkiksi projektien asetuksiin.
