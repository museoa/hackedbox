$set 1 #BaseDisplay

1 %s:  X feil: %s(%d) kode %d/%d\n  ressurs 0x%lx\n
2 %s: signal %d fanget\n
3 Avslutter\n
4 Avbryter... dumper kjerne\n
5 BaseDisplay::BaseDisplay: kunne ikke koble til X tjener.\n
6 BaseDisplay::BaseDisplay: Kunne ikke markere skjermtilkobling som lukk-ved-eksekvering\n
7 BaseDisplay::eventLoop(): fjerner korrupt vindu fra hendelseskø\n

$set 2 #Basemenu

1 Blackbox Meny

$set 3 #Configmenu

1 Instillinger
2 Fokus-modell 
3 Vindusplassering
4 Bildeutjevning
5 Vis vindusinnhold ved flytting
6 Full maksimering
7 Fokuser nye vinduer
8 Fokuser vindu ved skrivebords-bytte
9 Slå av tastaturbindinger med Scroll Lock
10 Klikk for fokus
11 Slapp fokus
12 Hev automatisk
13 Klikk for å heve
14 Smart-plassering (rekker)
15 Smart-plassering (kolonner)
16 Kaskade plassering
17 Fra venstre til høyre
18 Fra høyre til venstre
19 Topp til bunn
20 Bunn til topp

$set 4 #Icon

1 Ikoner

$set 5 #Image

1 BImage::render_solid: feil ved opprettelse av pikselkart\n
2 BImage::renderXImage: feil ved opprettelse av XImage\n
3 BImage::renderXImage: fargedybden er ikke støttet\n
4 BImage::renderPixmap: feil ved opprettelse av pikselkart\n
5 BImageControl::BImageControl: ugyldig størrelse på fargekart %d (%d/%d/%d) - reduserer\n
6 BImageControl::BImageControl: feil ved allokering av fargekart\n
7 BImageControl::BImageControl: feil ved allokering av farge %d/%d/%d\n
8 BImageControl::~BImageControl: pikselkart-hurtigminne - sletter %d pikselkart\n
9 BImageControl::renderImage: hurtigminnet er stort, tvinger opprydding\n
10 BImageControl::getColor: Feil ved lesning av farge: '%s'\n
11 BImageControl::getColor: Fargeallokerings-feil: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: feil ved forspørsel til X tjener.\n  \
en annen vindushåndterer kjører allerede på display %s.\n
2 BScreen::BScreen: håndterer skjerm %d, 0x%lx, fargedybde %d\n
3 BScreen::LoadStyle(): kunne ikke laste skrifttypen '%s'\n
4 BScreen::LoadStyle(): kunne ikke laste standard-skrifttypen.\n
5 %s: tom meny-fil\n
6 xterm
7 Omstart
8 Avslutt
9 BScreen::parseMenuFile: [exec] feil, ingen meny-etikett og/eller kommando definert\n
10 BScreen::parseMenuFile: [exit] feil, ingen meny-etikett definert\n
11 BScreen::parseMenuFile: [style] feil, ingen meny-etikett og/eller filnavn \
definert\n
12 BScreen::parseMenuFile: [config] feil, ingen meny-etikett definert\n
13 BScreen::parseMenuFile: [include] feil, filnavn ikke definert\n
14 BScreen::parseMenuFile: [include] feil, '%s' er ikke en normal fil\n
15 BScreen::parseMenuFile: [submenu] feil, ingen meny-etikett definert\n
16 BScreen::parseMenuFile: [restart] feil, ingen meny-etikett definert\n
17 BScreen::parseMenuFile: [reconfig] feil, ingen meny-etikett definert\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] feil, ingen katalog definert\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] feil, '%s' er ikke en katalog\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] feil, '%s' eksisterer ikke\n
21 BScreen::parseMenuFile: [workspaces] feil, ingen meny-etikett definert\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 B: %4d x H: %4d


$set 7 #Slit

1 Spalte
2 Spalte-retning
3 Spalte-plassering

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Verktøylinje
9 Endre navn på gjeldende skrivebord
10 Verktøylinje-plassering

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: oppretter 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres feilet\n
3 BlackboxWindow::BlackboxWindow: finner ikke skjerm til rotvindu 0x%lx\n
4 Ikke navngitt
5 BlackboxWindow::mapRequestEvent() for 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() for 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: setter 0x%lx til 0x%lx\n

$set 10 #Windowmenu

1 Send til ...
2 Skygg
3 Minimer til ikon
4 Maksimer
5 Hev
6 Senk
7 Klebrig
8 Terminer klient
9 Lukk

$set 11 #Workspace

1 Skrivebord %d

$set 12 #Workspacemenu

1 Skrivebord
2 Nytt skrivebord
3 Fjern siste

$set 13 #blackbox

1 Blackbox::Blackbox: ingen håndterbare skjermer funnet, avbryter\n
2 Blackbox::process_event: MapRequest for 0x%lx\n

$set 14 #Common

1 Ja
2 Nei

3 Retning
4 Horisontal
5 Vertikal

6 Alltid øverst

7 Plassering
8 Øverst til venstre
9 Venstre i midten
10 Nederst til venstre
11 Øverst i midten
12 Nederst i midten
13 Øverst til høyre
14 Høyre i midten
15 Nederst til høyre

16 Skjul automatisk

$set 15 #main

1 feil: '-rc' krever et argument\n
2 feil: '-display' krever et argument\n
3 advarsel: kunne ikke sette 'DISPLAY' miljøvariabelen\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <streng>\t\tbruk skjermtilkobling.\n\
  -rc <streng>\t\t\tbrug alternativ ressursfil.\n\
  -version\t\t\tvis versjonsnummeret og avslutt.\n\
  -help\t\t\t\tvis denne hjelpeteksten og avslutt.\n\n
5 Kompileret med:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: feil: én av følgende opsjoner må spesifiseres: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        skjermtilkobling3\n\
  -mod <x> <y>             modula mønster\n\
  -foreground, -fg <color> modula forgrunnsfarge\n\
  -background, -bg <color> modula bakgrunnsfarge\n\n\
  -gradient <texture>      gradient tekstur\n\
  -from <color>            gradient start farge\n\
  -to <color>              gradient slutt farge\n\n\
  -solid <color>           ensfarget\n\n\
  -help                    vis denne hjelpeteksten og avslutt\n
