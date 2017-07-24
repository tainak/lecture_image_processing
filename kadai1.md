# 課題1レポート

「NEKO.jpg」を原画像とする．
この画像は縦1066画素，横1600画素のディジタルカラー画像である．

ORG=imread('org_img/NEKO.jpg'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示  

によって原画像を読み込み，表示したものを図1に示す．

![図1 原画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai1_0.png)  
図1 原画像  

元画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．  
なお，拡大する際には，単純補間するために「box」オプションを設定する．  

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大  
imagesc(IMG2); axis image; % 画像の表示  

1/2サンプリングの結果を図2に示す．  
![図2 1/2サンプリング](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai1_1.png)  
図2 1/2サンプリング  

同様に，1/4サンプリングするには，画像を1/2倍に縮小した後，4倍に拡大すればよい．  

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,4,'box'); % 画像の拡大  
imagesc(IMG2); axis image; % 画像の表示  

1/4サンプリングの結果を図3に示す.  
![図3 1/4サンプリング](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai1_2.png)  
図3 1/4サンプリング  

1/8サンプリング．  

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,8,'box'); % 画像の拡大  
imagesc(IMG2); axis image; % 画像の表示  

1/8サンプリングの結果を図4に示す．  
![図4 1/8サンプリング](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai1_3.png)  
図4 1/8サンプリング  

1/16サンプリング．  

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,16,'box'); % 画像の拡大  
imagesc(IMG2); axis image; % 画像の表示  

1/16サンプリングの結果を図5に示す．  
![図5 1/16サンプリング](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai1_4.png)  
図5 1/16サンプリング  

1/32サンプリング．  

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,32,'box'); % 画像の拡大  
imagesc(IMG2); axis image; % 画像の表示  

1/32サンプリングの結果を図5に示す．  
![図6 1/32サンプリング](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai1_5.png)  
図6 1/32サンプリング  

これらの結果から，画像のダウンサンプリング(標本化間隔の拡大)を行うと，  
標本化間隔が大きいほど，大きなモザイク状のサンプリング歪が発生することが分かった．  
