$set 1 #BaseDisplay

1 %s:  Erreur de X %s(%d) opcodes %d/%d\n  ressource 0x%lx\n
2 %s: signal %d captur�\n
3 arr�t du programme\n
4 annulation... g�n�ration du fichier core\n
5 BaseDisplay::BaseDisplay: �chec de la connexion au serveur X\n
6 BaseDisplay::BaseDisplay: impossible d'attribuer close-on-exec � l'affichage\n
7 BaseDisplay::eventLoop(): suppression d'une mauvaise fen�tre de la queue des �v�nements\n

$set 2 #Basemenu

1 Menu de Blackbox

$set 3 #Configmenu

1 Options de configuration
2 Mode d'attribution du clavier
3 Disposition des fen�tres
4 Lissage des images
5 D�placement opaque des fen�tres
6 Maximisation compl�te
7 Attribuer le clavier � la nouvelle fen�tre
8 Attribuer le clavier en changeant d'espace de travail
9 D�sactiver les modificateurs avec V�rouillage D�filement
10 Cliquer pour obtenir le clavier
11 Attribution du clavier souple
12 Premier plan automatique
13 Cliquer pour mettre au premier plan
14 Disposition fut�e (Lignes)
15 Disposition fut�e (Colonnes)
16 Disposition en cascade
17 De gauche � droite
18 De droite � gauche
19 De haut en bas
20 De bas en haut

$set 4 #Icon

1 Icones

$set 5 #Image

1 BImage::render_solid: Erreur de cr�ation de pixmap\n
2 BImage::renderXImage: Erreur de cr�ation de XImage\n
3 BImage::renderXImage: Mode visuel non support�\n
4 BImage::renderPixmap: Erreur de cr�ation de pixmap\n
5 BImageControl::BImageControl: Taille de la palette de couleurs invalide%d (%d/%d/%d) - coupe\n
6 BImageControl::BImageControl: Erreur d'allocation de la palette de couleurs\n
7 BImageControl::BImageControl: Echec d'allocation de couleur %d/%d/%d\n
8 BImageControl::~BImageControl: Cache pixmap - abandon %d pixmaps\n
9 BImageControl::renderImage: Occupation du cache importante, nettoyage forc�\n
10 BImageControl::getColor: Erreur de lecture de couleur: '%s'\n
11 BImageControl::getColor: Erreur d'allocation,couleur: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: Erreur survenue pendant une requ�te adress�e au serveur X.\n  \
Un autre gestionnaire de fen�tres est d�j� lanc� %s.\n
2 BScreen::BScreen: Gestion de l'�cran %d avec le mode visuel 0x%lx, profondeur %d\n
3 BScreen::LoadStyle(): Impossible de charger la police de caract�res '%s'\n
4 BScreen::LoadStyle(): Impossible de charger la police de caract�res initiale.\n
5 %s: Fichier de menu vide\n
6 xterm
7 Red�marrer
8 Sortie
9 BScreen::parseMenuFile: [exec] Erreur, pas de libell� de menu et/ou de commande definie\n
10 BScreen::parseMenuFile: [exit] Erreur, aucun libell� de menu d�fini\n
11 BScreen::parseMenuFile: [style] Erreur, pas libell� de menu et/ou de nom de fichier\
defini\n
12 BScreen::parseMenuFile: [config] Erreur, aucun libell� de menu d�fini\n
13 BScreen::parseMenuFile: [include] Erreur, aucun nom de fichier d�fini\n
14 BScreen::parseMenuFile: [include] Erreur, '%s' est un fichier invalide\n
15 BScreen::parseMenuFile: [submenu] Erreur, aucun libell� de menu d�fini\n
16 BScreen::parseMenuFile: [restart] Erreur, aucun libell� de menu d�fini\n
17 BScreen::parseMenuFile: [reconfig] Erreur, aucun libell� de menu d�fini\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] Erreur, aucun r�pertoire d�fini\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] Erreur, '%s' est un r�pertoire \
invalide\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] Erreur, '%s' est inexistant\n
21 BScreen::parseMenuFile: [workspaces] Erreur, aucun libell� de menu d�fini\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 L: %4d x H: %4d


$set 7 #Slit

1 Fente
2 Orientation de la Fente
3 Disposition de la Fente

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Barre d'outils
9 Edition du nom de l'espace courant
10 Disposition de la barre d'outils

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: G�n�ration 0x%lx\n
2 BlackboxWindow::BlackboxWindow: Echec de XGetWindowAttributres\n
3 BlackboxWindow::BlackboxWindow: Impossible de trouver l'�cran de la fen�tre racine 0x%lx\n
4 Inconnu
5 BlackboxWindow::mapRequestEvent() pour 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() pour 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: r�attribue 0x%lx � la 0x%lx\n

$set 10 #Windowmenu

1 Envoie vers ...
2 Fant�me
3 Iconifie
4 Maximise
5 �l�ve
6 Abaisse
7 �pingle
8 Massacre
9 Ferme

$set 11 #Workspace

1 Espace de travail %d

$set 12 #Workspacemenu

1 Espaces de travail
2 Nouvel espace de travail
3 Supprimer le dernier

$set 13 #blackbox

1 Blackbox::Blackbox: Aucun �cran exploitable n'a �t� trouv�, annulation\n
2 Blackbox::process_event: MapRequest pour 0x%lx\n

$set 14 #Common

1 Oui
2 Non

3 Orientation
4 Horizontal
5 Vertical

6 Toujours au dessus

7 Disposition
8 En haut � gauche
9 Au centre � gauche
10 En bas � gauche
11 En haut au centre
12 En bas au centre
13 En haut � droite
14 Au centre � droite
15 En bas � droite

16 Auto dispara�t

$set 15 #main

1 Erreur: '-rc' n�cessite un argument\n
2 Erreur: '-display' n�cessite un argument\n
3 Attention: impossible d'attribuer la variable d'environnement 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <cha�ne>\t\tutilise la connexion � l'affichage.\n\
  -rc <cha�ne>\t\t\tutilise un autre fichier de configuration.\n\
  -version\t\t\taffiche la version et quitte.\n\
  -help\t\t\t\taffiche ce texte d'aide et quitte.\n\n
5 Options de compilation:\n\
  Debugage\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Lissage ordonn�:\t%s\n\n

$set 16 #bsetroot

1 %s: Erreur: il faut pr�ciser : -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <cha�ne>        	connexion � l'affichage\n\
  -mod <x> <y>             	motif\n\
  -foreground, -fg <couleur> 	couleur d'avant plan\n\
  -background, -bg <couleur> 	couleur d'arri�re plan\n\n\
  -gradient <texture>      	texture du d�grad�\n\
  -from <couleur>            	couleur de d�part du d�grad�\n\
  -to <couleur>              	couleur d'arriv�e du d�grad�\n\n\
  -solid <couleur>           	couleur uniforme\n\n\
  -help                    	affiche ce texte d'aide et quitte\n

