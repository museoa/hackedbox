$set 1 #BaseDisplay

1 %s:  X erro: %s(%d) opcodes %d/%d\n  recurso 0x%lx\n
2 %s: sinal recebido %d\n
3 finalizando\n
4 abortando... descarregando memória\n
5 BaseDisplay::BaseDisplay: conecção ao servidor X falhou.\n
6 BaseDisplay::BaseDisplay: impossível exibir sinal de conexão como fechar-em-execução\n
7 BaseDisplay::eventLoop(): removendo janela inválida da lista de eventos\n

$set 2 #Basemenu

1 Menu do Blackbox

$set 3 #Configmenu

1 Configurações
2 Modelo de Foco
3 Posicionamento das Janelas
4 Simulação de Cores em Imagens
5 Movimento Opaco de Janelas
6 Maximização Total
7 Foco em Novas Janelas
8 Foco na Ultima Janela Da Area de Trabalho
9 Disabilitar Ações com Scroll Lock
10 Clicar para Focar
11 Apontar para Focar
12 Auto-sobrepor
13 Click Raise
14 Organizar Rapido (Linha)
15 Organizar Rapido (Coluna)
16 Organizar em Cascata
17 Esquerda para Direita
18 Direita para Esquerda
19 Cima para Baixo
20 Baixo para Cima

$set 4 #Icon

1 Icones

$set 5 #Image

1 BImage::render_solid: erro criando pixmap\n
2 BImage::renderXImage: erro criando XImage\n
3 BImage::renderXImage: visual não suportado\n
4 BImage::renderPixmap: erro criando pixmap\n
5 BImageControl::BImageControl: tamanho invalido de mapa de cores %d (%d/%d/%d) - reduzindo\n
6 BImageControl::BImageControl: erro determinando mapa de cores\n
7 BImageControl::BImageControl: falha em alocar cor %d/%d/%d\n
8 BImageControl::~BImageControl: cache de pixmap - liberando pixmaps %d\n
9 BImageControl::renderImage: cache está grande, forçando desalocação\n
10 BImageControl::getColor: erro ao analizar cor: '%s'\n
11 BImageControl::getColor: erro ao alocar cor: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: um erro occorreu enquanto consultava o servidor X.\n  \
existe outro window menager rodando no display. %s.\n
2 BScreen::BScreen: managing screen %d using visual 0x%lx, depth %d\n
3 BScreen::LoadStyle(): impossivel carregar fonte '%s'\n
4 BScreen::LoadStyle(): impossivel carregar fonte padrão.\n
5 %s: arquivo de menu vazio\n
6 xterm
7 Reiniciar
8 Sair
9 BScreen::parseMenuFile: [exec] erro, sem rótulo de menu e/ou comando definido\n
10 BScreen::parseMenuFile: [exit] erro, sem rótulo de menu definido\n
11 BScreen::parseMenuFile: [style] erro, sem rótulo de menu e/ou nome do arquivo \
definido\n
12 BScreen::parseMenuFile: [config] erro, sem rótulo de menu definido\n
13 BScreen::parseMenuFile: [include] erro, nome de arquivo não definido\n
14 BScreen::parseMenuFile: [include] error, '%s' não é um arquivo regular\n
15 BScreen::parseMenuFile: [submenu] erro, sem rótulo de menu definido\n
16 BScreen::parseMenuFile: [restart] erro, sem rótulo de menu definido\n
17 BScreen::parseMenuFile: [reconfig] erro, sem rótulo de menu definido\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] erro, sem diretorio difinido\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] erro, '%s' não é um \
diretorio\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] erro, '%s' não existe\n
21 BScreen::parseMenuFile: [workspaces] erro, sem rótulo de menu definido\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Slit

1 Slit
2 Direção do Slit
3 Posicionamento do Slit

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Barra de Ferramenta
9 Editar o nome da area de trabalho corrente
10 Posicionamento da Barra de Ferramentas

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: criando 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres falhou\n
3 BlackboxWindow::BlackboxWindow: impossivel encontrar tela para janela principal 0x%lx\n
4 Sem Nome
5 BlackboxWindow::mapRequestEvent() para 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() para 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reparent 0x%lx para 0x%lx\n

$set 10 #Windowmenu

1 Enviar Para ...
2 Ocultar
3 Minimizar
4 Maximizar
5 Trazer pra Frente
6 Levar pra Traz
7 Fixar
8 Matar Cliente
9 Fechar

$set 11 #Workspace

1 Area de Trabalho %d

$set 12 #Workspacemenu

1 Areas de Trabalho
2 Nova Area de Trabalho
3 Remover Ultima

$set 13 #blackbox

1 Blackbox::Blackbox: não encontradas telas gerenciaveis, abortando..\n
2 Blackbox::process_event: MapRequest para 0x%lx\n

$set 14 #Common

1 Sim
2 Não

3 Direção
4 Horizontal
5 Vertical

6 Sempre vísivel

7 Posicionamento
8 No Alto a Esquerda
9 No Centro a Esquerda
10 Em Baixo a Esquerda
11 No Alto ao Centro
12 Em Baixo ao Centro
13 No Alto a Direita
14 No Meio a Direita
15 Em Baixo a Direita

16 Auto-ocultar

$set 15 #main

1 erro: '-rc' requer um argumento\n
2 erro: '-display' requer um argumento\n
3 aviso: não foi possivel setar a variavel de ambiente 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\tusar conexão com o display.\n\
  -rc <string>\t\t\tusar arquivo alternativo de recursos.\n\
  -version\t\t\texibe a versao e sair.\n\
  -help\t\t\t\texibe este texto de ajuda e sair.\n\n
5 Opções em tempo de compilação:\n\
  Depuração:\t\t\t%s\n\
  Forma:\t\t\t%s\n\
  Simulação Ordenada de Cores em 8bpp:\t%s\n\n

$set 16 #bsetroot

1 %s: erro: necessario especificar uma das opções: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        conexão com video\n\
  -mod <x> <y>             modula padrão\n\
  -foreground, -fg <color> modula cor do primeiro plano\n\
  -background, -bg <color> modula cor do segundo plano\n\
  -gradient <texture>      textura gradiente\n\
  -from <color>            cor de inicio do gradiente\n\
  -to <color>              com do fim do gradiente\n\
  -solid <color>           cor solida\n\
  -help                    mostra este texto de ajuda e sai\n\
