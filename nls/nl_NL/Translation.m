$set 1 #BaseDisplay

1 %s:  X fout: %s(%d) opcodes %d/%d\n  resource 0x%lx\n
2 %s: signaal %d gekregen\n
3 bezig af te sluiten\n
4 afgebroken... core bestand gedumpt\n
5 BaseDisplay::BaseDisplay: verbinding met X server mislukt\n
6 BaseDisplay::BaseDisplay: kan display verbinding niet markeren als 'close-on-exec'\n
7 BaseDisplay::eventLoop(): verwijder 'bad window' van gebeurtenis wachtrij\n

$set 2 #Basemenu

1 Blackbox menu

$set 3 #Configmenu

1 Instellingen
2 Focus van vensters
3 Plaatsing van vensters
4 Kleurbenadering
5 Vensters slepen met inhoud
6 Volledig maximaliseren
7 Focus nieuwe vensters
8 Focus venster bij werkblad wissel
9 Scroll Lock schakelt bindingen uit
10 Focus met muisklik
11 Focus volgt muispijl
12 Automatisch naar voorgrond
13 Naar voorgrond met muisklik
14 Optimale plaatsing (rijen)
15 Optimale plaatsing (kolommen)
16 Trapsgewijs
17 Van links naar rechts
18 Van rechts naar links
19 Van boven naar beneden
20 Van beneden naar boven

$set 4 #Icon

1 Iconen

$set 5 #Image

1 BImage::render_solid: kan pixmap niet aanmaken\n
2 BImage::renderXImage: kan XImage niet aanmaken\n
3 BImage::renderXImage: niet ondersteunde visual\n
4 BImage::renderPixmap: kan pixmap niet aanmaken\n
5 BImageControl::BImageControl: ongeldige grootte kleurenmap %d (%d/%d/%d) - verkleind\n
6 BImageControl::BImageControl: kan geen kleurenmap aanmaken\n
7 BImageControl::BImageControl: kan kleur %d/%d/%d niet aanmaken\n
8 BImageControl::~BImageControl: pixmap cache - %d pixmaps verwijderd\n
9 BImageControl::renderImage: cache is te groot, leeggemaakt\n
10 BImageControl::getColor: fout bij lezen kleur: '%s'\n
11 BImageControl::getColor: fout bij aanmaken kleur: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: er is een fout opgetreden bij het verbinden met de X server.\n  \
er werkt al een andere window manager op display %s.\n
2 BScreen::BScreen: manager op scherm %d met visual 0x%lx, kleurdiepte %d\n
3 BScreen::LoadStyle(): kan lettertype '%s' niet laden\n
4 BScreen::LoadStyle(): kan standaardlettertype niet laden\n
5 %s: leeg menu bestand\n
6 xterm
7 Herstarten
8 Afsluiten
9 BScreen::parseMenuFile: [exec] fout, geen label en/of commando aangegeven\n
10 BScreen::parseMenuFile: [exit] fout, geen label aangegeven\n
11 BScreen::parseMenuFile: [style] fout, geen label en/of bestandsnaam aangegeven\n
12 BScreen::parseMenuFile: [config] fout, geen label aangegeven\n
13 BScreen::parseMenuFile: [include] fout, geen bestandsnaam aangegeven\n
14 BScreen::parseMenuFile: [include] fout, '%s' is geen leesbaar bestand\n
15 BScreen::parseMenuFile: [submenu] fout, geen label aangegeven\n
16 BScreen::parseMenuFile: [restart] fout, geen label aangegeven\n
17 BScreen::parseMenuFile: [reconfig] fout, geen label aangegeven\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] fout, geen directory aangegeven\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] fout, '%s' is geen directory\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] fout, '%s' bestaat niet\n
21 BScreen::parseMenuFile: [workspaces] fout, geen label aangegeven\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 B: %4d x H: %4d


$set 7 #Slit

1 Slit
2 Richting
3 Plaats

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Werkbalk
9 Wijzig naam van huidig werkblad
10 Plaats van werkbalk

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: maak window aan 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres mislukt\n
3 BlackboxWindow::BlackboxWindow: kan scherm voor root window 0x%lx niet vinden\n
4 Zonder titel
5 BlackboxWindow::mapRequestEvent() voor 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() voor 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reparent 0x%lx naar 0x%lx\n

$set 10 #Windowmenu

1 Verplaatsen naar ...
2 Alleen titel
3 Minimaliseren
4 Maximaliseren
5 Voorgrond
6 Achtergrond
7 Altijd zichtbaar
8 Afbreken
9 Sluiten

$set 11 #Workspace

1 Werkblad %d

$set 12 #Workspacemenu

1 Werkbladen
2 Nieuw werkblad
3 Verwijder laatste werkblad

$set 13 #blackbox

1 Blackbox::Blackbox: geen schermen gevonden om te managen, afgesloten\n
2 Blackbox::process_event: MapRequest voor 0x%lx\n

$set 14 #Common

1 Ja
2 Nee

3 Richting
4 Horizontaal
5 Vertikaal

6 Altijd op voorgrond

7 Plaatsing
8 Linksboven
9 Links
10 Linksonder
11 Middenboven
12 Middenonder
13 Rechtsboven
14 Rechts
15 Rechtsonder

16 Automatisch verbergen

$set 15 #main

1 fout: '-rc' heeft een argument nodig (bestandsnaam)\n
2 fout: '-display' heeft een argument nodig (displaynaam)\n
3 waarschuwing: kan omgevingsvariabele 'DISPLAY' niet instellen\n
4 Blackbox %s: (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <displaynaam>   gebruik aangegeven display.\n\
  -rc <bestandsnaam>       gebruik alternatief resource bestand.\n\
  -version                 toon versie en stop.\n\
  -help                    toon deze hulp tekst en stop.\n\n
5 Gecompileerd met instellingen:\n\
  Debugging:               %s\n\
  Shape:                   %s\n\
  8bpp Ordered Dithering:  %s\n\n

$set 16 #bsetroot

1 %s: fout: een van -solid, -mod, -gradient moet aangegeven worden\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <displaynaam>   display verbinding\n\
  -mod <x> <y>             modula patroon\n\
  -foreground, -fg <kleur> modula voorgrondkleur\n\
  -background, -bg <kleur> modula achtergrondkleur\n\n\
  -gradient <textuur>      gradiënt textuur\n\
  -from <kleur>            gradiënt beginkleur\n\
  -to <kleur>              gradiënt eindkleur\n\n\
  -solid <kleur>           effen kleur\n\n\
  -help                    toon deze hulp tekst en stop\n

