% �ۑ�U�@�摜�̓�l��
% ���L�̃v���O�������Q�l�ɂ��ĉ摜���l������D

clear; % �ϐ��̃I�[���N���A

ORG=imread('org_img/NEKO.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause; % �ꎞ��~


IMG = ORG>128; % 128�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause; % �ꎞ��~

IMG = dither(ORG); % �f�B�U�@�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause; % �ꎞ��~
