% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理た画像を示せ．

clear; % 変数のオールクリア

ORG=imread('org_img/NEKO.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 96; % 輝度値が96以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 128; % 輝度値が128以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 160; % 輝度値が160以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
pause;
