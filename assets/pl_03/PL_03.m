%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  PL 03                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% email prof: tfaraujo@fe.up.pt
% aresta@fe.up.pt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.
% Escrever em papel o código abaixo antes de implementá-lo.
% ex_1 = [
%     [8 1 22 29 9 1 1]
% [9 21 21 25 22 5 3]
% [7 23 22 3 5 6 7]
% [8 26 21 2 1 25 9]
% [10 23 24 20 2 29 10]
% [11 2 25 21 26 25 5]
% [5 3 5 21 25 0 1]
% [4 5 9 10 11 13 6]];

% % se = strel(shape, parameters)
% ex_1_se = strel('square', 3);

% % g = imdilate(f, B)
% ex_1_dilation = imdilate(ex_1, ex_1_se);

% % g = imerode(f, B)
% ex_1_erosion = imerode(ex_1, ex_1_se);

% % g = imopen(f, B)
% % g = bwmorph(f, operation, n)
% % ex_1_opening = imdilate(ex_1_erosion, ex_1_se);
% ex_1_opening = imopen(ex_1, ex_1_se);
% ex_1_opening2 = bwmorph(ex_1,  'open');

% % g = imclose(f, B)
% % g = bwmorph(f, operation, n)
% % ex_1_closing = imerode(ex_1_dilation, ex_1_se);
% ex_1_closing = imclose(ex_1, ex_1_se);
% ex_1_closing2 = bwmorph(ex_1,  'close');

% figure(1)
% subplot(3, 3, 1), imshow(ex_1), title('original image')
% subplot(3, 3, 2), imshow(ex_1_dilation), title('Image dilation')
% subplot(3, 3, 3), imshow(ex_1_erosion), title('Image erosion')
% subplot(3, 3, 6), imshow(ex_1_opening), title('Image opening')
% subplot(3, 3, 5), imshow(ex_1_closing), title('Image closing')
% subplot(3, 3, 9), imshow(ex_1_opening2), title('Image opening 2')
% subplot(3, 3, 8), imshow(ex_1_closing2), title('Image closing 2')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.
% img_2 = imread("imp_digital_ruido.tif");
% ex_2_se = strel('square', 3);

% figure(2)
% subplot(1, 2, 1), imshow(img_2), title('original image')
% subplot(1, 2, 2), imshow(imopen(img_2, ex_2_se)), title('processed image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.
% img_3 = imread("EDorsal(MRI).tif");
% ex_3_se = strel('square', 3);
% img_3_dilation = imdilate(img_3, ex_3_se);
% img_3_erosion = imerode(img_3, ex_3_se);
% img_3_mg = imsubtract(img_3_dilation, img_3_erosion);

% figure(3)
% subplot(2, 2, 1), imshow(img_3), title('original image')
% subplot(2, 2, 2), imshow(img_3_dilation), title('processed image (dilation)')
% subplot(2, 2, 3), imshow(img_3_erosion), title('processed image (erosion)')
% subplot(2, 2, 4), imshow(img_3_mg), title('processed image (morph. grad.)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.A.
img_4 = imread("histo_1.tif");
ex_4_se = strel('square', 3);
img_4_dilation = imdilate(img_4, ex_4_se);
img_4_erosion = imerode(img_4, ex_4_se);
img_4_a = imclose(img_4, ex_4_se);
img_4_b = imopen(img_4, ex_4_se);

figure(4)
subplot(2, 3, 1), imshow(img_4), title('original image')
subplot(2, 3, 2), imshow(img_4_a), title('close image')
subplot(2, 3, 3), imshow(img_4_a), title('open image')
subplot(2, 3, 5), imshow(img_4_dilation), title('dilation image')
subplot(2, 3, 6), imshow(img_4_erosion), title('erosion image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.B.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.A.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.B.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.C.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.D.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.A.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.B.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.C.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funções
