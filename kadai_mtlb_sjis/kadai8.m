% �ۑ�W ���x�����O
% ��l�����ꂽ�摜�̘A�������Ƀ��x��������D

clear; % �ϐ��̃I�[���N���A

ORG = imread('org_img/NEKO.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;

IMG = ORG > 128; % 臒l128�œ�l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause;

IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % �摜�̕\��
pause;
