# ARP Resolver

## Uvod
U savremenim mrežama, komunikacija između uređaja zasniva se na složenom skupu protokola koji omogućavaju pouzdanu razmjenu podataka. Jedan od osnovnih protokola u okviru mrežnog sloja je ARP (*engl. Address Resolution Protocol*), čija je osnovna funkcija povezivanje logičkih IP (*engl. Internet Protocol*) adresa sa fizičkim MAC (*engl. Media Access Control*) adresama. Bez ovog protokola, uređaji unutar lokalne mreže ne bi mogli efikasno komunicirati, jer bi nedostajala veza između apstraktnog adresiranja i stvarne hardverske identifikacije. ARP se koristi u gotovo svim Ethernet okruženjima i predstavlja temeljnu komponentu mrežne infrastrukture [1].

## ARP protokol i scenariji razmjene poruka

U Ethernet mrežama svaki put kada korisnik ili router treba enkapsulirati IP paket u okvir, poznata je IP adresa sljedećeg uređaja, ali ne i njegova MAC adresa. Da bi se uspostavila komunikacija, koristi se ARP, koji omogućava dinamičko povezivanje IP adrese sa odgovarajućom MAC adresom [1].

Na taj način ARP postaje sastavni dio procesa enkapsulacije, jer se njegova poruka prenosi upravo unutar Ethernet okvira. Ethernet okvir predstavlja standardizirani oblik prijenosa podataka na sloju podatkovne veze (*engl. Data Link Layer*), gdje se informacije organizuju u jasno definisana polja kako bi komunikacija između uređaja bila pouzdana i dosljedna. Njegova struktura obuhvata zaglavlje sa adresom izvora i odredišta, te završnu kontrolnu vrijednost koja osigurava provjeru ispravnosti prenesenih podataka. Na samom početku okvira nalazi se adresa odredišta, koja zauzima šest bajtova i označava fizičku adresu uređaja kojem je okvir namijenjen. Slijedi adresa izvora, također veličine šest bajtova, koja identificira uređaj pošiljaoca. Treće polje zaglavlja je Type, veličine dva bajta, čija vrijednost određuje protokol koji se prenosi unutar okvira. Kada je vrijednost ovog polja jednaka 0x8060, okvir sadrži poruku protokola ARP [2].

Nakon zaglavlja smješten je segment koji nosi stvarni sadržaj ARP komunikacije. Ovaj dio može predstavljati ARP Request ili ARP Reply, ovisno o tome da li uređaj traži razrješenje IP adrese u odgovarajuću MAC adresu ili odgovara na takav zahtjev. ARP poruka zauzima dvadeset i osam bajtova i sadrži ključne informacije poput tipa operacije, IP i MAC adrese pošiljaoca te IP i MAC adrese ciljnog uređaja. Na taj način, ARP omogućava dinamičko povezivanje logičkih i fizičkih adresa unutar lokalne mreže, čime se osigurava pravilno usmjeravanje paketa [2].

Kako bi okvir zadovoljio minimalnu dužinu propisanu Ethernet standardom, u njega se dodaje padding, odnosno niz dodatnih bajtova koji nemaju semantičku vrijednost. Padding služi isključivo tehničkoj svrsi – popunjavanju okvira do minimalne veličine od 64 bajta, čime se osigurava konzistentnost prijenosa na fizičkom sloju. Na samom kraju okvira nalazi se CRC (*engl. Cyclic Redundancy Check*), polje veličine četiri bajta. CRC predstavlja kontrolnu sumu koja se računa nad cijelim okvirom i omogućava prijemnom uređaju da provjeri integritet primljenih podataka. Ukoliko se CRC vrijednost ne podudara s očekivanom, okvir se odbacuje kao neispravan, čime se osigurava pouzdanost komunikacije [2]. Prethodno opisani okvir, predstavljen je na slici 1:

<div align="center">
  <img src="Graficki_prikaz/ARP_headerII.png" alt="ARP_packet" title="ARP_packet">
  <p><b>Slika 1:</b> Struktura Ethernet okvira [2]</p>
