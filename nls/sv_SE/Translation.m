$set 1 #BaseDisplay

1 %s:  X-fel: %s(%d) opkod %d/%d\n  resurs 0x%lx\n
2 %s: signal %d f�ngad\n
3 st�nger ner\n
4 avbryter... dumpar k�rna\n
5 BaseDisplay::BaseDisplay: anslutning till X server misslyckades.\n
6 BaseDisplay::BaseDisplay: kunde inte markera sk�rmanslutning som st�ng-vid-exekvering\n
7 BaseDisplay::eventLoop(): tar bort d�ligt f�nster fr�n h�ndelsek�n\n

$set 2 #Basemenu

1 Blackboxmeny

$set 3 #Configmenu

1 Inst�llningar
2 Fokusmodell
3 F�nsterplacering
4 Bilddithering
5 Ogenomskinlig f�nsterf�rflyttning
6 Full maximering
7 Fokus p� nya f�nster
8 Fokusera f�nster vid skrivbordsbyte
9 G�r s� att bindningar inte fungerar med Scroll Lock
10 Klicka f�r fokus
11 Hafsig fokus
12 H�j automatiskt
13 Klicka f�r att h�ja
14 Smart placering (Rader)
15 Smart placering (Kolumner)
16 Kaskadplacering
17 Fr�n v�nster
18 Fr�n h�ger
19 Uppifr�n
20 Nerifr�n

$set 4 #Icon

1 Ikoner

$set 5 #Image

1 BImage::render_solid: fel under skapande av pixmap\n
2 BImage::renderXImage: fel under skapande av XImage\n
3 BImage::renderXImage: ej st�d f�r f�rgdjup\n
4 BImage::renderPixmap: fel under skapande av pixmap\n
5 BImageControl::BImageControl: ogiltig f�rgkarta storlek %d (%d/%d/%d) - reducerar\n
6 BImageControl::BImageControl: fel under allokering av f�rgkarta\n
7 BImageControl::BImageControl: misslyckades att allokera f�rg %d/%d/%d\n
8 BImageControl::~BImageControl: pixmap cache - sl�pper %d pixmappar\n
9 BImageControl::renderImage: stor cache, tvingar upprensning\n
10 BImageControl::getColor: f�rgfel: '%s'\n
11 BImageControl::getColor: f�rgallokeringsfel: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: ett fel intr�ffade under en f�rfr�gan till X servern.\n  \
en annan f�nsterhanterare k�rs redan p� sk�rmen %s.\n
2 BScreen::BScreen: hanterar sk�rm %d med visuell 0x%lx, f�rgdjup %d\n
3 BScreen::LoadStyle(): kunde inte ladda font '%s'\n
4 BScreen::LoadStyle(): kunde inte ladda standardfont.\n
5 %s: tom menyfil\n
6 xterm
7 Starta om
8 Avsluta
9 BScreen::parseMenuFile: [exec] fel, ingen menyetikett och/eller kommando definierat\n
10 BScreen::parseMenuFile: [exit] fel, ingen menyetikett definierad\n
11 BScreen::parseMenuFile: [style] fel, ingen menyetikett och/eller filnamn definierat\n
12 BScreen::parseMenuFile: [config] fel, ingen menyetikett definierad\n
13 BScreen::parseMenuFile: [include] fel, inget filnamn definierat\n
14 BScreen::parseMenuFile: [include] fel, '%s' �r inte en vanlig fil\n
15 BScreen::parseMenuFile: [submenu] fel, ingen menyetikett definierad\n
16 BScreen::parseMenuFile: [restart] fel, ingen menyetikett definiera\n
17 BScreen::parseMenuFile: [reconfig] fel, ingen menyetikett definierad\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] fel, ingen katalog definierad\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] fel, '%s' �r inte en katalog\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] fel, '%s' existerar inte\n
21 BScreen::parseMenuFile: [workspaces] fel, ingen menyetikett definierad\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Slit

1 Slit
2 Slitriktning
3 Slitplacering

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Verktygslist
9 �ndra namn p� skrivbordet
10 Verktygslistens placering

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: skapar 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributes misslyckades\n
3 BlackboxWindow::BlackboxWindow: kan inte hitta sk�rm f�r rootf�nster 0x%lx\n
4 Inget namn
5 BlackboxWindow::mapRequestEvent() f�r 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() f�r 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: �terf�r 0x%lx till 0x%lx\n

$set 10 #Windowmenu

1 Skicka till...
2 Skugga
3 Ikonifiera
4 Maximera
5 H�j
6 S�nk
7 Klibbig
8 D�da klient
9 St�ng

$set 11 #Workspace

1 Skrivbord %d

$set 12 #Workspacemenu

1 Skrivbord
2 Nytt skrivbord
3 Ta bort sista

$set 13 #blackbox

1 Blackbox::Blackbox: inga hanterbara sk�rmar hittades, avslutar\n
2 Blackbox::process_event: MapRequest f�r 0x%lx\n

$set 14 #Common

1 Ja
2 Nej

3 Riktning
4 Horisontell
5 Vertikal

6 Alltid �verst

7 Placering
8 Uppe till v�nster
9 Mitten till v�nster
10 Nere till v�nster
11 Uppe i mitten
12 Nere i mitten
13 Uppe till h�ger
14 Mitten till h�ger
15 Nere till h�ger

16 G�m automatiskt

$set 15 #main

1 fel: '-rc' kr�ver ett argument\n
2 fel: '-display' kr�ver ett argument\n
3 varning: kunde inte s�tta variabeln 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\tanv�nd sk�rmanslutning.\n\
  -rc <string>\t\t\tanv�nd alternativ resursfil.\n\
  -version\t\t\tvisa version och avsluta.\n\
  -help\t\t\t\tvisa denna hj�lptext och avsluta.\n\n
5 Kompilerad med:\n\
  Avlusning\t\t\t%s\n\
  Form:\t\t\t\t%s\n\
  8bpp ordnad dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: fel: m�ste specifiera en av: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        sk�rmanslutning\n\
  -mod <x> <y>             modulam�nster\n\
  -foreground, -fg <color> f�rgrundsf�rg f�r modulam�nster\n\
  -background, -bg <color> bakgrundsf�rg f�r modulam�nster\n\n\
  -gradient <texture>      texturlutning\n\
  -from <color>            startf�rg\n\
  -to <color>              slutf�rg\n\n\
  -solid <color>           solid f�rg\n\n\
  -help                    visa denna hj�lptext och avsluta\n

