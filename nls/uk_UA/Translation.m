$set 1 #BaseDisplay

1 %s:  помилка X сервера: %s(%d) значення %d/%d\n ресурс 0x%lx\n
2 %s: отриманий сигнал %d \n
3 вимкнення\n
4 переривання... створю╓ться дамп core\n
5 BaseDisplay::BaseDisplay: не вдалося з'╓днання з X сервером.\n
6 BaseDisplay::BaseDisplay: нема можливост╕ позначити активний дисплей як "закритий-на-виконання"\n
7 BaseDisplay::eventLoop(): погане в╕кно видаля╓ться з черги под╕й\n

$set 2 #Basemenu

1 Меню BlackBox

$set 3 #Configmenu

1 Конф╕гурац╕я
2 Модель фокусування
3 М╕сцезнаходження в╕кна
4 Емулювати кольори у зображеннях
5 Перенесення заповнених в╕кон
6 Розгортати на весь екран
7 Давати фокус новим в╕кнам
8 Давати фокус при зм╕н╕ робочого м╕сця
9 Клацнути для отримання фокусу
10 Фокус ╕де за мишкою
11 Автоп╕дн╕мання
12 "Розумне" розташування (горизонтально)
13 "Розумне" розташування (вертикально)
14 Каскадом
15 Зл╕ва на право
16 Зправа на л╕во
17 Зверху вниз
18 Знизу вверх

$set 4 #Icon

1 Згорнут╕ в╕кна

$set 5 #Image

1 BImage::render_solid: помилка створення мапи п╕ксел╕в\n
2 BImage::renderXImage: помилка створення XImage\n
3 BImage::renderXImage: цей тип в╕зуал╕зац╕╖ не п╕дтриму╓ться\n
4 BImage::renderPixmap: помилка створення мапи п╕ксел╕в\n
5 BImageControl::BImageControl: нев╕рний розм╕р таблиц╕ кольор╕в %d (%d/%d/%d) - зменшую\n
6 BImageControl::BImageControl: помилка розм╕щення таблиц╕ кольор╕в\n
7 BImageControl::BImageControl: неможливо розм╕стити кол╕р %d/%d/%d у пам'ят╕\n
8 BImageControl::~BImageControl: кеш п╕ксел╕в зображень - зв╕льня╓ться %d блок╕в\n
9 BImageControl::renderImage: кеш завеликий, примусове зв╕льнення\n
10 BImageControl::getColor: помилка розбору рядка, що опису╓ кол╕р: "%s"\n
11 BImageControl::getColor: помилка розм╕щення кольору у пам'ят╕: "%s"\n

$set 6 #Screen

1 BScreen::BScreen: сталася помилка при звертанн╕ до X сервера.\n  \
╤нший менеджер в╕кон вже запущений на диспле╖ %s.\n
2 BScreen::BScreen: обслугову╓ться екран %d, який використову╓ тип в╕зуал╕зац╕╖ 0x%lx, глибина кольору %d\n
3 BScreen::LoadStyle(): нема можливост╕ завантажити шрифт "%s"\n
4 BScreen::LoadStyle(): нема можливост╕ завантажити типовий шрифт.\n
5 %s: порожн╕й файл меню\n
6 Xterm
7 Перезапуск
8 Вих╕д
9 BScreen::parseMenuFile: помилка [exec], не вказана назва пункту меню ╕/або назва команди\n
10 BScreen::parseMenuFile: помилка [exit], не вказана назва пункту меню\n
11 BScreen::parseMenuFile: помилка [style], не вказана назва пункту меню ╕/або ╕м'я файлу\n
12 BScreen::parseMenuFile: помилка [config], не вказана назва пункту меню\n
13 BScreen::parseMenuFile: помилка [include], не вказано ╕м'я файлу\n
14 BScreen::parseMenuFile: помилка [include], "%s" не звичайний файл\n
15 BScreen::parseMenuFile: помилка [submenu], не вказана назва пункту меню\n
16 BScreen::parseMenuFile: помилка [restart], не вказана назва пункту меню\n
17 BScreen::parseMenuFile: помилка [reconfig], не вказана назва пункту меню\n
18 BScreen::parseMenuFile: помилка [stylesdir/stylesmenu], не вказано ╕м'я каталогу\n
19 BScreen::parseMenuFile: помилка [stylesdir/stylesmenu], "%s" не каталог\n
20 BScreen::parseMenuFile: помилка [stylesdir/stylesmenu], "%s" не ╕сну╓\n
21 BScreen::parseMenuFile: помилка [workspaces], не вказана назва пункту меню\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 W: %4d x H: %4d