</div>


Prema Odomu [3], ARP protokol se temelji na razmjeni dvije osnovne poruke:
  - **ARP Request** – poruka kojom jedan uređaj na istoj podatkovnoj vezi traži informaciju o hardverskoj adresi drugog hosta. U poruci se obično navodi poznata ciljna IP adresa, dok je polje za ciljnu hardversku adresu postavljeno na nule. Time se od uređaja s navedenom IP adresom traži da u svom ARP Reply odgovoru otkrije vlastitu hardversku adresu.  
  - **ARP Reply** – poruka kojom uređaj odgovara na prethodno primljeni ARP zahtjev. U njoj se nalaze podaci o hardverskoj  adresi i IP adresi samog pošiljatelja, zapisani u poljima za izvorni hardver i izvornu IP adresu.   

ARP koristi vrlo jednostavnu strukturu poruke koja može da sadrži zahtjev ili odgovor za rezoluciju adrese. Ove poruke se prenose na sloju podatkovne veze kao sirovi sadržaj paketa. Kada se koristi Ethernet, vrijednost 0x0806 u polju EtherType označava da je riječ o ARP okviru. Dužina ARP poruke zavisi od formata adresa koje se koriste na mrežnom i link sloju. U nastavku prikazana je slika 2 na kojoj je predstavljen jedan ARP paket, te su navedene funkcionalnosti svih polja koja sačinjavaju taj paket. Vrijednosti ARP parametara su standardizovane i održava ih IANA (*engl. Internet Assigned Numbers Authority*) [4].

<div align="center">
  <img src="Graficki_prikaz/ARP_packet.png" alt="ARP_packet" title="ARP_packet">
  <p><b>Slika 2:</b> Struktura ARP poruke [4]</p>
</div>


- **Hardware Type (HTYPE)**: Polje određuje tip protokola mrežne veze. U ovom primjeru, vrijednost 1 označava Ethernet. Dužina polja je 16 bita.
- **Protocol Type (PTYPE)**: Ovo polje određuje internetwork protokol za koji je ARP zahtjev namijenjen. Za IPv4, vrijednost je 0x0800. Dozvoljene vrijednosti PTYPE dijele isti prostor numerisanja kao i EtherType. Dužina polja je 16 bita.
- **Hardware Length (HLEN)**: Polje predstavlja dužinu (u oktetima) hardverske adrese. Za Ethernet, dužina adrese je 6. Dužina polja je 8 bita. 
- **Protocol Length (PLEN)**: Dužina (u oktetima) internetwork adrese. Internetwork protokol je određen u PTYPE. U ovom primjeru: IPv4 adresa ima dužinu 4. Dužina polja je 8 bita. 
- **Operation (OPER)**: Određuje operaciju koju pošiljalac izvodi: 1 za zahtjev, 2 za odgovor.  Dužina polja je 16 bita.
- **Sender Hardware Address (SHA)**: MAC adresa pošiljaoca. U ARP zahtjevu ovo polje označava adresu hosta koji šalje zahtjev. U ARP odgovoru ovo polje označava adresu uređaja koji je tražen. Dužina polja je 48 bita. 
- **Sender Protocol Address (SPA)**: IP adresa pošiljaoca. Dužina polja je 32 bita.
- **Target Hardware Address (THA)**: MAC adresa namijenjenog primaoca. U ARP zahtjevu ovo polje se zanemaruje. U ARP odgovoru ovo polje označava adresu uređaja koji je inicirao ARP zahtjev. Dužina polja je 48 bita. 
- **Target Protocol Address (TPA)**: IP adresa namijenjenog primaoca. Dužina polja je 32 bita [4].

### Scenarij 1 – Uspješna rezolucija adrese

