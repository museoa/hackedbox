$set 1 #BaseDisplay

1 %s:  X 错误: %s(%d) opcodes %d/%d\n  resource 0x%lx\n
2 %s: 捕获信号 %d \n
3 关闭\n
4 正在退出... 存储核心数据\n
5 BaseDisplay::BaseDisplay: 连接 X 服务器失败.\n
6 BaseDisplay::BaseDisplay: couldn't mark display connection as close-on-exec\n
7 BaseDisplay::eventLoop(): 正在从事件队列中删除坏窗口\n

$set 2 #Basemenu

1 Blackbox 菜单

$set 3 #Configmenu

1 配置选项
2 聚焦模式
3 窗口放置
4 图像调谐
5 显示移动窗口内容
6 完全最大化
7 聚焦新窗口
8 桌面改变时聚焦窗口
9 Scroll Lock取消热键
10 点击聚焦
11 自动聚焦
12 自动升起
13 点击升起
14 自动放置(行)
15 自动放置(列)
16 层叠放置
17 从左到右
18 从右到左
19 从上到下
20 从下到上

$set 4 #Icon

1 图标

$set 5 #Image

1 BImage::render_solid: 创建pixmap出错\n
2 BImage::renderXImage: 创建XImage出错\n
3 BImage::renderXImage: unsupported visual\n
4 BImage::renderPixmap: 创建pixmap出错\n
5 BImageControl::BImageControl: invalid colormap size %d (%d/%d/%d) - reducing\n
6 BImageControl::BImageControl: error allocating colormap\n
7 BImageControl::BImageControl: failed to alloc color %d/%d/%d\n
8 BImageControl::~BImageControl: pixmap cache - releasing %d pixmaps\n
9 BImageControl::renderImage: cache is large, forcing cleanout\n
10 BImageControl::getColor: color parse error: '%s'\n
11 BImageControl::getColor: color alloc error: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: 查询X服务器时出错.\n  \
已经有另一个窗口管理器在运行 %s.\n
2 BScreen::BScreen: 对屏幕 %d 使用视 0x%lx, 深度 %d\n
3 BScreen::LoadStyle(): 无法载入字体 '%s'\n
4 BScreen::LoadStyle(): 无法载入默认字体.\n
5 %s: 清空菜单文件\n
6 xterm
7 重新开始
8 退出
9 BScreen::parseMenuFile: [exec] 错误, 没有菜单的标题或命令\n
10 BScreen::parseMenuFile: [exit] 错误, 没有菜单的标题\n
11 BScreen::parseMenuFile: [style] 错误, 没有菜单标题或文件名\n
12 BScreen::parseMenuFile: [config] 错误, 没有菜单标题\n
13 BScreen::parseMenuFile: [include] 错误, 没有文件名\n
14 BScreen::parseMenuFile: [include] 错误, '%s' 不是一个普通文件\n
15 BScreen::parseMenuFile: [submenu] 错误, 没有菜单标题\n
16 BScreen::parseMenuFile: [restart] 错误, 没有菜单标题\n
17 BScreen::parseMenuFile: [reconfig] 错误, 没有菜单标题\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] 错误, 没有指名目录\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] 错误, '%s' 不是目录\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] 错误, '%s' 不存在\n
21 BScreen::parseMenuFile: [workspaces] 错误, 没有菜单标题\n
22 0: 0000 x 0: 0000
23 左: %4d x 上: %4d
24 宽: %4d x 高: %4d


$set 7 #Slit

1 Slit
2 Slit 方向
3 Slit 放置

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 工具条
9 编辑桌面名
10 工具条放置

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: 正在创建 0x%lx\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres 失败\n
3 BlackboxWindow::BlackboxWindow: cannot find screen for root window 0x%lx\n
4 无命名
5 BlackboxWindow::mapRequestEvent() for 0x%lx\n
6 BlackboxWindow::unmapNotifyEvent() for 0x%lx\n
7 BlackboxWindow::reparentNotifyEvent: reparent 0x%lx to 0x%lx\n

$set 10 #Windowmenu

1 发送到...
2 卷帘
3 图标化
4 最大化
5 放前
6 放后
7 钉住
8 杀死
9 关闭

$set 11 #Workspace

1 桌面 %d

$set 12 #Workspacemenu

1 桌面
2 新建桌面
3 删除桌面

$set 13 #blackbox

1 Blackbox::Blackbox: 没有找到可控制的屏幕，退出...\n
2 Blackbox::process_event: MapRequest for 0x%lx\n

$set 14 #Common

1 是
2 否

3 方向
4 水平
5 垂直

6 总在最上面

7 放置
8 上左
9 中左
10 下左
11 上中
12 下中
13 上右
14 中右
15 下右

16 自动隐藏

$set 15 #main

1 错误: '-rc' 需要参数\n
2 错误: '-display' 需要参数\n
3 警告: 不能设置环境变量 'DISPLAY'\n
4 Blackbox %s: (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\t使用显示连接.\n\
  -rc <string>\t\t\t使用其他的资源文件.\n\
  -version\t\t\t显示版本.\n\
  -help\t\t\t\t显示这个帮助.\n\n
5 编译选项:\n\
  Debugging\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp Ordered Dithering:\t%s\n\n

$set 16 #bsetroot

1 %s: 错误: 必须从中指定一个: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        显示连接\n\
  -mod <x> <y>             模式\n\
  -foreground, -fg <color> 前景色\n\
  -background, -bg <color> 背景色\n\n\
  -gradient <texture>      渐进纹理\n\
  -from <color>            渐进开始色\n\
  -to <color>              渐进结束色\n\n\
  -solid <color>           单一色\n\n\
  -help                    显示这个帮助\n

