# ARP Resolver

## Uvod
U savremenim mrežama, komunikacija između uređaja zasniva se na složenom skupu protokola koji omogućavaju pouzdanu razmjenu podataka. Jedan od osnovnih protokola u okviru mrežnog sloja je ARP (*engl. Address Resolution Protocol*), čija je osnovna funkcija povezivanje logičkih IP (*engl. Internet Protocol*) adresa sa fizičkim MAC (*engl. Media Access Control*) adresama. Bez ovog protokola, uređaji unutar lokalne mreže ne bi mogli efikasno komunicirati, jer bi nedostajala veza između apstraktnog adresiranja i stvarne hardverske identifikacije. ARP se koristi u gotovo svim Ethernet okruženjima i predstavlja temeljnu komponentu mrežne infrastrukture [1].

## ARP protokol i scenariji razmjene poruka
U Ethernet mrežama svaki put kada host ili ruter treba enkapsulirati IP paket u okvir, poznata je IP adresa sljedećeg uređaja, ali ne i njegova MAC adresa. Da bi se uspostavila komunikacija, koristi se ARP, koji omogućava dinamičko povezivanje IP adrese sa odgovarajućom MAC adresom [1].

Prema Odomu [2], ARP protokol se temelji na razmjeni dvije osnovne poruke:
  - **ARP Request** – poruka kojom jedan host na istoj podatkovnoj vezi traži informaciju o hardverskoj adresi drugog hosta. U poruci se obično navodi poznata ciljna IP adresa, dok je polje za ciljnu hardversku adresu postavljeno na nule. Time se od hosta s navedenom IP adresom traži da u svom ARP Reply odgovoru otkrije vlastitu hardversku (Ethernet) adresu.  
  - **ARP Reply** – poruka kojom uređaj odgovara na prethodno primljeni ARP zahtjev. U njoj se nalaze podaci o hardverskoj (Ethernet) adresi i IP adresi samog pošiljatelja, zapisani u poljima za izvorni hardver i izvornu IP adresu.   

U nastavku su prikazani osnovni scenariji rada ARP Resolvera. Njihova svrha je da se kroz grafičke prikaze i objašnjenja prikažu način na koji se modul ponaša u različitim situacijama, od uobičajenih do onih složenijih. Time se dobija jasna slika o pouzdanosti i pravilnom funkcionisanju sistema u mrežnoj komunikaciji.

### Scenario 1 - Uspješna rezolucija
Na slici 1 prikazan je osnovni tok ARP komunikacije, onaj koji se dešava kada rezolucija IP adrese završi uspješno. HOST1 pokreće proces tako što šalje ARP Request u obliku broadcast poruke: “Ko ima IP adresu 192.168.10.4?”. Ova poruka se prenosi kroz LAN i svi hostovi je primaju, ali samo HOST4 prepoznaje da se traži njegova adresa. On zatim odgovara direktno HOST1 u putem ARP Reply poruke, koja je unicast i sadrži njegovu MAC adresu. HOST1 na osnovu tog odgovora upisuje MAC adresu u svoj registar i signalizira da je rezolucija završena. 

<div align="center">
  <img src="Graficki_prikaz_scenarija/scenario1.png" alt="Scenario1" title="Scenario1">
  <p><b>Slika 1:</b> Grafički prikaz uspješne rezolucije</p>
</div>

Na samom početku, sistem se nalazi u reset stanju: signal `reset` je postavljen na logičku jedinicu (`'1'`). Dokle god je `reset` aktivan, svi ostali izlazni signali (`busy`, `done`, `mac_address`) su neaktivni, a modul miruje. Kada `reset` padne na nulu (`'0'`), modul je spreman da pređe u normalan radni tok. U tom trenutku, korisnik inicira rezoluciju aktiviranjem signala `resolve`. Istovremeno se na ulaz `ip_address` postavlja vrijednost IP adrese koju treba razriješiti. Modul reaguje tako što postavlja signal `busy` na jedinicu, čime označava da je proces u toku. Tokom ovog perioda, na izlaznom Avalon-ST interfejsu (`out_data`, `out_valid`, `out_sop`, `out_eop`) generiše se ARP Request poruka.

