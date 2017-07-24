# 課題7レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG = imread('org_img/NEKO.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し，表示したものを図1に示す．  

![図1 白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai7_0.png)  
図1 白黒濃淡画像  

imhist(ORG); % 濃度ヒストグラムを生成、表示  

によって，白黒濃淡画像のヒストグラムを生成した．結果を図2に示す．  

![図2 白黒濃淡画像のヒストグラム](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai7_1.png)  
図2 白黒濃淡画像のヒストグラム  

次に，白黒濃淡画像のダイナミックレンジを拡大する．  

ORG = double(ORG);  
mn = min(ORG(:)); % 濃度値の最小値を算出  
mx = max(ORG(:)); % 濃度値の最大値を算出  
ORG = (ORG-mn)/(mx-mn)*255;  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

ダイナミックレンジを拡大した白黒濃淡画像を図3に示す  

![図3 ダイナミックレンジを拡大した白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai7_2.png)  
図1 白黒濃淡画像  

ORG = uint8(ORG); % この行について考察せよ  
imhist(ORG); % 濃度ヒストグラムを生成、表示  

では，ダイナミックレンジ拡大後のヒストグラムを生成した．結果を図4に示す．  

![図4 ダイナミックレンジ拡大後のヒストグラム](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai7_3.png)  
図4 ダイナミックレンジ拡大後のヒストグラム  

ORG = uint8(ORG); は，  
ダイナミックレンジを拡大処理する際に整数型で保持していた画素の輝度値を浮動小数点数型に型変換したため，もとの8ビット符号なし整数へ戻す処理である．  
これは，ダイナミックレンジを拡大処理するときに整数未満の値の欠損によって理想の結果を得ることができなくなることを防ぐためである．  
