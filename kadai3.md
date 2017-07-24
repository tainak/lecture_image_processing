# 課題3レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG=imread('org_img/NEKO.jpg'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって原画像を読み込み，カラー画像を白黒濃淡画像へ変換し表示したものを図1に示す.  

![図1 白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai3_0.png)  
図1 白黒濃淡画像  

図1の輝度値が64以上の画素を1，その他を0に変換する．  

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;  

輝度値が64以上の画素を1，その他を0に変換した結果を図2に示す．  

![図2 輝度値が64以上の画素を1，その他を0](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai3_1.png)  
図2 輝度値が64以上の画素を1，その他を0  

同様に図1の輝度値が96以上の画素を1，その他を0に変換する．  

IMG = ORG > 96; % 輝度値が96以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;  

輝度値が96以上の画素を1，その他を0に変換した結果を図2に示す．  

![図3 輝度値が96以上の画素を1，その他を0](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai3_2.png)  
図3 輝度値が96以上の画素を1，その他を0  

図1の輝度値が128以上の画素を1，その他を0に変換する．  

IMG = ORG > 128; % 輝度値が128以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;  

輝度値が128以上の画素を1，その他を0に変換した結果を図2に示す．  

![図4 輝度値が128以上の画素を1，その他を0](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai3_3.png)  
図4 輝度値が128以上の画素を1，その他を0  

同様に図1の輝度値が160以上の画素を1，その他を0に変換する．  

IMG = ORG > 160; % 輝度値が160以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar;  

輝度値が160以上の画素を1，その他を0に変換した結果を図2に示す．  

![図5 輝度値が160以上の画素を1，その他を0に変換](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai3_4.png)  
図5 輝度値が160以上の画素を1，その他を0に変換  

これらの結果から,図1の白黒濃淡画像の背景(被写体以外)は輝度値が64以上であることが言える．　　
また，図1の白黒濃淡画像には輝度値が160以上の画素があまりないことがわかる．  
