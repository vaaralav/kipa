# Kipa

Kipa- / Tupa2-ohjelmisto, jota käytetään partiotaitokilpailujen tuloslaskentaan.

Asennusohjeet: https://sites.google.com/site/kisapalvelukipa/kaeytae-ja-asenna

Vanhat sivustot:

* https://sites.google.com/site/kisapalvelukipa/
* http://sourceforge.net/projects/tupa2/

# Kehitysympäristö

## Esivaatimukset

* Docker

tai

* Python 2
* Pip
* Virtualenv

## Alkuun pääseminen (Docker)

```bash
git clone git@github.com:vaaralav/kipa.git
cd kipa
# Plain docker
docker build -t kipa/dev . # Tee Docker image palvelimesta
docker run -d -p 8000:8000 kipa/dev # Käynnistä palvelin
# Docker Compose: PostgreSQL + Basic Auth + portissa 80
cp passwords.example passwords # testuser testpassword käyttäjätunnukset
docker-compose up -d --build
```

Basic Auth käyttäjien ja salasanojen lisääminen
```shell
htpasswd -cb passwords käyttäjätunnus salasana
```

### Vaihtoehtoisesti ilman Dockeria paikallisella pythonilla

```bash
git clone git@github.com:vaaralav/kipa.git
cd kipa/web
virtualenv .venv # Luo virtualenv
. .venv/bin/activate # Ota virtualenv käyttöön
pip install -r requirements.txt # Asenna tarvittavat python riippuvuudet
python manage.py runserver 0.0.0.0:8000 # Käynnistä palvelin
```

Avaa KIPA selaimessa osoitteessa http://localhost:8000/kipa.

# Lisenssi

Tämä

ohjelma on vapaa; tätä ohjelmaa on sallittu levittää edelleen ja muuttaa GNU yleisen lisenssin (GPL-lisenssin) ehtojen mukaan sellaisina kuin Free Software Foundation on ne julkaissut Lisenssin version 3 mukaisesti.

Tätä ohjelmaa levitetään siinä toivossa, että se olisi hyödyllinen, mutta ilman mitään takuuta; ilman edes hiljaista takuuta kaupallisesti hyväksyttävästä laadusta tai soveltuvuudesta tiettyyn tarkoitukseen. Katso GPL-lisenssistä lisää yksityiskohtia.

Tämän ohjelman mukana pitäisi tulla kopio GPL-lisenssistä; jos näin ei ole, kirjoita osoitteeseen Free Software Foundation Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

```

```