U lokalnim Ethernet mrežama, kada jedan uređaj želi poslati IP paket drugom uređaju, neophodno je da poznaje njegovu MAC adresu. Ukoliko ta informacija nije dostupna u lokalnoj ARP tabeli, pokreće se proces dinamičke rezolucije adrese putem ARP protokola. Prikazani scenario ilustrira upravo taj tok komunikacije između dva uređaja – ARP Resolvera i ARP Respondera – u kojem se uspješno ostvaruje povezivanje IP adrese sa odgovarajućom MAC adresom.

Proces započinje slanjem ARP Request poruke od strane Resolvera. Ova poruka se enkapsulira unutar Ethernet okvira, čije zaglavlje sadrži broadcast adresu (FF:FF:FF:FF:FF:FF) kao odredišnu, čime se osigurava da poruka stigne do svih uređaja u lokalnoj mreži. Izvorna adresa u zaglavlju je MAC adresa Resolvera, dok polje tipa (Type) nosi vrijednost 0x0806, što označava da se prenosi ARP poruka.

U ARP dijelu okvira nalaze se standardizovana polja: HTYPE (Ethernet), PTYPE (IPv4), HLEN i PLEN (dužine MAC i IP adresa), te OPER sa vrijednošću 1, što označava zahtjev. Polja SHA i SPA sadrže MAC i IP adresu pošiljaoca, dok je THA postavljeno na nule, jer MAC adresa ciljnog uređaja još nije poznata. Polje TPA sadrži IP adresu uređaja čija se MAC adresa traži – u ovom slučaju Respondera.

Nakon prijema ARP Requesta, Responder analizira sadržaj poruke. Ključna provjera odnosi se na polje TPA: ukoliko se njegova vrijednost podudara sa lokalnom IP adresom Respondera, uređaj prepoznaje da je upravo on traženi cilj. U tom trenutku generiše ARP Reply poruku, koja se šalje direktno Resolveru putem unicast Ethernet okvira. U zaglavlju okvira sada se kao odredišna adresa navodi MAC adresa Resolvera, dok izvorna ostaje MAC adresa Respondera. Polje tipa ostaje 0x0806, jer se i dalje prenosi ARP sadržaj.

U ARP dijelu odgovora, polje OPER dobija vrijednost 2, što označava odgovor. Polja SHA i SPA sada sadrže MAC i IP adresu Respondera, dok se u THA i TPA upisuju vrijednosti koje su prethodno došle od Resolvera. Na taj način se uspostavlja veza između IP adrese cilja i njegove fizičke adrese, čime se omogućava daljnja komunikacija na mrežnom sloju.

Prikazani sekvencijski dijagram ilustrira tok: ARP Request se šalje kao broadcast, dok se ARP Reply vraća kao unicast. Iako dijagram prikazuje samo dva učesnika – Resolvera i Respondera – implicitno se podrazumijeva da broadcast poruka može biti primljena od strane svih uređaja u mreži, ali samo onaj čija IP adresa odgovara vrijednosti u TPA polju odgovara na zahtjev.

Ovaj scenario, koji je prikazan na slici 3, predstavlja idealan tok ARP razmjene, bez grešaka u sadržaju poruke, što rezultira uspješnom rezolucijom adrese i ažuriranjem lokalne ARP tabele kod Resolvera.

<div align="center">
  <img src="Graficki_prikaz/Graficki_prikaz_scenario1.png" alt="Scenario1" title="Scenario1">
  <p><b>Slika 3:</b> Sekvencijski dijagram za scenario uspješne rezolucije </p>
</div>


### Scenarij 2 – Odbacivanje paketa

U ovom scenariju prikazana je situacija u kojoj ARP komunikacija ne rezultira uspješnom rezolucijom adrese, iako je formalno posmatrano razmjena poruka izvršena. Proces započinje identično kao u prethodnom slučaju: ARP Resolver šalje ARP Request poruku u kojoj traži MAC adresu uređaja čija je IP adresa poznata. Ethernet okvir se formira sa broadcast odredišnom adresom (FF:FF:FF:FF:FF:FF), dok se u ARP dijelu poruke navode standardizovana polja – tipovi protokola, dužine adresa, operacija (OPER = 1), te adrese pošiljaoca i cilja. Polje THA ostaje prazno, jer MAC adresa cilja još nije poznata.