$set 7 #Slit

1 Док
2 Ор╕╓нтац╕я доку
3 М╕сцеположення доку

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 по
7 до
8 Пенал
9 Редагувати ╕м'я поточного робочого м╕сця
10 М╕сце розташування пенала

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: створю╓ться 0x%lx\n
2 BlackboxWindow::BlackboxWindow: не вдалося отримати атрибути в╕кна (XGetWindowAttributres)\n
3 BlackboxWindow::BlackboxWindow: нема можливост╕ знайти екран для кореневого в╕кна 0x%lx\n
4 Неназване
5 BlackboxWindow::mapRequestEvent() для 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() для 0x%lx\n
7 BlackboxWindow::unmapnotifyEvent: reparent 0x%lx to root\n

$set 10 #Windowmenu

1 В╕дправити на ...
2 Згорнути у смужку
3 Згорнути
4 Розгорнути
5 П╕дняти наверх
6 Опустити вниз
7 Прикле╖ти
8 Вбити програму
9 Закрити

$set 11 #Workspace

1 Робоче м╕сце %d

$set 12 #Workspacemenu

1 Робоч╕ м╕сця
2 Нове робоче м╕сце
3 Видалити останн╓

$set 13 #blackbox

1 Blackbox::Blackbox: не знайдено екран╕в для обслуговування, переривання...\n
2 Blackbox::process_event: MapRequest for 0x%lx\n

$set 14 #Common

1 Так
2 Н╕

3 Напрямок
4 Горизонтально
5 Вертикально

6 Завжди нагор╕

7 М╕сце розташування
8 Угор╕ ╕ л╕воруч 
9 По центру ╕ л╕воруч 
10 Унизу ╕ л╕воруч 
11 Зверху ╕ по центру
12 Знизу ╕ по центру
13 Зверху ╕ праворуч
14 По центру ╕ праворуч
15 Унизу ╕ праворуч

16 Автоматично ховати

$set 15 #main

1 помилка: "-rc" вимага╓ аргумент\n
2 помилка: "-display" вимага╓ аргумент\n
3 попередження: не вдалося встановити зм╕нну середовища "DISPLAY"\n
4 Blackbox %s: (c) 1997 - 2000 Brad Hughes\n\n\
  -display <string>\t\tобслуговувати вказаний дисплей.\n\
  -rc <string>\t\t\tвикористовувати альтернативний файл ресурс╕в.\n\
  -version\t\t\tвивести номер верс╕╖ ╕ вийти.\n\
  -help\t\t\t\tвивести цю п╕дказку ╕ вийти.\n\n
5 Compile time options:\n\
  Debugging\t\t\t%s\n\
  Interlacing:\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  Slit:\t\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: помилка: необх╕дно задати один з наступних ключ╕в: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        обслуговувати вказаний дисплей\n\
  -mod <x> <y>             макет кл╕тки\n\
  -foreground, -fg <color> кол╕р переднього плану кл╕тки\n\
  -background, -bg <color> кол╕р тла кл╕тки\n\n\
  -gradient <texture>      град╕╓нт\n\
  -from <color>            початковий кол╕р град╕╓нта\n\
  -to <color>              к╕нцевий кол╕р град╕╓нта\n\n\
  -solid <color>           суц╕льний кол╕р\n\n\
  -help                    вивести цю п╕дказку ╕ вийти\n

