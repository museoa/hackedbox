$set 1 #BaseDisplay

1 %s:  X hiba: %s(%d) opcodes %d/%d\n  resource 0x%lx\n
2 %s: %d szignált kapott\n
3 Leállás\n
4 Programhiba... dumping core\n
5 BaseDisplay::BaseDisplay: nem sikerült kapcsolódni az X szerverhez.\n
6 BaseDisplay::BaseDisplay: az összeköttetés a képernyõvel nem 'close-on-exit'\n
7 BaseDisplay::eventLoop(): helytelen ablak kivétele a 'Event Queue'-ból\n

$set 2 #Basemenu

1 Blackbox Menü

$set 3 #Configmenu

1 Beállítások
2 Fókusz modell
3 Ablakok elhelyezése
4 Image dithering
5 Átlátszó ablakok mozgatás közben
6 Teljesképernyõs maximalizálás
7 Új ablak kapja a fókuszt
8 Munkaasztal váltása után fókusz az utolsó ablakon
9 Scroll Lock-nál nem figyeli a billentyûzetet
10 Kattintás fókuszhoz
11 A fókusz követi az egeret
12 Autómatikus elõreugró ablakok
13 Kattintással az elõtérbe
14 Optimális ablakrendezés (sorok)
15 Optimális ablakrendezés (oszlopok)
16 Egymásracsúsztatott elrendezés
17 Jobbról balra
18 Balról jobbra
19 Fentrõl lefele
20 Lentrõl felfele

$set 4 #Icon

1 Ikonok

$set 5 #Image

1 BImage::render_solid: hiba a kép készítésekor\n
2 BImage::renderXImage: hiba az XImage készítésekor\n
3 BImage::renderXImage: nem támogatott visual\n
4 BImage::renderPixmap: hiba a pixmap készítésekor\n
5 BImageControl::BImageControl: helytelen colormap méret %d (%d/%d/%d) - csökkentés\n
6 BImageControl::BImageControl: hiba a colormap lefoglalásánál\n
7 BImageControl::BImageControl: hiba a %d/%d/%d szín lefoglalásánál\n
8 BImageControl::~BImageControl: pixmap cache - %d pixmaps felszabadítása\n
9 BImageControl::renderImage: a cache túl nagy, ürítés\n
10 BImageControl::getColor: hiba a szín elemzésénél: '%s'\n
11 BImageControl::getColor: hiba a szín lefoglalásánál: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: hiba az X szerver kérdezésénél.\n \
Egy másik ablakkezelõ már használja a %s képernyõt.\n
2 BScreen::BScreen: átvette az irányítást a %d képernyõn. visual: 0x%lx, színmélység: %d\n
3 BScreen::LoadStyle(): nem lehet a '%s' betûtípust betölteni\n
4 BScreen::LoadStyle(): az alapértelmezett betûtípus betöltése nem lehetséges.\n
5 %s: üres menü file\n
6 terminál
7 Újraindítás
8 Kilépés
9 BScreen::parseMenuFile: [exec] Hiba, nincs menü címke és/vagy parancs meghatározva\n
10 BScreen::parseMenuFile: [exit] Hiba, nincs menü címke meghatározva\n
11 BScreen::parseMenuFile: [style] Hiba, nincs menü címke és/vagy file-név meghatározva\n
12 BScreen::parseMenuFile: [config] Hiba, nincs menü címke meghatározva\n
13 BScreen::parseMenuFile: [include] Hiba, nincs file-név meghatározva\n
14 BScreen::parseMenuFile: [include] Hiba, '%s' nem egy szabályos file\n
15 BScreen::parseMenuFile: [submenu] Hiba, nincs menü címke meghatározva\n
16 BScreen::parseMenuFile: [restart] Hiba, nincs menü címke meghatározva\n
17 BScreen::parseMenuFile: [reconfig] Hiba, nincs menü címke meghatározva\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] Hiba, nincs meghatározva könyvtár\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] Hiba, '%s' nem könyvtár\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] Hiba, '%s' nem létezik\n
21 BScreen::parseMenuFile: [workspaces] Hiba, nincs menü címke meghatározva\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Slit

1 Slit
2 Slit irány 
3 Slit elhelyezés

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Toolbar
9 Munkaasztal nevének változtatása
10 Toolbar elhelyezés 

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: 0x%lx létrehozása\n
2 BlackboxWindow::BlackboxWindow: sikertelen XGetWindowAttributres\n
3 BlackboxWindow::BlackboxWindow: nem található képernyõ root window 0x%lx-nak\n
4 Névtelen
5 BlackboxWindow::mapRequestEvent() for 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() for  0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reparent 0x%lx to 0x%lx\n

$set 10 #Windowmenu

1 Küldés..
2 Shade
3 Ikonizál
4 Felnagyít
5 Elõtérbe
6 Háttérbe
7 Mindenhol látható
8 Kill
9 Bezárás

$set 11 #Workspace

1 %d munkaasztal

$set 12 #Workspacemenu

1 Munkaasztalok
2 Új munkaasztal
3 Utolsó munkaasztal törlése

$set 13 #blackbox

1 Blackbox::Blackbox: nem található kezelhetõ képernyõ, befejezés\n
2 Blackbox::process_event: MapRequest for 0x%lx\n

$set 14 #Common

1 Igen
2 Nem

3 Irány
4 Vízszintes
5 Függõleges

6 Mindig az elõtérben

7 Elhelyezés
8 Bal felül
9 Bal középen
10 Bal lent
11 Középen felül
12 Középen lent
13 Jobb fent
14 Jobb középen
15 Jobb lent

16 Autómatikus elrejtés

$set 15 #main

1 Hiba: '-rc' kapcsoló paramétere hiányzik\n
2 Hiba: '-display' kapcsoló paramétere hiányzik\n
3 Figyelem: nem lehet a 'DISPLAY' környezeti változót beállítani\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\thasználandó kijelzõ\n\
  -rc <string>\t\t\tválasztható konfigurációs file.\n\
  -version\t\t\tverziószám kijelzése és kilépés.\n\
  -help\t\t\t\tsúgóképernyõ mutatása és kilépés.\n\n
5 Fordításnál állítható lehetõségek:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: hiba: kötelezõ megadni egy kapcsolót: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        használandó kijelzõ\n\
  -mod <x> <y>             modula minta\n\
  -foreground, -fg <color> modula elõtér színe\n\
  -background, -bg <color> modula háttér színe\n\n\
  -gradient <texture>      gradiens textúrája\n\
  -from <color>            kezdõszín\n\
  -to <color>              befejezõszín\n\n\
  -solid <color>           egyszerû háttér\n\n\
  -help                    súgóképernyõ mutatása és kilépés\n