Međutim, za razliku od prethodnog scenarija, odgovor koji dolazi od Respondera ne zadovoljava očekivanja Resolvera. Iako je okvir tehnički ispravno formiran – sa unicast odredišnom adresom, validnim zaglavljem i CRC kontrolom – sadržaj ARP poruke sadrži nepravilnosti. Ključna razlika u ovom slučaju jeste vrijednost polja OPER, koja iznosi 3, umjesto standardne vrijednosti 2 koja označava ARP Reply. Ova razlika signalizira da se ne radi o validnom ARP odgovoru, te Resolver odbacuje primljeni paket.

Sekvencijski dijagram prikazuje tok: nakon što se ARP Request pošalje, Responder vraća poruku koja formalno izgleda kao odgovor, ali zbog odstupanja u sadržaju – bilo u operaciji, adresama ili drugim poljima – Resolver ne izvršava rezoluciju. Paket se ignoriše, a MAC adresa cilja ostaje nepoznata. Ovakav tok komunikacije naglašava važnost validacije sadržaja ARP poruke, jer se ne prihvataju odgovori koji odstupaju od standarda, bez obzira na to što okvir na fizičkom sloju može biti tehnički ispravan. Opisani dijagram prikazan je na slici 4: 

<div align="center">
  <img src="Graficki_prikaz/Graficki_prikaz_scenario2.png" alt="Scenario2" title="Scenario2">
  <p><b>Slika 4:</b> Sekvencijski dijagram za scenario neuspješne rezolucije </p>
</div>




## Opis ulaznih i izlaznih signala modula

Signali koji se koriste tokom izrade zadanog modula, predstavljeni su u nastavku: 

| IN/OUT | Tip                | Signal       | Opis                                                                |
|-----------|---------------------|--------------|-----------------------------------------------------------------------------|
| IN        | STD_LOGIC           | clock        | Clock signal koji pokreće sekvencijalnu logiku.                              |
| IN        | STD_LOGIC           | reset        | Asinhroni reset, vraća modul u početno stanje.                              |
| IN        | STD_LOGIC           | resolve      | Impuls kojim se inicira ARP rezolucija za zadati `ip_address`. Aktivan kada Resolver šalje ARP zahtjev i čeka ARP odgovor. |
| IN        | STD_LOGIC_VECTOR(31 downto 0) | ip_address   | IP adresa za koju se traži MAC adresa.                                      |
| OUT       | STD_LOGIC           | done         | Impuls (1 takt) označava da je rezolucija završena i da je `mac_address` validan. |
| OUT       | STD_LOGIC_VECTOR(47 downto 0) | mac_address  | Rezultat rezolucije – MAC adresa dobijena iz ARP reply paketa.              |
| OUT       | STD_LOGIC           | busy         | Pokazuje da je rezolucija u toku; postaje aktivan (1) nakon `out_sop=1`, a vraća se na 0 nakon `done=1` (za uspješnu rezoluciju) ili nakon `done=0 & in_eop=1` (za neuspješnu rezoluciju). |
| IN        | STD_LOGIC_VECTOR(7 downto 0)  | in_data      | Bajt‑stream ARP reply paketa (Ethernet + ARP polja).                        |
| IN        | STD_LOGIC           | in_valid     | Označava da je bajt na `in_data` važeći.                                    |
| IN        | STD_LOGIC           | in_sop       | Start of packet – aktivan na prvom bajtu ARP reply paketa.                  |
| IN        | STD_LOGIC           | in_eop       | End of packet – aktivan na zadnjem bajtu ARP reply paketa.                  |
| OUT       | STD_LOGIC           | in_ready     | Izlaz iz modula koji pokazuje da li je modul spreman da primi sljedeći bajt.     |
| OUT       | STD_LOGIC_VECTOR(7 downto 0)  | out_data     | Bajt‑stream ARP request paketa (sva polja).                      |
| OUT       | STD_LOGIC           | out_valid    | Označava da je bajt na `out_data` važeći.                                   |
| OUT       | STD_LOGIC           | out_sop      | Start of packet – aktivan na prvom bajtu ARP request paketa.                |
| OUT       | STD_LOGIC           | out_eop      | End of packet – aktivan na zadnjem bajtu ARP request paketa.                |
| IN        | STD_LOGIC           | out_ready    | Dolazi od prijemnika; pokazuje da li može da primi sljedeći bajt.            |

