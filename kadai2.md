# 課題2レポート

「NEKO.jpg」を原画像とする．  
この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG=imread('org_img/NEKO.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar; % 原画像のグレースケール化  
imagesc(ORG); axis image; % 画像の表示  

によって原画像を読み込み，グレースケール化し，表示したものを図1に示す．  

![図1 グレースケール](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai2_0.png)  
図1 グレースケール  

次に，グレースケール画像の２階調化，４階調化，８階調化を行う．  
グレースケール画像は2進数で8ビット分，10進数では0から255の256種の値で表現することができる．  
そのため，0から255の間で任意の閾値を複数設定しすることで階調数を増減することができる．

下は閾値128で2階調化を行ったものである．  
128未満は白で表現される．  

IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

2階調化の結果を図2に示す．  

![図2 2階調化](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai2_1.png)  
図2 2階調化  

同様に4階調化を行った．  

IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

4階調化の結果を図3に示す．  

![図3 4階調化](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai2_2.png)  
図3 4階調化  

8階調化  

IMG0 = ORG>32;  
IMG1 = ORG>64;  
IMG2 = ORG>96;  
IMG3 = ORG>128;  
IMG4 = ORG>160;  
IMG5 = ORG>192;  
IMG6 = ORG>224;  
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

8階調化の結果を図4に示す．  

![図4 8階調化](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai2_3.png)  
図4 8階調化  

これらの結果から，階調が増えるにつれ被写体と背景の輪郭が滑らかに表現され奥行きが増すということが言える．  
また階調が増えることで，被写体の認知，周辺環境(背景)の認知が行いやすくなった．   