Nakon slanja zahtjeva, modul prelazi u fazu čekanja. Signal `busy` ostaje aktivan, a ulazni interfejs (`in_data`, `in_valid`, `in_sop`, `in_eop`) se prati kako bi se detektovala dolazna ARP Reply poruka. Kada validan odgovor stigne, modul ga prepoznaje i kao rezultat ne upisuje stvarnu MAC adresu, već aktivira izlazne signale `mac_address` i `done` u trajanju jednog takta. Time se označava da je rezolucija završena i da je odgovor uspješno primljen. Nakon toga, `done` se vraća na nulu, `busy` se deaktivira, i modul se vraća u stanje spremnosti (`IDLE`), čekajući novi zahtjev.

Ovaj scenario je bitan jer pokazuje osnovnu funkcionalnost ARP protokola: kako se IP adrese mapiraju na fizičke MAC adrese i kako se omogućava komunikacija unutar lokalne mreže. Bez ovakve uspješne razmjene, hostovi ne bi mogli slati pakete jedni drugima.


### Scenario 2 - Neuspješna rezolucija 

Slika 2 prikazuje scenario u kojem se opisuje šta se dešava kada se traži IP adresa koja ne postoji u mreži. HOST1 šalje ARP Request kao broadcast, pitajući “Ko ima IP adresu 192.168.10.10?”. Poruka se prenosi kroz LAN i svi hostovi je primaju, ali nijedan od njih nema tu adresu. Zbog toga nema odgovora, nema ARP Reply poruke. HOST1 ostaje u stanju čekanja određeno vrijeme, dok signal `busy` pokazuje da je rezolucija u toku. Kada istekne vrijeme čekanja, modul generiše signal `done`, ali MAC adresa ostaje nevalidna. 

<div align="center">
  <img src="Graficki_prikaz_scenarija/scenario2.png" alt="Scenario2" title="Scenario2">
  <p><b>Slika 2:</b> Grafički prikaz neuspješne rezolucije</p>
</div>

Do trenutka slanja ARP Request poruke tok signala se odvija identično kao u scenariju 1. Razlika nastaje nakon emitovanja zahtjeva, jer u ovom slučaju nijedan uređaj u mreži ne posjeduje traženu IP adresu i povratna poruka ne stiže. Signal `busy` ostaje aktivan (`'1'`), a ulazni interfejs (`in_data`, `in_valid`, `in_sop`, `in_eop`) se prati kako bi se registrovao eventualni ARP Reply. Kada istekne predviđeni vremenski interval, modul zaključuje da rezolucija nije uspjela. Kao oznaku završetka pokušaja, aktivira se signal `done` u trajanju jednog takta (`'1'`). Signal `mac_address` ostaje nepromijenjen i ne daje nikakvu vrijednost, jer nije dobijen odgovor. Nakon toga, `done` se vraća u neaktivno stanje (`'0'`), `'busy'` se gasi (`'0'`), i modul se vraća u početno stanje spremnosti (`'IDLE'`), spreman za novi zahtjev.

Ovaj scenario je važan jer pokazuje kako sistem reaguje na nepostojeće adrese: umjesto da se beskonačno čeka, uvodi se mehanizam timeout-a koji osigurava da se proces završi i da se zna da rezolucija nije uspjela. To je ključno za stabilnost mreže i za sprječavanje blokiranja komunikacije.

### Scenario 3 - Višestruki zahtjevi
Na slici 3 prikazan je treći scenario koji testira ponašanje modula kada se pojavi novi zahtjev dok je prethodni još u toku. HOST1 šalje prvi ARP Request za IP adresu 192.168.10.4, a HOST4 odgovara sa ARP Reply i daje svoju MAC adresu. Dok je modul zauzet obradom tog zahtjeva, pojavi se novi ARP Request 2. Taj drugi zahtjev se ne šalje u mrežu jer modul ne može paralelno obrađivati više rezolucija. On se ili ignoriše ili stavlja u red čekanja, ali u svakom slučaju ne ide prema switch-u dok prvi proces nije završen. Tek kada se prvi zahtjev završi, modul može prihvatiti novi zahtjev. 

<div align="center">
  <img src="Graficki_prikaz_scenarija/scenario3.png" alt="Scenario3" title="Scenario3">
  <p><b>Slika 3:</b> Grafički prikaz višestrukih zahtjeva</p>