Za opis signala korišteni su opisi Avalon-ST interface-a [5].


### Scenario 1 - uspješna rezolucija

U ovom scenariju dijagram valnih oblika prikazuje preciznu dinamiku signala tokom procesa razrješavanja IP adrese u MAC adresu. Na početku, aktivacija signala reset dovodi sistem u početno stanje, a njegovo isključivanje omogućava da logika modula postane spremna za rad. U tom trenutku, ulazni signal `ip_address` dobija vrijednost 192.168.1.10, te signal `resolve` dobija vrijednost 1 i drži je sve dok traje slanje upita i čekanje odgovora. Nakon inicijalizacije, modul započinje formiranje izlaznog okvira. Signal `out_valid` označava da su podaci na `out_data` ispravni i spremni za prijenos. Istovremeno, signal `out_ready` potvrđuje da prijemna strana može prihvatiti podatke. Tek kada su oba signala aktivna, bajtovi okvira se sukcesivno prenose, što se jasno vidi kroz niz vrijednosti na `out_data`.

Tokom prijenosa, `out_data` nosi cjelokupnu strukturu ARP Requesta: od Ethernet zaglavlja, preko ARP polja, pa sve do tehničkih dodataka poput paddinga i CRC‑a. Svaka grupa bajtova ima svoju funkciju, a njihovo pojavljivanje u vremenu sinhronizovano je sa signalom `clock`, čime se potvrđuje deterministički karakter procesa.

Nakon toga, signal `in_valid` označava da je na ulazu prisutan okvir, dok `in_ready` potvrđuje da modul može prihvatiti podatke. Tokom ove faze, bajtovi ARP Replya se sukcesivno pojavljuju na `in_data`, a modul ih interpretira u skladu sa očekivanim formatom. Kada se potvrdi da je odgovor validan, izlazni signal `mac_address` dobija vrijednost fizičke adrese ciljnog uređaja. Time se proces rezolucije završava, a IP adresa 192.168.1.10 se uspješno povezuje sa odgovarajućom MAC adresom. Grafički prikaz opisanog scenarija predstavljen je na slici 5:

<div align="center">
  <img src="Wavedrom/wavedrom_s1.png" alt="Scenario1" title="Scenario1">
  <p><b>Slika 5:</b> Wavedrom za uspješnu rezoluciju </p>
</div>


### Scenario 2 - Neuspješna rezolucija 

Dijagram valnih oblika, u ovom primjeru, pokazuje kako sistem inicira razrješavanje IP adrese, ali ne dobija povratni ARP odgovor od ciljnog uređaja. Početna sekvenca ostaje nepromijenjena: aktivacijom signala `reset` sistem se inicijalizuje, a nakon njegovog deaktiviranja modul postaje spreman za rad. Ulazni signal `ip_address` dobija vrijednost 192.168.1.10, čime se pokreće generisanje ARP Request okvira. Slanje okvira odvija se kroz sinhronizovanu aktivaciju signala `out_valid` i `out_ready`, dok se niz bajtova prenosi preko `out_data`. Vrijednosti koje se pojavljuju predstavljaju kompletan ARP Request, uključujući Ethernet zaglavlje, ARP polja i tehničke dodatke. Tok prijenosa je precizno usklađen sa signalom `clock`.

