# 課題10レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG = imread('org_img/NEKO.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換  
imagesc(ORG); colormap('gray'); colorbar;% 画像表示  

によって，原画像を読み込み，カラー画像をグレースケール画像へ変換し，表示したものを図1に示す．  

![図1 グレースケール画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai10_0.png)  
図1 グレースケール画像  

次に，プレウィット法によるエッジ抽出を行った．結果を図2に示す．  

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  

![図2 プレウィット法によるエッジ抽出](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai10_1.png)  
図2 プレウィット法によるエッジ抽出  

次に，ソベル法によるエッジ抽出を行った．結果を図3に示す．  

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  

![図3 ソベル法によるエッジ抽出](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai10_2.png)  
図3 ソベル法によるエッジ抽出  

次に，キャニー法によるエッジ抽出を行った．結果を図4に示す．  

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
imagesc(IMG); colormap('gray'); colorbar;% 画像表示  

![図4 キャニー法によるエッジ抽出](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai10_3.png)  
図4 キャニー法によるエッジ抽出  
