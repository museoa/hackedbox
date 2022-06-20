$set 1 #BaseDisplay

1 %s:  X-fel: %s(%d) opkod %d/%d\n  resurs 0x%lx\n
2 %s: signal %d fångad\n
3 stänger ner\n
4 avbryter... dumpar kärna\n
5 BaseDisplay::BaseDisplay: anslutning till X server misslyckades.\n
6 BaseDisplay::BaseDisplay: kunde inte markera skärmanslutning som stäng-vid-exekvering\n
7 BaseDisplay::eventLoop(): tar bort dåligt fönster från händelsekön\n

$set 2 #Basemenu

1 Blackboxmeny

$set 3 #Configmenu

1 Inställningar
2 Fokusmodell
3 Fönsterplacering
4 Bilddithering
5 Ogenomskinlig fönsterförflyttning
6 Full maximering
7 Fokus på nya fönster
8 Fokusera fönster vid skrivbordsbyte
9 Gör så att bindningar inte fungerar med Scroll Lock
10 Klicka för fokus
11 Hafsig fokus
12 Höj automatiskt
13 Klicka för att höja
14 Smart placering (Rader)
15 Smart placering (Kolumner)
16 Kaskadplacering
17 Från vänster
18 Från höger
19 Uppifrån
20 Nerifrån

$set 4 #Icon

1 Ikoner

$set 5 #Image

1 BImage::render_solid: fel under skapande av pixmap\n
2 BImage::renderXImage: fel under skapande av XImage\n
3 BImage::renderXImage: ej stöd för färgdjup\n
4 BImage::renderPixmap: fel under skapande av pixmap\n
5 BImageControl::BImageControl: ogiltig färgkarta storlek %d (%d/%d/%d) - reducerar\n
6 BImageControl::BImageControl: fel under allokering av färgkarta\n
7 BImageControl::BImageControl: misslyckades att allokera färg %d/%d/%d\n
8 BImageControl::~BImageControl: pixmap cache - släpper %d pixmappar\n
9 BImageControl::renderImage: stor cache, tvingar upprensning\n
10 BImageControl::getColor: färgfel: '%s'\n
11 BImageControl::getColor: färgallokeringsfel: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: ett fel inträffade under en förfrågan till X servern.\n  \
en annan fönsterhanterare körs redan på skärmen %s.\n
2 BScreen::BScreen: hanterar skärm %d med visuell 0x%lx, färgdjup %d\n
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
14 BScreen::parseMenuFile: [include] fel, '%s' är inte en vanlig fil\n
15 BScreen::parseMenuFile: [submenu] fel, ingen menyetikett definierad\n
16 BScreen::parseMenuFile: [restart] fel, ingen menyetikett definiera\n
17 BScreen::parseMenuFile: [reconfig] fel, ingen menyetikett definierad\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] fel, ingen katalog definierad\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] fel, '%s' är inte en katalog\n
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
9 Ändra namn på skrivbordet
10 Verktygslistens placering

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: skapar 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributes misslyckades\n
3 BlackboxWindow::BlackboxWindow: kan inte hitta skärm för rootfönster 0x%lx\n
4 Inget namn
5 BlackboxWindow::mapRequestEvent() för 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() för 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: återför 0x%lx till 0x%lx\n

$set 10 #Windowmenu

1 Skicka till...
2 Skugga
3 Ikonifiera
4 Maximera
5 Höj
6 Sänk
7 Klibbig
8 Döda klient
9 Stäng

$set 11 #Workspace

1 Skrivbord %d

$set 12 #Workspacemenu

1 Skrivbord
2 Nytt skrivbord
3 Ta bort sista

$set 13 #blackbox

1 Blackbox::Blackbox: inga hanterbara skärmar hittades, avslutar\n
2 Blackbox::process_event: MapRequest för 0x%lx\n

$set 14 #Common

1 Ja
2 Nej

3 Riktning
4 Horisontell
5 Vertikal

6 Alltid överst

7 Placering
8 Uppe till vänster
9 Mitten till vänster
10 Nere till vänster
11 Uppe i mitten
12 Nere i mitten
13 Uppe till höger
14 Mitten till höger
15 Nere till höger

16 Göm automatiskt

$set 15 #main

1 fel: '-rc' kräver ett argument\n
2 fel: '-display' kräver ett argument\n
3 varning: kunde inte sätta variabeln 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\tanvänd skärmanslutning.\n\
  -rc <string>\t\t\tanvänd alternativ resursfil.\n\
  -version\t\t\tvisa version och avsluta.\n\
  -help\t\t\t\tvisa denna hjälptext och avsluta.\n\n
5 Kompilerad med:\n\
  Avlusning\t\t\t%s\n\
  Form:\t\t\t\t%s\n\
  8bpp ordnad dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: fel: måste specifiera en av: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        skärmanslutning\n\
  -mod <x> <y>             modulamönster\n\
  -foreground, -fg <color> förgrundsfärg för modulamönster\n\
  -background, -bg <color> bakgrundsfärg för modulamönster\n\n\
  -gradient <texture>      texturlutning\n\
  -from <color>            startfärg\n\
  -to <color>              slutfärg\n\n\
  -solid <color>           solid färg\n\n\
  -help                    visa denna hjälptext och avsluta\n