Nakon uspješnog slanja ARP Request okvira, modul prelazi u stanje čekanja na odgovor, što se vidi po tome što signal `busy` ostaje aktivan (1) do kraja prikazanog perioda. U ovom scenariju, međutim, ciljni uređaj ne šalje ARP Reply. Iako se na ulaznim signalima (in_data, in_valid, in_sop, in_eop) pojavljuje okvir koji izgleda kao potencijalni ARP paket (počinje MAC-om Resolvera kao destinacijom, sadrži EtherType 0x0806 i slične vrijednosti), ključno je da je ARP operacijski kod (OPER) postavljen na 0x0003 – što nije standardna vrijednost ni za Request (0x0001) ni za Reply (0x0002). Ova neispravna vrijednost onemogućava modul da prepozna okvir kao validan ARP Reply.

Zbog toga modul ne izvlači MAC adresu, signal `mac_address` ostaje nepromijenjen (prikazan kao stalna vrijednost, ali bez validnog rezultata), a signal `done` nikada ne generiše pozitivan pulse – ostaje na 0 do kraja simulacije. Ovaj scenario predstavlja tipičan slučaj neuspješne ARP rezolucije, gdje ciljni uređaj ili ne odgovara ili šalje neispravan/neprepoznatljiv paket, te modul ne može uspješno razriješiti traženu IP adresu. Opisani scenarij prikazan je na slici 6:

<div align="center">
  <img src="Wavedrom/wavedrom_s2.png" alt="Scenario2" title="Scenario2">
  <p><b>Slika 6:</b> Wavedrom za neuspješnu rezoluciju </p>
</div>



## Dizajn konačnog automata – FSM dijagram

Konačni automat (*engl. Finite State Machine – FSM*) je matematički model koji opisuje ponašanje sistema kroz konačan broj stanja, gdje se sistem u svakom trenutku nalazi u tačno jednom stanju. Prelazi između tih stanja definišu se skupom ulaznih uslova, a svaka promjena stanja predstavlja reakciju sistema na spoljašnje signale. FSM se koristi za modeliranje sekvencijalne logike u digitalnim sklopovima, softverskim kontrolerima i komunikacijskim protokolima, jer omogućava precizno upravljanje tokom izvršavanja i determinističko ponašanje sistema [6].


Modul ARP_Resolver strukturiran je kao deterministički FSM koji upravlja procesom razmjene ARP okvira u mrežnom podsistemu. FSM je organizovan kroz jasno definisana stanja i prijelaze, čime se modelira cjelokupan tok obrade: od inicijalnog mirovanja, preko slanja zahtjeva, čekanja odgovora i prijema okvira, pa sve do završetka ili odbacivanja nevalidnih podataka. Na priloženom dijagramu na slici 7 prikazana su sva relevantna stanja (IDLE, SENDING REQUEST, WAITING FOR REPLY, RECEIVING REPLY, DISCARDING FRAME, DONE) i prijelazi koji određuju dinamiku rada modula. Ovakva organizacija omogućava da se svaki ARP zahtjev i odgovor obradi u kontrolisanom slijedu, uz jasnu separaciju faza i predvidiv povratak sistema u početno stanje nakon završetka procesa.

<div align="center">
  <img src="FSM/fsm.png" alt="FSM dijagram" title="FSM dijagram ARP Resolvera">
  <p><b>Slika 7:</b> FSM dijagram stanja ARP Resolvera</p>
</div>


**IDLE** predstavlja početnu i završnu tačku rada automata, u kojoj modul miruje i ne obrađuje okvire. FSM ostaje u ovom stanju sve dok ne primi zahtjev za rješavanje ARP upita, što se signalizira aktivacijom ulaznog signala `resolve`. Istovremeno, modul provjerava spremnost interface-a putem ulaznog signala `out_ready`. Tek kada su oba uslova ispunjena, automata napušta stanje mirovanja i prelazi u fazu slanja zahtjeva (SENDING REQUEST). 

