# 課題5レポート

「NEKO.jpg」を原画像とする． この画像は縦1066画素，横1600画素のディジタルカラー画像である．  

ORG=imread('org_img/NEKO.jpg'); % 原画像の入力  
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar;  

によって原画像を読み込み，カラー画像を白黒濃淡画像へ変換し表示したものを図1に示す.  

![図1 白黒濃淡画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai5_0.png)  
図1 白黒濃淡画像  

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納  
myu_T = mean(H);  
max_val = 0;  
max_thres = 1;  
for i=1:255  
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける  
C2 = H(i+1:256);  
n1 = sum(C1); %画素数の算出  
n2 = sum(C2);  
myu1 = mean(C1); %平均値の算出  
myu2 = mean(C2);  
sigma1 = var(C1); %分散の算出  
sigma2 = var(C2);  
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出  
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出  
if max_val<sigma_B/sigma_w  
max_val = sigma_B/sigma_w;  
max_thres =i;  
end;  
end;  

では，判別分析法の処理を行っている．判別分析法とは「対象物の濃度と，背景の濃度とがそれぞれ最も良くまとまり，かつ対象物と背景との違いが際立つようにしきい値を定める方法」(出典:画像処理工学(著:村上伸一))である．  

判別分析法を用いて2値化した画像を図2に示す．  

![図2 判別分析法を用いて2値化した画像](https://github.com/tainak/lecture_image_processing/blob/master/repo_img/kadai5_1.png)  
図2 判別分析法を用いて2値化した画像  

図2をみると，残念ながら対象物の濃度と，背景の濃度がそれぞれ最も良くまとまり，違いが際立つような2値化をすることができなかった．  
しかしながら，  

* 課題3の結果より，被写体は輝度値64未満の画素を多く含んでいる  
* 課題4の結果より， 輝度値150近辺の画素が非常に多く含まれている  

をふまえたうえで，課題4のヒストグラムと図2をみると，  
判別分析法の欠点である「対象物と背景の画素数の比が大きく異なるとき，画素の多い輝度へしきい値が偏る」を確認することができる．  
