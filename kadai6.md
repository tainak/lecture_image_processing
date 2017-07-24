# 課題6レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG=imread('org_img/NEKO.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し，表示したものを図1に示す．  

![図1 白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai6_0.png)  
図1 白黒濃淡画像  

次に，閾値128による二値化を行う．  

IMG = ORG>128; % 128による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

128による二値化の結果を図2に示す．  

![図2 128による二値化](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai6_1.png)  
図2 128による二値化  

次にディザ法による二値化を行う．  
ディザ法とはディザマトリックスの閾値と比較して，その閾値との大小関係で出力画像の濃淡を決定する方法である．  

IMG = dither(ORG); % ディザ法による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

ディザ法による二値化の結果を図3に示す．  

![図3 ディザ法による二値化](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai6_2.png)  
図3 ディザ法による二値化  
