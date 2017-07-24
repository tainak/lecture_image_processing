# 課題4レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG=imread('org_img/NEKO.jpg'); % 原画像の入力  
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar;  

によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し，表示したものを図1に示す．  

![図1 白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai4_0.png)  
図1 白黒濃淡画像  

imhist(ORG); % ヒストグラムの表示  

によって，図1のヒストグラムを表示した．これを図2に示す．  

![図2 ヒストグラム](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai4_1.png)  
図2 ヒストグラム  

図2のヒストグラムより，図1の白黒濃淡画像には輝度値150程度の画素が多く含まれており，輝度値180以上の画素はほとんど含まれないことが言える．  
課題4の結果をふまえ，課題3の結果を比較してみるのも，おもしろいだろう．  
