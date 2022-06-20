$set 1 #BaseDisplay

1 %s: errore di X: %s(%d) opcodes %d/%d\n  risorsa 0x%lx\n
2 %s: segnale %d intercettato\n
3 arresto del programma\n
4 Annullamento...generazione file core\n
5 BaseDisplay::BaseDisplay: connessione al server X fallita.\n
6 BaseDisplay::BaseDisplay: non e' possibile contrassegnare la connessione al display come close-on-exec\n
7 BaseDisplay::eventLoop(): rimozione finestra difettosa dalla coda degli eventi\n

$set 2 #Basemenu

1 Blackbox Menu

$set 3 #Configmenu

1 Opzioni di Configurazione
2 Modalita' Focus
3 Posizionamento Finestra
4 Dithering dell'immagine
5 Movimento Opaco della finestra
6 Massimo Ingrandimento
7 Attiva Focus alle nuove Finestre
8 Attiva Focus al cambio dell'Area di Lavoro
9 Clicca per il Focus
10 Focus Intelligente (Sloppy)
11 Sollevamento Finestra Automatico
12 Posizionamento Intelligente (Righe)
13 Posizionamento Intelligente (Colonne)
14 Posizionamento a Cascata
15 da Sinistra a Destra
16 da Destra a Sinistra
17 dall'Alto in Basso
18 dal Basso in Alto

$set 4 #Icon

1 Icone

$set 5 #Image

1 BImage::render_solid: errore creando la pixmap\n
2 BImage::renderXImage: errore creando XImage\n
3 BImage::renderXImage: visuale non supportata\n
4 BImage::renderPixmap: errore creando la pixmap\n
5 BImageControl::BImageControl: grandezza della mappa di colori non valida %d (%d/%d/%d) - riduzione\n
6 BImageControl::BImageControl: errore di assegnazione mappa di colori\n
7 BImageControl::BImageControl: fallita l'assegnazione del colore %d/%d/%d\n
8 BImageControl::~BImageControl: pixmap cache - rilascio %d pixmaps\n
9 BImageControl::renderImage: la cache e' larga, forzo la pulitura\n
10 BImageControl::getColor: errore di analisi del colore: '%s'\n
11 BImageControl::getColor: errore di assegnazione del colore: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: e' accaduto un errore mentre si interrogava il server X.\n  \
un'altro gestore di finestre e' attualmente in esecuzione sul display %s.\n
2 BScreen::BScreen: gestendo schermo %d usando visuale 0x%lx, depth %d\n
3 BScreen::LoadStyle(): impossibile caricare il font '%s'\n
4 BScreen::LoadStyle(): impossibile caricare il font di default.\n
5 %s: file menu vuoto\n
6 xterm
7 Riavvia
8 Esci
9 BScreen::parseMenuFile: [exec] errore, nessuna voce nel menu e/o comando definito\n
10 BScreen::parseMenuFile: [exit] errore, nessuna voce nel menu definita\n
11 BScreen::parseMenuFile: [style] errore, nessuna voce nel menu e/o file\
definto\n
12 BScreen::parseMenuFile: [config] errore, nessuna voce nel menu definta\n
13 BScreen::parseMenuFile: [include] errore, nessun file definito\n
14 BScreen::parseMenuFile: [include] errore, '%s' non è un file regolare\n
15 BScreen::parseMenuFile: [submenu] errore, nessuna voce nel menu definta\n
16 BScreen::parseMenuFile: [restart] errore, nessuna voce nel menu definta\n
17 BScreen::parseMenuFile: [reconfig] errore, nessuna voce nel menu definta\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] errore, nessuna cartella definita\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] errore, '%s' non e' una \
cartella\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] errore, '%s' non esiste\n
21 BScreen::parseMenuFile: [workspaces] errore, nessuna voce nel menu definita\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Slit

1 Slit
2 Direzione Slit
3 Posizionamento Slit

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Barra degli Strumenti
9 Modifica nome Area di Lavoro corrente
10 Posizionamento Barra

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: creazione 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres fallito\n
3 BlackboxWindow::BlackboxWindow: impossibile trovare schermo per finestra principale 0x%lx\n
4 Senza Nome
5 BlackboxWindow::mapRequestEvent() per 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() per 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reparent 0x%lx a 0x%lx\n

$set 10 #Windowmenu

1 Manda in ...
2 Arrotola
3 Riduci a Icona
4 Ingrandisci
5 Alza
6 Abbassa
7 Fissa
8 Uccidi Programma
9 Chiudi

$set 11 #Workspace

1 Area di Lavoro %d

$set 12 #Workspacemenu

1 Aree di Lavoro
2 Nuova Area di Lavoro
3 Rimuovi Ultima

$set 13 #blackbox

1 Blackbox::Blackbox: nessuno schermo gestibile trovatono, annullamento\n
2 Blackbox::process_event: MapRequest per 0x%lx\n

$set 14 #Common

1 Si
2 No

3 Direzione
4 Orizzontale
5 Verticale

6 Sempre in primo piano

7 Posizionamento
8 in Alto a Sinistra
9 al Centro a Sinistra
10 in Basso a Sinistra
11 in Alto al Centro
12 in Basso al Centro
13 in Alto a Destra
14 al Centro a Destra
15 in Basso a Destra

16 Nascondi Automaticamente

$set 15 #main

1 errore: '-rc' richiede un argomento\n
2 errore: '-display' richiede an argomento\n
3 attenzione: impossibile impostare la variabile d'ambiente 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\tusa connessione display.\n\
  -rc <string>\t\t\tusa un file risorsa alternativo.\n\
  -version\t\t\tmostra la versione e esci.\n\
  -help\t\t\t\tmostra questo aiuto e esci.\n\n
5 Opzioni in fase di compilazione:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: errore: deve essere specificato uno dei seguenti: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        connessione display\n\
  -mod <x> <y>             modello di modula\n\
  -foreground, -fg <color> colore di primo piano di modula\n\
  -background, -bg <color> colore di secondo piano di modula\n\n\
  -gradient <texture>      trama sfumatura\n\
  -from <color>            colore d'inizio sfumatura\n\
  -to <color>              colore di fine sfumatura\n\n\
  -solid <color>           colore pieno\n\n\
  -help                    mostra questo aiuto e esci\n

