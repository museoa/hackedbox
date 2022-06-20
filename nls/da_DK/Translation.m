$set 1 #BaseDisplay

1 %s:  X fejl: %s(%d) kode %d/%d\n  resource 0x%lx\n
2 %s: signal %d fanget\n
3 lukker ned\n
4 Avbryder... dumper kernen\n
5 BaseDisplay::BaseDisplay: tilslutning til X server mislykkedes.\n
6 BaseDisplay::BaseDisplay: kunne ikke markere skærmtilslutning som luk-ved-afslut\n
7 BaseDisplay::eventLoop(): fjerner dårligt vindue fra hændelseskøen\n

$set 2 #Basemenu

1 Blackboxmenu

$set 3 #Configmenu

1 Indstillinger
2 Fokus Model
3 Vindueplacering
4 Billede Dithering
5 Uklar vinduesflytning
6 Fuld maximering
7 Fokus nyt vindue
8 Fokus vindue ved skrivebords ændring
9 Deaktiver tastebindinger med Scroll Lock
10 Klik for fokus
11 Dovent fokus
12 Hæv automatisk
13 Klik for at hæve
14 Intelligent placering (Rækker)
15 Intelligent placering (Søjler)
16 Kaskade placering
17 Fra venstre mod højre
18 Fra højre mod venstre
19 Oppefra
20 Nedefra

$set 4 #Icon

1 Ikoner

$set 5 #Image

1 BImage::render_solid: fejl ved skabelse af pixmap\n
2 BImage::renderXImage: fejl ved skabelse af XImage\n
3 BImage::renderXImage: ikke support for farvedybden\n
4 BImage::renderPixmap: fejl ved skabelse af pixmap\n
5 BImageControl::BImageControl: ugyldigt farvekort størrelse %d (%d/%d/%d) - reducing\n
6 BImageControl::BImageControl: fejl ved allokering af farvekort\n
7 BImageControl::BImageControl: fejl ved allokering af farve %d/%d/%d\n
8 BImageControl::~BImageControl: pixmap cache - sletter %d pixmaps\n
9 BImageControl::renderImage: cache er for stor, gennemtvinger rensning\n
10 BImageControl::getColor: farvefejl: '%s'\n
11 BImageControl::getColor: farveallokeringsfejl: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: fejl ved forespørgsel til X server.\n  \
en anden window manager er allerede kørende på display %s.\n
2 BScreen::BScreen: håndterer skærm %d med visuel 0x%lx, farvedybde %d\n
3 BScreen::LoadStyle(): kunne ikke hente font '%s'\n
4 BScreen::LoadStyle(): kunne ikke hente standardfonten.\n
5 %s: tom menu fil\n
6 xterm
7 Genstart
8 Afslut
9 BScreen::parseMenuFile: [exec] fejl, ingen menu etikette og/eller kommando defineret\n
10 BScreen::parseMenuFile: [exit] fejl, ingen menu etikette defineret\n
11 BScreen::parseMenuFile: [style] fejl, ingen menu etikette og/eller filnavn \
defineret\n
12 BScreen::parseMenuFile: [config] fejl, ingen menu etikette defineret\n
13 BScreen::parseMenuFile: [include] fejl, intet filnavn defineret\n
14 BScreen::parseMenuFile: [include] fejl, '%s' er ikke en normal fil\n
15 BScreen::parseMenuFile: [submenu] fejl, ingen menu etikette defineret\n
16 BScreen::parseMenuFile: [restart] fejl, ingen menu etikette defineret\n
17 BScreen::parseMenuFile: [reconfig] fejl, ingen menu etikette defineret\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] fejl, intet katalog defineret\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] fejl, '%s' er ikke et katalog\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] fejl, '%s' eksisterer ikke\n
21 BScreen::parseMenuFile: [workspaces] fejl, ingen menu etikette defineret\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Window


1 BlackboxWindow::BlackboxWindow: skaber 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres fejlede\n
3 BlackboxWindow::BlackboxWindow: kunne ikke finde skærm til hovedvinduet 0x%lx\n
4 Intet navn
5 BlackboxWindow::mapRequestEvent() for 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() for 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: sætter 0x%lx til 0x%lx\n

$set 8 #Windowmenu

1 Send til ...
2 Skygge
3 Iconificeret
4 Maksimer
5 Hæv
6 Sænk
7 Klæbrig
8 Dræb klient
9 Luk

$set 9 #Workspace

1 Skrivebord %d

$set 10 #Workspacemenu

1 Skriveborde
2 Nyt skrivebord
3 Fjern sidste

$set 11 #blackbox

1 Blackbox::Blackbox: ingen håndterbare skærme fundet, afslutter\n
2 Blackbox::process_event: MapRequest for 0x%lx\n

$set 12 #Common

1 Ja
2 Nej

3 Retning
4 Horisontal
5 Vertikal

6 Altid øverst

7 Placering
8 Øverste venstre hjørne
9 Venstre i midten
10 Bunden til venstre
11 Toppen i midten
12 Bunden i midten
13 Øverst til højre
14 Til højre i midten
15 Til højre i bunden

16 Gem automatisk

$set 13 #main

1 fejl: '-rc' kræver et argument\n
2 fjel: '-display' kræver et argument\n
3 advarsel: kunne ikke sætte variablen 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\tbrug skærm tilslutning.\n\
  -rc <string>\t\t\tbrug alternativ resource fil.\n\
  -version\t\t\tvis versionsnummer og afslut.\n\
  -help\t\t\t\tvis denne hjælp og afslut.\n\n
5 Kompileret med:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 14 #bsetroot

1 %s: fejl: specificér en af følgende: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        skærmtilslutning\n\
  -mod <x> <y>             modula mønster\n\
  -foreground, -fg <color> modula foregrundsfarve\n\
  -background, -bg <color> modula baggrundsfarve\n\n\
  -gradient <texture>      gradient tekstur\n\
  -from <color>            gradient start farve\n\
  -to <color>              gradient slut farve\n\n\
  -solid <color>           fast farve\n\n\
  -help                    vis denne hjlp og afslut\n
