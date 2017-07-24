# 課題8レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG = imread('org_img/NEKO.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し，表示したものを図1に示す．  

![図1 白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai8_0.png)  
図1 白黒濃淡画像  

次に，閾値128で二値化を行った．結果を図2に示す．  

IMG = ORG > 128; % 閾値128で二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

![図2 閾値128で二値化](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai8_1.png)  
図2 閾値128で二値化  

次に，図2の閾値128で二値化された画像の連結成分にラベル付けを行った．結果を図3に示す．  

IMG = bwlabeln(IMG); % 連結要素をラベル付け  
imagesc(IMG); colormap(jet); colorbar; % 画像の表示  

![図3 連結成分へのラベル付け](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai8_2.png)  
図3 連結成分へのラベル付け  

背景の壁面や目の下の毛の白い部分で連結成分へのラベル付けの特徴を観測することができる．  
