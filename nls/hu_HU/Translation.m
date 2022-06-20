$set 1 #BaseDisplay

1 %s:  X hiba: %s(%d) opcodes %d/%d\n  resource 0x%lx\n
2 %s: %d szign�lt kapott\n
3 Le�ll�s\n
4 Programhiba... dumping core\n
5 BaseDisplay::BaseDisplay: nem siker�lt kapcsol�dni az X szerverhez.\n
6 BaseDisplay::BaseDisplay: az �sszek�ttet�s a k�perny�vel nem 'close-on-exit'\n
7 BaseDisplay::eventLoop(): helytelen ablak kiv�tele a 'Event Queue'-b�l\n

$set 2 #Basemenu

1 Blackbox Men�

$set 3 #Configmenu

1 Be�ll�t�sok
2 F�kusz modell
3 Ablakok elhelyez�se
4 Image dithering
5 �tl�tsz� ablakok mozgat�s k�zben
6 Teljesk�perny�s maximaliz�l�s
7 �j ablak kapja a f�kuszt
8 Munkaasztal v�lt�sa ut�n f�kusz az utols� ablakon
9 Scroll Lock-n�l nem figyeli a billenty�zetet
10 Kattint�s f�kuszhoz
11 A f�kusz k�veti az egeret
12 Aut�matikus el�reugr� ablakok
13 Kattint�ssal az el�t�rbe
14 Optim�lis ablakrendez�s (sorok)
15 Optim�lis ablakrendez�s (oszlopok)
16 Egym�sracs�sztatott elrendez�s
17 Jobbr�l balra
18 Balr�l jobbra
19 Fentr�l lefele
20 Lentr�l felfele

$set 4 #Icon

1 Ikonok

$set 5 #Image

1 BImage::render_solid: hiba a k�p k�sz�t�sekor\n
2 BImage::renderXImage: hiba az XImage k�sz�t�sekor\n
3 BImage::renderXImage: nem t�mogatott visual\n
4 BImage::renderPixmap: hiba a pixmap k�sz�t�sekor\n
5 BImageControl::BImageControl: helytelen colormap m�ret %d (%d/%d/%d) - cs�kkent�s\n
6 BImageControl::BImageControl: hiba a colormap lefoglal�s�n�l\n
7 BImageControl::BImageControl: hiba a %d/%d/%d sz�n lefoglal�s�n�l\n
8 BImageControl::~BImageControl: pixmap cache - %d pixmaps felszabad�t�sa\n
9 BImageControl::renderImage: a cache t�l nagy, �r�t�s\n
10 BImageControl::getColor: hiba a sz�n elemz�s�n�l: '%s'\n
11 BImageControl::getColor: hiba a sz�n lefoglal�s�n�l: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: hiba az X szerver k�rdez�s�n�l.\n \
Egy m�sik ablakkezel� m�r haszn�lja a %s k�perny�t.\n
2 BScreen::BScreen: �tvette az ir�ny�t�st a %d k�perny�n. visual: 0x%lx, sz�nm�lys�g: %d\n
3 BScreen::LoadStyle(): nem lehet a '%s' bet�t�pust bet�lteni\n
4 BScreen::LoadStyle(): az alap�rtelmezett bet�t�pus bet�lt�se nem lehets�ges.\n
5 %s: �res men� file\n
6 termin�l
7 �jraind�t�s
8 Kil�p�s
9 BScreen::parseMenuFile: [exec] Hiba, nincs men� c�mke �s/vagy parancs meghat�rozva\n
10 BScreen::parseMenuFile: [exit] Hiba, nincs men� c�mke meghat�rozva\n
11 BScreen::parseMenuFile: [style] Hiba, nincs men� c�mke �s/vagy file-n�v meghat�rozva\n
12 BScreen::parseMenuFile: [config] Hiba, nincs men� c�mke meghat�rozva\n
13 BScreen::parseMenuFile: [include] Hiba, nincs file-n�v meghat�rozva\n
14 BScreen::parseMenuFile: [include] Hiba, '%s' nem egy szab�lyos file\n
15 BScreen::parseMenuFile: [submenu] Hiba, nincs men� c�mke meghat�rozva\n
16 BScreen::parseMenuFile: [restart] Hiba, nincs men� c�mke meghat�rozva\n
17 BScreen::parseMenuFile: [reconfig] Hiba, nincs men� c�mke meghat�rozva\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] Hiba, nincs meghat�rozva k�nyvt�r\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] Hiba, '%s' nem k�nyvt�r\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] Hiba, '%s' nem l�tezik\n
21 BScreen::parseMenuFile: [workspaces] Hiba, nincs men� c�mke meghat�rozva\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Slit

1 Slit
2 Slit ir�ny 
3 Slit elhelyez�s

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Toolbar
9 Munkaasztal nev�nek v�ltoztat�sa
10 Toolbar elhelyez�s 

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: 0x%lx l�trehoz�sa\n
2 BlackboxWindow::BlackboxWindow: sikertelen XGetWindowAttributres\n
3 BlackboxWindow::BlackboxWindow: nem tal�lhat� k�perny� root window 0x%lx-nak\n
4 N�vtelen
5 BlackboxWindow::mapRequestEvent() for 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() for  0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reparent 0x%lx to 0x%lx\n

$set 10 #Windowmenu

1 K�ld�s..
2 Shade
3 Ikoniz�l
4 Felnagy�t
5 El�t�rbe
6 H�tt�rbe
7 Mindenhol l�that�
8 Kill
9 Bez�r�s

$set 11 #Workspace

1 %d munkaasztal

$set 12 #Workspacemenu

1 Munkaasztalok
2 �j munkaasztal
3 Utols� munkaasztal t�rl�se

$set 13 #blackbox

1 Blackbox::Blackbox: nem tal�lhat� kezelhet� k�perny�, befejez�s\n
2 Blackbox::process_event: MapRequest for 0x%lx\n

$set 14 #Common

1 Igen
2 Nem

3 Ir�ny
4 V�zszintes
5 F�gg�leges

6 Mindig az el�t�rben

7 Elhelyez�s
8 Bal fel�l
9 Bal k�z�pen
10 Bal lent
11 K�z�pen fel�l
12 K�z�pen lent
13 Jobb fent
14 Jobb k�z�pen
15 Jobb lent

16 Aut�matikus elrejt�s

$set 15 #main

1 Hiba: '-rc' kapcsol� param�tere hi�nyzik\n
2 Hiba: '-display' kapcsol� param�tere hi�nyzik\n
3 Figyelem: nem lehet a 'DISPLAY' k�rnyezeti v�ltoz�t be�ll�tani\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\thaszn�land� kijelz�\n\
  -rc <string>\t\t\tv�laszthat� konfigur�ci�s file.\n\
  -version\t\t\tverzi�sz�m kijelz�se �s kil�p�s.\n\
  -help\t\t\t\ts�g�k�perny� mutat�sa �s kil�p�s.\n\n
5 Ford�t�sn�l �ll�that� lehet�s�gek:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: hiba: k�telez� megadni egy kapcsol�t: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        haszn�land� kijelz�\n\
  -mod <x> <y>             modula minta\n\
  -foreground, -fg <color> modula el�t�r sz�ne\n\
  -background, -bg <color> modula h�tt�r sz�ne\n\n\
  -gradient <texture>      gradiens text�r�ja\n\
  -from <color>            kezd�sz�n\n\
  -to <color>              befejez�sz�n\n\n\
  -solid <color>           egyszer� h�tt�r\n\n\
  -help                    s�g�k�perny� mutat�sa �s kil�p�s\n