</div>

Razlika u ovom scenariju u odnosu na prethodna dva scenarija oslikava se kada tokom obrade prvog zahtjeva pojavi novi `resolve` signal. Pošto je modul već zauzet (`busy='1'`), drugi zahtjev se ne šalje u mrežu. Modul ne može paralelno obrađivati više rezolucija, pa se novi zahtjev ili ignoriše ili stavlja u internu čekalicu, ali u svakom slučaju ne ide prema izlaznom interfejsu dok prvi proces nije završen. Tek kada se prvi zahtjev kompletira i signal `done` bude aktiviran (`'1'`), modul se vraća u stanje spremnosti i može prihvatiti novi `resolve`.

Ovaj scenario pokazuje kako se sistem ponaša u slučaju paralelnih zahtjeva i osigurava da se rezolucije obrađuju sekvencijalno, bez konflikata i bez gubitka podataka. Koristeći ovaj scenario testirana je robusnost FSM-a i potvrđuje da modul pravilno upravlja stanjem zauzetosti.


## Opis ulaznih i izlaznih signala modula

U nastavku su prikazani signali entiteta `arp_resolver` zajedno sa njihovim tipovima i opisima. 

| Tip signala | Naziv signala | Opis |
|-------------|---------------|------|
| Ulaz | `clock : STD_LOGIC` | Standardni sinhroni clock. |
| Ulaz | `reset : STD_LOGIC` | Reset signal. Kada je aktivan, briše interno stanje, vraća FSM u početno stanje i gasi `busy` i `done`. |
| Ulaz | `resolve : STD_LOGIC` | Signal za pokretanje rezolucije. Kada je aktivan u stanju mirovanja, resolver započinje ARP rezoluciju za zadatu IP adresu. |
| Ulaz | `ip_address : STD_LOGIC_VECTOR(31 DOWNTO 0)` | IPv4 adresa koja se traži u mreži. Koristi se za formiranje ARP Request paketa. |
| Izlaz | `done : STD_LOGIC` | Signal završetka. Postaje aktivan kada se rezolucija završi – bilo uspješno ili neuspješno (timeout). |
| Izlaz | `mac_address : STD_LOGIC` | Rezultujuća MAC adresa. Postaje validna kada se primi ispravan ARP Reply. |
| Izlaz | `busy : STD_LOGIC` | Pokazatelj aktivnosti. Aktiviran dok je rezolucija u toku. Sprečava pokretanje novih zahtjeva dok prethodni nije završen. |
| Ulaz | `in_data : STD_LOGIC_VECTOR(7 DOWNTO 0)` | Dolazni bajtovi iz RX interfejsa. Prenose Ethernet okvire (uključujući ARP Reply). |
| Ulaz | `in_valid : STD_LOGIC` | Označava da je trenutni bajt na `in_data` validan. Koristi se zajedno sa `in_ready` za handshake. |
| Ulaz | `in_sop : STD_LOGIC` | Start‑of‑packet signal. Označava početak dolaznog Ethernet okvira. |
| Ulaz | `in_eop : STD_LOGIC` | End‑of‑packet signal. Označava kraj dolaznog Ethernet okvira. |
| Izlaz | `in_ready : STD_LOGIC` | Pokazatelj spremnosti resolvera da primi nove bajtove. Ako je nizak, izvor mora čekati. |
| Izlaz | `out_data : STD_LOGIC_VECTOR(7 DOWNTO 0)` | Odlazni bajtovi prema TX interfejsu. Prenose formirani ARP Request okvir. |
| Izlaz | `out_valid : STD_LOGIC` | Označava da je trenutni bajt na `out_data` validan i može biti prihvaćen ako je `out_ready=1`. |
| Izlaz | `out_sop : STD_LOGIC` | Start‑of‑packet signal za odlazni ARP Request. Označava početak paketa. |
| Izlaz | `out_eop : STD_LOGIC` | End‑of‑packet signal za odlazni ARP Request. Označava kraj paketa. |
| Ulaz | `out_ready : STD_LOGIC` | Pokazatelj spremnosti prijemnika da prihvati bajtove. Resolver šalje podatke samo kada su `out_valid=1` i `out_ready=1`. |



## Dizajn konačnog automata - FSM dijagram

