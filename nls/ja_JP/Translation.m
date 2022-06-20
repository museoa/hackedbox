$set 1 #BaseDisplay

1 %s:  X エラー: %s(%d) opcodes %d/%d\n  resource 0x%lx\n
2 %s: シグナル %d 発生\n
3 終了\n
4 中止 ... コアダンプ中.\n
5 BaseDisplay::BaseDisplay: X サーバへの接続に失敗\n
6 BaseDisplay::BaseDisplay: ディスプレイ接続に実行時クローズフラグをたてることができませんでした\n
7 BaseDisplay::eventLoop(): イベントキューから不正なウィンドウを消します\n

$set 2 #Basemenu

1 Blackbox メニュー

$set 3 #Configmenu

1 設定オプション
2 フォーカスモデル
3 ウィンドウ配置
4 画像ディザ
5 不透明にしてウィンドウを移動
6 完全最大化
7 新規ウィンドウにフォーカス
8 ワークスペース移動時にウィンドウにフォーカス
9 スクロールロック時にショートカットを無効に
10 クリックでフォーカス
11 Sloppy Focus
12 自動的に前面に
13 クリックで前面に
14 賢く配置 (行)
15 賢く配置 (列)
16 ずらして配置
17 左から右へ
18 右から左へ
19 上から下へ
20 下から上へ

$set 4 #Icon

1 アイコン

$set 5 #Image

1 BImage::render_solid: ピックスマップ生成エラー\n
2 BImage::renderXImage: XImage 生成エラー\n
3 BImage::renderXImage: 未サポートの視覚効果\n
4 BImage::renderPixmap: ピックスマップ生成エラー\n
5 BImageControl::BImageControl: 不正なカラーマップサイズ %d (%d/%d/%d) - 減色中\n
6 BImageControl::BImageControl: カラーマップ確保エラー\n
7 BImageControl::BImageControl: カラー %d/%d/%d の確保に失敗\n
8 BImageControl::~BImageControl: ピックスマップキャッシュ -  %d ピックスマップを解放\n
9 BImageControl::renderImage: キャッシュが大きすぎるので強制的に掃除\n
10 BImageControl::getColor: カラー解析エラー: '%s'\n
11 BImageControl::getColor: カラー確保エラー: '%s'\n

$set 6 #Screen

1 BScreen::BScreen: X サーバ問合せ中にエラー発生\n  \
他のウィンドウマネージャがディスプレイ %s で既に実行中です.\n
2 BScreen::BScreen: スクリーン %d を視覚効果 0x%lx, 深度 %d で制御中\n
3 BScreen::LoadStyle(): フォント '%s' を読み込めませんでした\n
4 BScreen::LoadStyle(): 標準フォントを読み込めませんでした\n
5 %s: 空のメニューファイル\n
6 xterm
7 再起動
8 終了
9 BScreen::parseMenuFile: [exec] エラー、メニューラベル(コマンド)未定義\n
10 BScreen::parseMenuFile: [exit] エラー、メニューラベル未定義\n
11 BScreen::parseMenuFile: [style] エラー、メニューラベル(ファイル名)未定義\n
12 BScreen::parseMenuFile: [config] エラー、メニューラベル未定義\n
13 BScreen::parseMenuFile: [include] エラー、ファイル名未定義\n
14 BScreen::parseMenuFile: [include] エラー、'%s' は正規ファイルではありません\n
15 BScreen::parseMenuFile: [submenu] エラー、メニューラベル未定義\n
16 BScreen::parseMenuFile: [restart] エラー、メニューラベル未定義\n
17 BScreen::parseMenuFile: [reconfig] エラー、メニューラベル未定義\n
18 BScreen::parseMenuFile: [stylesdir/stylesmenu] エラー、ディレクトリ名未定義\n
19 BScreen::parseMenuFile: [stylesdir/stylesmenu] エラー、'%s' はディレクトリでは\
ありません\n
20 BScreen::parseMenuFile: [stylesdir/stylesmenu] エラー、'%s' は存在しません\n
21 BScreen::parseMenuFile: [workspaces] エラー、メニューラベル未定義\n
22 0: 0000 x 0: 0000
23 X: %4d x Y: %4d
24 幅: %4d x 高さ: %4d


$set 7 #Slit

1 スリット
2 スリットの方向
3 スリットの配置

$set 8 #Toolbar

1 00:00000
2 %02d/%02d/%02d
3 %02d.%02d.%02d
4  %02d:%02d 
5 %02d:%02d %sm
6 p
7 a
8 ツールバー
9 現ワークスペース名を編集
10 ツールバーの配置

$set 9 #Window


1 BlackboxWindow::BlackboxWindow: 0x%lx を生成中\n
2 BlackboxWindow::BlackboxWindow: XGetWindowAttributres 失敗\n
3 BlackboxWindow::BlackboxWindow: ルートウィンドウ 0x%lx に対するスクリーンが\
みつかりません\n
4 名前なし
5 BlackboxWindow::mapRequestEvent() (0x%lx に対して)\n
6 BlackboxWindow::unmapNotifyEvent() (0x%lx に対して)\n
7 BlackboxWindow::unmapnotifyEvent: reparent 0x%lx to 0x%lx\n

$set 10 #Windowmenu

1 送り先...
2 シェード
3 アイコン化
4 最大化
5 前面に
6 後面に
7 居座り
8 強制終了
9 終了

$set 11 #Workspace

1 ワークスペース %d

$set 12 #Workspacemenu

1 ワークスペース
2 新規ワークスペース
3 末尾ワークスペース消去

$set 13 #blackbox

1 Blackbox::Blackbox: 操作可能なスクリーンがありません、実行中止\n
2 Blackbox::process_event: MapRequest (0x%lx に対して)\n

$set 14 #Common

1 はい
2 いいえ

3 方向
4 水平
5 垂直

6 常に最前面に

7 配置
8 左上
9 左中央
10 左下
11 中央上
12 中央下
13 右上
14 右中央
15 右下

16 自動的に隠す

$set 15 #main

1 エラー: '-rc' オプションは引数を必要とします\n
2 エラー: '-display' オプションは引数を必要とします\n
3 警告: 環境変数 'DISPLAY' を設定できませんでした\n
4 Blackbox %s : (c) 2001 - 2002 Sean 'Shaleh' Perry\n\
  \t\t\t 1997 - 2000, 2002 Brad Hughes\n\n\
  -display <string>\t\t指定ディスプレイに接続\n\
  -rc <string>\t\t\t代りのリソースファイルを使用\n\
  -version\t\t\tバージョン情報を表示し、終了\n\
  -help\t\t\t\tこのヘルプを表示し、終了\n\n
5 コンパイル時オプション:\n\
  デバッグ\t\t\t%s\n\
  Shape:\t\t\t%s\n\
  8bpp ディザ:\t%s\n\n

$set 16 #bsetroot

1 %s: エラー: 次の中から一つを選択しなければなりません: -solid, -mod, -gradient\n
2 %s 2.0: (c) 1997-2000 Brad Hughes\n\n\
	  (c) 2001-2002 Sean 'Shaleh' Perry\n\n\
  -display <string>        ディスプレイを指定\n\
  -mod <x> <y>             組み合わせパターン\n\
  -foreground, -fg <color> 組み合わせ前景色\n\
  -background, -bg <color> 組み合わせ背景色\n\n\
  -gradient <texture>      グラデーションテクスチャ\n\
  -from <color>            グラデーション最初の色\n\
  -to <color>              グラデーション終りの色\n\
  -solid <color>           単色\n\n\
  -help                    このヘルプを表示し、終了\n

