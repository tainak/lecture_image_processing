# 課題9レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG = imread('org_img/NEKO.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し，表示したものを図1に示す．  

![図1 白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai9_0.png)  

次に，ノイズを添付する．図1にノイズを添付したものを図2に示す．  

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

![図2 ノイズの添付](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai9_1.png)  
図2 ノイズの添付  

次に，ノイズの添付された白黒濃淡画像(図2)のノイズを平滑化フィルタによって雑音の除去を行った．結果を図3に示す．  

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

![図3 平滑化フィルタによる雑音除去](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai9_2.png)  
図3 平滑化フィルタによる雑音除去  

次に，ノイズの添付された白黒濃淡画像(図2)のノイズをメディアンフィルタによって雑音の除去を行った．結果を図4に示す．  

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

![図4 メディアンフィルタによる雑音除去](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai9_3.png)  
図4 メディアンフィルタによる雑音除去  

次に，図4のメディアンフィルタによって雑音の除去された画像に先鋭化フィルタを適用する．結果を図5に示す．  

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

![図5 フィルタの適用による画像の先鋭化](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai9_4.png)  
図5 フィルタの適用による画像の先鋭化  