U ovom dijelu predstavljena su stanja FSM-a (*engl. Finite State Machine*) modela za VHDL modul koji implementira ARP rezoluciju MAC adrese. Stanja su definisana na osnovu tri ključna scenarija: uspješna rezolucija, neuspješna rezolucija, te višestruki zahtjevi koji se pojavljuju dok je modul zauzet. 

- **IDLE** - Početno stanje u kojem modul miruje i čeka aktivaciju putem signala `resolve`. U ovom trenutku svi izlazni signali poput `busy` i `done` su neaktivni. Modul ostaje u ovom stanju dok se ne inicira zahtjev za rezoluciju IP adrese.
- **SEND_REQUEST** - Nakon aktivacije, modul prelazi u stanje slanja ARP Request poruke. Kroz Avalon-ST sučelje generiše se niz bajtova koji čine ARP zahtjev, uključujući poznatu IP adresu. Tokom ovog stanja signal `busy` je aktivan, što označava da je modul zauzet obradom zahtjeva.
- **WAIT_REPLY** - Nakon što je ARP zahtjev poslan, modul prelazi u stanje čekanja na odgovor. Putem ulaznog Avalon-ST sučelja prati se dolazni tok podataka, tražeći validnu ARP Reply poruku. Modul ostaje u ovom stanju dok ne primi odgovor ili dok ne istekne definisani vremenski okvir.
- **RESOLUTION_SUCCESS** – Kada je primljena validna ARP Reply poruka koja odgovara traženoj IP adresi, modul prelazi u stanje uspješne rezolucije. Signal `mac_address` se postavlja na logičku `1` u trajanju jednog takta, dok se signal `done` također aktivira na jedan takt kako bi označio završetak procesa. Nakon toga, oba signala se vraćaju na 0, a modul prelazi u stanje `IDLE`.
- **RESOLUTION_FAIL** – Ako odgovor nije primljen u predviđenom vremenu ili je nevalidan, modul prelazi u stanje neuspješne rezolucije. Signal `done` se i dalje aktivira na jedan takt, ali `mac_address` ostaje na logičkoj 0 (nepromijenjena). Nakon toga, modul se vraća u stanje `IDLE`, spreman za novi zahtjev.
- **MULTIPLE_REQUESTS** - Ukoliko se signal `resolve` pojavi dok je modul već zauzet (`busy = '1'`), prelazi se u stanje višestrukih zahtjeva. U ovom stanju modul može ignorisati dodatne zahtjeve, staviti ih u red čekanja ili ih obraditi sekvencijalno, u zavisnosti od implementacije. Nakon obrade, vraća se u stanje IDLE.

Detaljniji opis FSM dijagrama (mac_address tretiran kao vektor zasada, izmijenit ćemo u skladu sa odgovorom na naša pitanja):
 
1. IDLE (Stanje mirovanja)
Ovo je početno stanje u kojem se modul nalazi nakon reset signala ili nakon završene rezolucije. Modul je pasivan i spreman za prihvatanje novog zahtjeva.
busy = '0': Modul nije zauzet i može prihvatiti novi zahtjev za rezoluciju.
done = '0': Nema završenog procesa u ovom taktu.
resolve (ulaz): FSM prati ovaj signal. Dok je '0', ostaje se u stanju IDLE. Kada je resolve = '1' u stanju IDLE, vrijednost sa ulaza ip_address se pohranjuje u interni registar, a FSM prelazi u stanje SEND_REQUEST.
Avalon-ST RX (in_ready): Postavljen na '0'. U stanju mirovanja modul ne očekuje i ne obrađuje dolazne pakete.
Avalon-ST TX (out_valid): Postavljen na '0'. Nema prenosa podataka.

