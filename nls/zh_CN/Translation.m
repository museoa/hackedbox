$set 1 #BaseDisplay

1 %s:  X ����: %s(%d) opcodes %d/%d\n  resource 0x%lx\n
2 %s: �����ź� %d \n
3 �ر�\n
4 �����˳�... �洢��������\n
5 BaseDisplay::BaseDisplay: ���� X ������ʧ��.\n
6 BaseDisplay::BaseDisplay: couldn't mark display connection as close-on-exec\n
7 BaseDisplay::eventLoop(): ���ڴ��¼�������ɾ��������\n

$set 2 #Basemenu

1 Blackbox �˵�

$set 3 #Configmenu

1 ����ѡ��
2 �۽�ģʽ
3 ���ڷ���
4 ͼ���г
5 ��ʾ�ƶ���������
6 ��ȫ���
7 �۽��´���
8 ����ı�ʱ�۽�����
9 Scroll Lockȡ���ȼ�
10 ����۽�
11 �Զ��۽�
12 �Զ�����
13 �������
14 �Զ�����(��)
15 �Զ�����(��)
16 �������
17 ������
18 ���ҵ���
19 ���ϵ���
20 ���µ���

$set 4 #Icon

1 ͼ��

$set 5 #Image

1 BImage::render_solid: ����pixmap����\n
2 BImage::renderXImage: ����XImage����\n
3 BImage::renderXImage: unsupported visual\n
4 BImage::renderPixmap: ����pixmap����\n
5 BImageControl::BImageControl: invalid colormap size %d (%d/%d/%d) - reducing\n
6 BImageControl::BImageControl: error allocating colormap\n
7 BImageControl::BImageControl: failed to alloc color %d/%d/%d\n
8 BImageControl::~BImageControl: pixmap cache - releasing %d pixmaps\n
9 BImageControl::renderImage: cache is large, forcing cleanout\n
10 BImageControl::getColor: color parse error: '%s'\n
11 BImageControl::getColor: color alloc error: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: ��ѯX������ʱ����.\n  \
�Ѿ�����һ�����ڹ����������� %s.\n
2 BScreen::BScreen: ����Ļ %d ʹ���� 0x%lx, ��� %d\n
3 BScreen::LoadStyle(): �޷��������� '%s'\n
4 BScreen::LoadStyle(): �޷�����Ĭ������.\n
5 %s: ��ղ˵��ļ�\n
6 xterm
7 ���¿�ʼ
8 �˳�
9 BScreen::parseMenuFile: [exec] ����, û�в˵��ı��������\n
10 BScreen::parseMenuFile: [exit] ����, û�в˵��ı���\n
11 BScreen::parseMenuFile: [style] ����, û�в˵�������ļ���\n
12 BScreen::parseMenuFile: [config] ����, û�в˵�����\n
13 BScreen::parseMenuFile: [include] ����, û���ļ���\n
14 BScreen::parseMenuFile: [include] ����, '%s' ����һ����ͨ�ļ�\n
15 BScreen::parseMenuFile: [submenu] ����, û�в˵�����\n
16 BScreen::parseMenuFile: [restart] ����, û�в˵�����\n
17 BScreen::parseMenuFile: [reconfig] ����, û�в˵�����\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] ����, û��ָ��Ŀ¼\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] ����, '%s' ����Ŀ¼\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] ����, '%s' ������\n
21 BScreen::parseMenuFile: [workspaces] ����, û�в˵�����\n
22 0: 0000 x 0: 0000
23 ��: %4d x ��: %4d
24 ��: %4d x ��: %4d


$set 7 #Slit

1 Slit
2 Slit ����
3 Slit ����

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 ������
9 �༭������
10 ����������

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: ���ڴ��� 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres ʧ��\n
3 BlackboxWindow::BlackboxWindow: cannot find screen for root window 0x%lx\n
4 ������
5 BlackboxWindow::mapRequestEvent() for 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() for 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reparent 0x%lx to 0x%lx\n

$set 10 #Windowmenu

1 ���͵�...
2 ����
3 ͼ�껯
4 ���
5 ��ǰ
6 �ź�
7 ��ס
8 ɱ��
9 �ر�

$set 11 #Workspace

1 ���� %d

$set 12 #Workspacemenu

1 ����
2 �½�����
3 ɾ������

$set 13 #blackbox

1 Blackbox::Blackbox: û���ҵ��ɿ��Ƶ���Ļ���˳�...\n
2 Blackbox::process_event: MapRequest for 0x%lx\n

$set 14 #Common

1 ��
2 ��

3 ����
4 ˮƽ
5 ��ֱ

6 ����������

7 ����
8 ����
9 ����
10 ����
11 ����
12 ����
13 ����
14 ����
15 ����

16 �Զ�����

$set 15 #main

1 ����: '-rc' ��Ҫ����\n
2 ����: '-display' ��Ҫ����\n
3 ����: �������û������� 'DISPLAY'\n
4 Blackbox %s: (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\tʹ����ʾ����.\n\
  -rc <string>\t\t\tʹ����������Դ�ļ�.\n\
  -version\t\t\t��ʾ�汾.\n\
  -help\t\t\t\t��ʾ�������.\n\n
5 ����ѡ��:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: ����: �������ָ��һ��: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        ��ʾ����\n\
  -mod <x> <y>             ģʽ\n\
  -foreground, -fg <color> ǰ��ɫ\n\
  -background, -bg <color> ����ɫ\n\n\
  -gradient <texture>      ��������\n\
  -from <color>            ������ʼɫ\n\
  -to <color>              ��������ɫ\n\n\
  -solid <color>           ��һɫ\n\n\
  -help                    ��ʾ�������\n

