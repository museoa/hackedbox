$set 1 #BaseDisplay

1 %s:  X error: %s(%d) código de operación %d/%d\n  recurso 0x%lx\n
2 %s: señal %d atrapada\n
3 apagando\n
4 abortando... grabando 'core'\n
5 BaseDisplay::BaseDisplay: falló la conexión al servidor de X.\n
6 BaseDisplay::BaseDisplay: no pude marcar la conexión al display como close-on-exec\n
7 BaseDisplay::eventLoop(): quitando ventana errónea de la lista de eventos\n

$set 2 #Basemenu

1 Menú Blackbox

$set 3 #Configmenu

1 Opciones de Configuración
2 Modelo del Foco
3 Ubicación de las Ventanas
4 Simulación Ordenada de Colores en Imágenes
5 Movimiento Opaco de Ventanas
6 Maximización Total
7 Enfocar Nuevas Ventanas
8 Enfocar la Ultima Ventana en el Escritorio
9 Deshabilitar Enlaces con Bloq Despl
10 Click Para Enfocar
11 Foco Sigue Al Mouse
12 Elevar Automáticamente
13 Click Para Elevar
14 Ubicación Inteligente (Filas)
15 Ubicación Inteligente (Columnas)
16 Ubicación en Cascada
17 Izquierda A Derecha
18 Derecha A Izquierda
19 De Arriba Abajo
20 De Abajo Arriba

$set 4 #Icon

1 Iconos

$set 5 #Image

1 BImage::render_solid: error creando pixmap\n
2 BImage::renderXImage: error creando XImage\n
3 BImage::renderXImage: visual no soportada\n
4 BImage::renderPixmap: error creando pixmap\n
5 BImageControl::BImageControl: tamaño del mapa de colores inválido %d (%d/%d/%d) - reduciendo\n
6 BImageControl::BImageControl: error asignando el mapa de colores\n
7 BImageControl::BImageControl: error al asignar el mapa de colores %d/%d/%d\n
8 BImageControl::~BImageControl: reserva de pixmaps - liberando %d pixmaps\n
9 BImageControl::renderImage: reserva de pixmaps demasiado grande, forzando limpieza\n
10 BImageControl::getColor: error evaluando el color: '%s'\n
11 BImageControl::getColor: error asignando el color: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: ocurrió un error al cuestionar al servidor de X.\n Ya hay otro gestor de ventanas ejecutándose en la conexión al display %s.\n
2 BScreen::BScreen: administrando la pantalla %d usando visual 0x%lx, profundidad %d\n
3 BScreen::LoadStyle(): no pude cargar la fuente '%s'\n
4 BScreen::LoadStyle(): no pude cargar la fuente predeterminada.\n
5 %s: archivo de menú vacío\n
6 xterm
7 Reiniciar
8 Salir
9 BScreen::parseMenuFile: error en [exec], no se definió una etiqueta ni/o un comando para el menú\n
10 BScreen::parseMenuFile: error en [exit],  no se definió una etiqueta para el menú\n
11 BScreen::parseMenuFile: error en [style],  no se definió una etiqueta ni/o un nombre de archivo para el menú\n
12 BScreen::parseMenuFile: error en [config],  no se definió una etiqueta para el menú\n
13 BScreen::parseMenuFile: error en [include], no se definió un nombre de archivo\n
14 BScreen::parseMenuFile: error en [include], '%s' no es un archivo regular\n
15 BScreen::parseMenuFile: error en [submenu],  no se definió una etiqueta para el menú\n
16 BScreen::parseMenuFile: error en [restart],  no se definió una etiqueta para el menú\n
17 BScreen::parseMenuFile: error en [reconfig],  no se definió una etiqueta para el menú\n
18 BScreen::parseMenuFile: error en [stylesdir/stylesmenu], no se definió un directorio\n
19 BScreen::parseMenuFile: error en [stylesdir/stylesmenu], '%s' no es un directorio\n
20 BScreen::parseMenuFile: error en [stylesdir/stylesmenu], '%s' no existe\n
21 BScreen::parseMenuFile: error en [workspaces],  no se definió una etiqueta para el menú\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d

$set 7 #Slit

1 Slit
2 Dirección de la Slit
3 Ubicación de la Slit

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 Barra de Herramientas
9 Renombrar el Escritorio Actual
10 Ubicación de la Barra de Tareas

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: creando 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres falló\n
3 BlackboxWindow::BlackboxWindow: no se puede encontrar una pantalla para la ventana raíz 0x%lx\n
4 Sin Nombre
5 BlackboxWindow::mapRequestEvent() para 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() para 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: cambiar padre de 0x%lx a 0x%lx\n

$set 10 #Windowmenu

1 Enviar A ...
2 Enrollar
3 Iconizar
4 Maximizar
5 Elevar
6 Bajar
7 Fijar
8 Matar Cliente
9 Cerrar

$set 11 #Workspace

1 Escritorio %d

$set 12 #Workspacemenu

1 Escritorios
2 Nuevo Escritorio
3 Quitar Ultimo

$set 13 #blackbox

1 Blackbox::Blackbox: no se encontraron pantallas manejables, abortando\n
2 Blackbox::process_event: MapRequest para 0x%lx\n

$set 14 #Common

1 Sí
2 No

3 Dirección
4 Horizontal
5 Vertical

6 Siempre Encima

7 Ubicación
8 Arriba, Izquierda
9 Centro, Izquierda
10 Abajo, Izquierda
11 Arriba, Centro
12 Abajo, Centro
13 Arriba, Derecha
14 Centro, Derecha
15 Abajo, Derecha

16 Ocultar Automáticamente

$set 15 #main

1 error: '-rc' requiere un argumento\n
2 error: '-display' requiere un argumento\n
3 Aviso: no pude establecer la variable de entorno 'DISPLAY'\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <cadena>\t\tusar la conexión al display.\n\
  -rc <cadena>\t\t\tusar otro archivo de recursos.\n\
  -version\t\t\tmostrar versión y salir.\n\
  -help\t\t\t\tmostrar este texto de ayuda y salir.\n\n
5 Opciones de Tiempo de Compilación:\n\
  Depuración:\t\t\t%s\n\
  Forma:\t\t\t%s\n\
  Simulación ordenada de colores de 8bpp:\t%s\n\n

$set 16 #bsetroot

1 %s: error: debe especificarse uno entre: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        conexión al display\n\
  -mod <x> <y>             diseño de modula\n\
  -foreground, -fg <color> color de primer plano de modula\n\
  -background, -bg <color> color de fondo de modula\n\n\
  -gradient <texture>      textura del gradiente\n\
  -from <color>            color inicial del gradiente\n\
  -to <color>              color final del gradiente\n\n\
  -solid <color>           color sólido\n\n\
  -help                    Imprimir este texto de ayuda y salir\n