2. SEND_REQUEST (Slanje ARP zahtjeva)
U ovo stanje se prelazi odmah nakon aktivacije signala resolve. Cilj stanja je generisanje i slanje ARP Request paketa putem Avalon-ST TX interfejsa.
busy = '1': Označava da je rezolucija u toku. Novi zahtjevi na resolve ulazu se u ovom stanju ignorišu.
done = '0': Proces još nije završen.
Avalon-ST TX interfejs (out_data, out_valid, out_sop, out_eop):
Generiše se niz bajtova koji formiraju ispravan Ethernet/ARP okvir (Broadcast MAC, ARP Request opcode, Target IP).
out_valid = '1': Signal je aktivan sve dok se podaci šalju.
out_sop = '1': Aktivira se samo uz prvi bajt paketa.
out_eop = '1': Aktivira se samo uz posljednji bajt paketa.
Tranzicija na naredni bajt se dešava samo ako je i out_ready postavljen na '1'.
Prelaz: Nakon uspješnog slanja posljednjeg bajta (out_eop='1' i out_ready='1'), FSM prelazi u stanje WAIT_REPLY.

3. WAIT_REPLY (Čekanje odgovora)
Nakon slanja zahtjeva, modul prelazi u stanje osluškivanja mreže. Ovdje se čeka ARP Reply koji sadrži traženu MAC adresu.
busy = '1': Modul je i dalje zauzet.
Avalon-ST TX: Slanje je završeno, out_valid se postavlja na '0'.
Avalon-ST RX (in_ready): Postavlja se na '1'. Modul signalizira spremnost da primi podatke od mrežnog kontrolera.
Logika prijema:
Kada su in_valid i in_ready aktivni, modul analizira dolazne bajtove (in_data).
Provjerava se: Da li je EtherType = ARP? Da li je Opcode = Reply? Da li se Sender IP poklapa sa traženom ip_address?
Timeout Timer: U ovom stanju aktivan je interni brojač. Ako brojač dostigne definisani limit prije prijema validnog odgovora, prelazi se u stanje RESOLUTION_FAIL.
Prelaz: Ako se detektuje validan ARP Reply, prelazi se u stanje RESOLUTION_SUCCESS.

4. RESOLUTION_SUCCESS (Uspješna rezolucija)
Modul je primio validan odgovor i ekstraktovao MAC adresu pošiljaoca.
mac_address (izlaz): Na izlaz se postavlja validna 48-bitna MAC adresa dobijena iz ARP Reply paketa.
done = '1': Generiše se impuls u trajanju od jednog takta koji signalizira validnost izlaznih podataka.
busy = '0' (ili prelazi u 0 u narednom taktu): Označava kraj operacije.
Interfejsi: in_ready se spušta na '0', out_valid ostaje '0'.
Prelaz: Nakon jednog takta, FSM se vraća u stanje IDLE.

5. RESOLUTION_FAIL (Neuspješna rezolucija / Timeout)
Ukoliko tajmer istekne (timeout) prije prijema validnog odgovora, nastupa ovo stanje.
mac_address (izlaz): Izlaz ostaje nevalidan (npr. sve nule ili prethodna vrijednost, zavisno od implementacije), jer odgovor nije dobijen.
done = '1': Generiše se impuls koji označava završetak pokušaja, ali gornji sloj aplikacije mora znati da (uz nevalidnu adresu) ovo znači neuspjeh.
busy = '0': Oslobađa se modul za nove pokušaje.
Prelaz: Nakon jednog takta, FSM se vraća u stanje IDLE.

6. MULTIPLE_REQUESTS (Višestruki zahtjevi)
Ovo stanje pokriva scenario kada se signal resolve ponovno aktivira dok je modul u stanjima SEND_REQUEST ili WAIT_REPLY.
Ponašanje: S obzirom da je busy = '1', modul ignoriše novi zahtjev kako bi očuvao integritet trenutne transakcije.
Prelaz: Modul ostaje u trenutnom stanju (npr. WAIT_REPLY) sve dok se tekuća rezolucija ne završi signalom done. Tek povratkom u IDLE moguće je obraditi novi zahtjev.




## Modeliranje sklopa u VHDL-u i sinteza u Intel Quartus Prime

## Testno okruženje i verifikacija u ModelSim-u

## Zaključak 

### Smjernice za budući rad



## Literatura
[1] W. Odom, CCNA 200-301 Official Cert Guide, Volume 1, Cisco Press, sve. 1, izd. 1, str. 77-78, 2020.

[2] W. Odom, CCNA 200-301 Official Cert Guide, Volume 2, Cisco Press, sve. 2, izd. 1, str. 496, 2020.

[3] Avalon Interface Specification, Intel Quartus Prime Design Suite 20.1, v2022.01.24

