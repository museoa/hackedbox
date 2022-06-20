$set 1 #BaseDisplay

1 %s:  X Fehler: %s(%d) opcodes %d/%d\n  resource 0x%lx\n
2 %s: Signal %d erhalten\n
3 Shutdown\n
4 Abbruch... dumping core\n
5 BaseDisplay::BaseDisplay: Verbindung mit X Server versagt.\n
6 BaseDisplay::BaseDisplay: kann die Display Verbindung nicht als 'close-on-exec' markieren\n
7 BaseDisplay::eventLoop(): Entfernung des inkorrekten Fensters aus der 'Event Queue'\n

$set 2 #Basemenu

1 Blackbox Menu

$set 3 #Configmenu

1 Einstellungen
2 Fokus Model
3 Fenster Plazierung
4 Image Dithering
5 Fenster beim Verschieben durchsichtig
6 Vollständige Vergrößerung
7 Fokus auf Neue Fenster
8 Fokus auf letztes Fenster bei Arbeitsplatz Wechsel
9 Scroll Lock verhindert Bindings
10 Fokus durch Mausklick
11 Fokus folgt Maus
12 Automatische Erhebung
13 Klick Erhebung
14 Optimale Plazierung (Reihen)
15 Optimale Plazierung (Spalten)
16 Verschobene Plazierung
17 Von links nach rechts
18 Von rechts nach links
19 Von oben nach unten
20 Von unten nach oben

$set 4 #Icon

1 Icons

$set 5 #Image

1 BImage::render_solid: Fehler bei der Erstellung der Pixmap\n
2 BImage::renderXImage: Fehler bei der Erstellung des XImage\n
3 BImage::renderXImage: nicht unterstütztes Visual\n
4 BImage::renderPixmap: Fehler bei der Erstellung der Pixmap\n
5 BImageControl::BImageControl: Ungültige Colormap Größe %d (%d/%d/%d) - verkleinere\n
6 BImageControl::BImageControl: Fehler bei der Anlegung der Colormap\n
7 BImageControl::BImageControl: Fehler bei der Auswertung der Farbe %d/%d/%d\n
8 BImageControl::~BImageControl: Pixmap Cache - Freigabe von %d Pixmaps\n
9 BImageControl::renderImage: Cache zu groß, Ausleerung erfordert\n
10 BImageControl::getColor: Color Parse Fehler: '%s'\n
11 BImageControl::getColor: Color Alloc Fehler: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: Fehler bei der Abfrage des X Servers.\n \
ein anderer Windowmanager benutzt Display %s bereits.\n
2 BScreen::BScreen: Verwaltung von Bildschirm %d mit Visual 0x%lx, Tiefe %d\n
3 BScreen::LoadStyle(): Kann Font '%s' nicht finden\n
4 BScreen::LoadStyle(): Kann Standard Font nicht finden.\n
5 %s: leere Menu Datei\n
6 xterm
7 Neustart
8 Beenden
9 BScreen::parseMenuFile: [exec] Fehler, kein Menu Eintrag und/oder Befehl definiert.\n
10 BScreen::parseMenuFile: [exit] Fehler, kein Menu Eintrag definiert\n
11 BScreen::parseMenuFile: [style] Fehler, kein Menu Eintrag und/oder Datei definiert\n
12 BScreen::parseMenuFile: [config] Fehler, kein Menu Eintrag definiert\n
13 BScreen::parseMenuFile: [include] Fehler, kein Dateiname definiert\n
14 BScreen::parseMenuFile: [include] Fehler, '%s' ist keine normale Datei\n
15 BScreen::parseMenuFile: [submenu] Fehler, kein Menu Eintrag definiert\n
16 BScreen::parseMenuFile: [restart] Fehler, kein Menu Eintrag definiert\n
17 BScreen::parseMenuFile: [reconfig] Fehler, kein Menu Eintrag definiert\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] Fehler, kein Verzeichnis definiert\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] Fehler, '%s' ist kein Verzeichnis\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] Fehler, '%s' existiert nicht\n
21 BScreen::parseMenuFile: [workspaces] Fehler, kein Menu Eintrag definiert\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Window


1 BlackboxWindow::BlackboxWindow: Erstelle 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres versagt\n
3 BlackboxWindow::BlackboxWindow: kann keinen Bildschirm für root window 0x%lx finden\n
4 Ohne Titel
5 BlackboxWindow::mapRequestEvent() von 0x%lx\n
6 BlackboxWindow::reparentNotifyEvent: 0x%lx nun Child des 0x%lx\n

$set 8 #Windowmenu

1 Senden an...
2 Aufrollen
3 Verkleinern
4 Vergrößern
5 In den Vordergrund
6 In den Hintergrund
7 Immer sichtbar
8 Abbrechen
9 Schliessen

$set 9 #Workspace

1 Arbeitsplatz %d

$set 10 #Workspacemenu

1 Arbeitsplätze
2 Neuer Arbeitsplatz
3 Letzten Arbeitsplatz löschen

$set 11 #blackbox

1 Blackbox::Blackbox: keine verwaltbaren Bildschirme gefunden, Abbruch\n
2 Blackbox::process_event: MapRequest von 0x%lx\n

$set 12 #Common

1 Ja
2 Nein

3 Ausrichtung
4 Horizontal
5 Vertikal

6 Immer im Vorgrund

7 Platzierung
8 Oben Links
9 Mitte Links
10 Unten Links
11 Oben Mitte
12 Unten Mitte
13 Oben Rechts
14 Mitte Rechts
15 Unten Rechts

16 Automatisch Verbergen

$set 13 #main

1 Fehler: '-rc' benötigt einen Parameter\n
2 Fehler: '-display' benötigt einen Parameter\n
3 Achtung: konnte die Umgebungsvariable 'DISPLAY' nicht setzen\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\tDisplay Verbindung.\n\
  -rc <string>\t\t\talternative Konfigurationsdatei.\n\
  -version\t\t\tzeige Versionsnummer und Beendung.\n\
  -help\t\t\t\tzeige diesen Hilfstext und Beendung.\n\n
5 Optionen zum Kompilationszeitpunkt:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 14 #bsetroot

1 %s: error: must specify one of: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        Display Verbindung\n\
  -mod <x> <y>             Modula Muster\n\
  -foreground, -fg <color> Modula Vordergrund Farbe\n\
  -background, -bg <color> Modula Hintergrund Farbe\n\n\
  -gradient <texture>      steigernde Beschaffenheit\n\
  -from <color>            Anfangsfarbe\n\
  -to <color>              Endfarbe\n\n\
  -solid <color>           volle Farbe\n\n\
  -help                    Anzeige dieser Hilfe und Beendung\n