**SENDING REQUEST** označava fazu u kojoj modul aktivno generiše i šalje ARP zahtjev prema mrežnom interface-u Dok se nalazi u ovom stanju, modul kontinuirano šalje okvir sve dok zahtjev ostaje aktivan (`resolve = 1`). Kada se završi slanje i interfejs više nije spreman (`out_ready = 0`), FSM napušta ovo stanje i prelazi u WAITING FOR REPLY. Na taj način, SENDING REQUEST obuhvata cijelu fazu formiranja ARP zahtjeva, osiguravajući da se okvir u potpunosti prenese prije nego što sistem pređe u narednu fazu čekanja odgovora.

**WAITING FOR REPLY** označava fazu u kojoj modul, nakon što je poslao ARP zahtjev, prelazi u pasivno čekanje odgovora.  Prelaz u naredno stanje nastaje tek kada se pojavi početak dolaznog okvira, što se signalizira kombinacijom `in_sop = 1` i `in_valid = 1`. Na taj način FSM osigurava da prijem ne započne prerano, već isključivo kada okvir zaista stigne. 

**RECEIVING REPLY** predstavlja fazu u kojoj modul aktivno prihvata dolazni ARP odgovor. Dok okvir traje, FSM ostaje u ovom stanju sve dok se ne detektuje kraj (`in_eop = 0` uz `in_valid = 1`), čime se osigurava da se svi podaci uredno prime. Kada se pojavi završetak okvira (`in_eop = 1`), sistem provjerava da li je obrada uspješno završena. Ako je izlazni signal `done = 1`, prelazi se u završno stanje DONE, dok u slučaju `done = 0` automata ide u DISCARDING FRAME.

**DISCARDING FRAME** predstavlja fazu u kojoj modul kontrolisano odbacuje okvir koji je primljen, ali nije validan ili nije uspješno obrađen. Tokom ove faze okvir se zanemaruje, bez daljnje obrade ili upisa rezultata. FSM ostaje u stanju odbacivanja sve dok se modul ne oslobodi zauzetosti, što se signalizira kroz `busy = 0`. Nakon toga sistem se vraća u početno stanje IDLE, spreman da prihvati novi zahtjev. 

**DONE** označava fazu rada automata u kojoj se potvrđuje da je prijem i obrada ARP odgovora uspješno završena. U ovom trenutku modul signalizira završetak obrade kroz izlazni signal done, čime se jasno označava da je rezultat spreman za daljnju upotrebu. FSM ostaje u stanju DONE dok se modul ne oslobodi zauzetosti, što se reflektuje kroz ulazni uslov `busy = 0`. Nakon toga sistem se vraća u početno stanje IDLE, spreman da prihvati novi zahtjev.






## Modeliranje sklopa u VHDL-u i sinteza u Intel Quartus Prime

## Testno okruženje i verifikacija u ModelSim-u

## Zaključak 

### Smjernice za budući rad



## Literatura
[1] W. Odom, CCNA 200-301 Official Cert Guide, Volume 1, Cisco Press, sve. 1, izd. 1, str. 77-78, 2020.

[2] "What is ARP? Address Resolution Protocol" (bez dat.). Dostupno na: https://nexgent.com/what-is-arp-address-resolution-protocol/ [pristupano 22.12.2025.]

[3] W. Odom, CCNA 200-301 Official Cert Guide, Volume 2, Cisco Press, sve. 2, izd. 1, str. 496, 2020.

[4] "Address Resolution Protocol" (bez dat.). u Wikipedia, the Free Encyclopedia. Dostupno: https://en.wikipedia.org/wiki/Address_Resolution_Protocol [pristupano 09.12.2025.]

[5] Avalon Interface Specification, Intel Quartus Prime Design Suite 20.1, v2022.01.24

[6] "Finite-state machine" (bez dat.). u Wikipedia, the Free Encyclopedia. Dostupno: https://en.wikipedia.org/wiki/Finite-state_machine [pristupano 03.01.2026.]

