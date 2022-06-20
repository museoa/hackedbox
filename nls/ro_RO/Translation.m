$set 1 #BaseDisplay

1 %s:  eroare de X: %s(%d) opcode %d/%d\n  resursa 0x%lx\n
2 %s: am primit semnalul %d\n
3 terminare normala\n
4 terminare fortata... am scris fisierul core\n
5 BaseDisplay::BaseDisplay: conexiunea la serverul X a esuat.\n
6 BaseDisplay::BaseDisplay: nu am putut pune marcajul close-on-exec pe conexiunea la ecran\n
7 BaseDisplay::eventLoop(): sterg fereastra gresita din coada de evenimente\n

$set 2 #Basemenu

1 Meniu principal

$set 3 #Configmenu

1 Configuratie
2 Tehnica de focalizare
3 Asezarea ferestrelor
4 Intretesere imagini
5 Ferestrele se misca opac
6 Marirea maxima ocupa tot ecranul
7 Focalizare ferestre noi
8 Focalizare la schimbarea zonei de lucru
9 Scroll Lock dezactiveaza combinatiile de taste
10 Focalizare prin click
11 Focalizare prin cursor
12 Ridicare automata
13 Ridicare prin click
14 Aranjare automata (pe rinduri)
15 Aranjare automata (pe coloane)
16 Aranjare in cascada
17 De la stanga la dreapta
18 De la dreapta la stanga
19 De sus in jos
20 De jos in sus

$set 4 #Icon

1 Pictograme

$set 5 #Image

1 BImage::render_solid: eroare de creare imagine\n
2 BImage::renderXImage: eroare de creare XImage\n
3 BImage::renderXImage: mod vizual incompatibil\n
4 BImage::renderPixmap: eroare de creare imagine\n
5 BImageControl::BImageControl: harta culorilor are marimea incorecta %d (%d/%d/%d) - reducere automata\n
6 BImageControl::BImageControl: eroare de alocare a hartii culorilor\n
7 BImageControl::BImageControl: nu am putut aloca culoarea %d/%d/%d\n
8 BImageControl::~BImageControl: memorie intermediara imagini - eliberare spatiu pentru %d imagini\n
9 BImageControl::renderImage: memoria intermediara e prea mare, reducere fortata\n
10 BImageControl::getColor: eroare de procesare a culorii: '%s'\n
11 BImageControl::getColor: eroare de alocare a culorii: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: a aparut o eroare in cursul interogarii serverului X.\n  \
Exista deja un manager de ferestre pe ecranul %s.\n
2 BScreen::BScreen: administrez ecranul %d folosind modul vizual 0x%lx, adincime %d\n
3 BScreen::LoadStyle(): nu am putut incarca fontul '%s'\n
4 BScreen::LoadStyle(): nu am putut incarca fontul implicit.\n
5 %s: fisierul de configurare a meniului nu contine nimic\n
6 xterm
7 Repornire
8 Iesire
9 BScreen::parseMenuFile: [exec] eroare, nu s-a completat eticheta si/sau comanda asociata\n
10 BScreen::parseMenuFile: [exit] eroare, nu s-a completat eticheta\n
11 BScreen::parseMenuFile: [style] eroare, nu s-a completat eticheta si/sau comanda asociata\n
12 BScreen::parseMenuFile: [config] eroare, nu s-a completat eticheta\n
13 BScreen::parseMenuFile: [include] eroare, nu s-a precizat nici un nume de fisier\n
14 BScreen::parseMenuFile: [include] eroare, '%s' nu este un fisier obisnuit\n
15 BScreen::parseMenuFile: [submenu] eroare, nu s-a completat eticheta\n
16 BScreen::parseMenuFile: [restart] eroare, nu s-a completat eticheta\n
17 BScreen::parseMenuFile: [reconfig] eroare, nu s-a completat eticheta\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] eroare, nu s-a precizat nici un director\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] error, '%s' nu este un director\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] error, '%s' nu exista\n
21 BScreen::parseMenuFile: [workspaces] eroare, nu s-a completat eticheta\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Slit

1 Fanta de incarcare
2 Orientarea fantei
3 Pozitia fantei

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Bara utilitara
9 Schimba numele zonei de lucru curente
10 Pozitia barei utilitare

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: creare 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres a esuat\n
3 BlackboxWindow::BlackboxWindow: nu gasesc un ecran pentru fereastra de baza 0x%lx\n
4 Fara nume
5 BlackboxWindow::mapRequestEvent() pentru 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() pentru 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reasociere 0x%lx la 0x%lx\n

$set 10 #Windowmenu

1 Trimite in ...
2 Micsorare
3 Ascundere
4 Marire maxima
5 Ridicare
6 Coborare
7 Persistenta
8 Terminare fortata
9 Inchidere

$set 11 #Workspace

1 Zona %d

$set 12 #Workspacemenu

1 Zone de lucru
2 Zona noua de lucru
3 Sterge ultima zona

$set 13 #blackbox

1 Blackbox::Blackbox: nu este disponibil nici un ecran, rularea se intrerupe\n
2 Blackbox::process_event: MapRequest pentru 0x%lx\n

$set 14 #Common

1 Da
2 Nu

3 Directie
4 Orizontal
5 Vertical

6 Intotdeauna deasupra

7 Pozitie
8 Stanga sus
9 Stanga centru
10 Stanga jos
11 Mijloc sus
12 Mijloc jos
13 Dreapta sus
14 Dreapta centru
15 Dreapta jos

16 Ascundere automata

$set 15 #main

1 eroare: '-rc' necesita inca un parametru\n
2 eroare: '-display' necesita inca un parametru\n
3 atentionare: nu am putut crea variabila de mediu 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <sir>\t\tconexiunea la ecran.\n\
  -rc <sir>\t\t\tfisier de configurare.\n\
  -version\t\t\tafiseaza versiunea.\n\
  -help\t\t\t\tafiseaza acest mesaj.\n\n
5 Optiuni stabilite la compilare:\n\
  Depanare\t\t\t%s\n\
  Forma:\t\t\t%s\n\
  Intretesere ordonata pentru 8bpp:\t%s\n\n

$set 16 #bsetroot

1 %s: eroare: trebuie specificata cel putin una dintre optiunile:\n\
             -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <sir>           conexiunea la ecran\n\
  -mod <x> <y>             model\n\
  -foreground, -fg <color> culoare plan apropiat pentru model\n\
  -background, -bg <color> culoare plan indepartat pentru model\n\n\
  -gradient <texture>      degrade\n\
  -from <color>            culoare de inceput pentru degrade\n\
  -to <color>              culoare de sfirsit pentru degrade\n\n\
  -solid <color>           culoare uniforma\n\n\
  -help                    acest mesaj\n
