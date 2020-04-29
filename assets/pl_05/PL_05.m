%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  PL 05                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% email prof: tfaraujo@fe.up.pt
% aresta@fe.up.pt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.
% Escrever em papel.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.A.
% img_1 = [[6 6 6 5 5 6 6]
%          [6 4 3 4 4 4 7]
%          [6 4 5 6 3 4 7]
%          [5 3 6 7 6 4 5]
%          [5 3 4 8 6 4 5]
%          [5 5 4 2 3 4 5]
%          [6 5 4 4 4 4 6]
%          [7 6 6 5 5 6 7]];
%
% int_v >= 8;
% int >= (img_mean - 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.A.
% Img_2 = imread("imp_digital.tif");
% Img_2_double = im2double(Img_2);
% figure()
% subplot(1, 2, 1), imshow(Img_2_double)
% subplot(1, 2, 2), imhist(Img_2_double)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.B.
% Img_2 = imread("imp_digital.tif");
% Img_2_double = im2double(Img_2);
% threshold = 0.48235; % from histogram visualization (using zoom tool)
% Img_2_binary = im2bw(Img_2_double, threshold);
% figure()
% subplot(1, 2, 1), imshow(Img_2_double)
% subplot(1, 2, 2), imshow(Img_2_binary)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.C.
% Img_2 = imread("imp_digital.tif");
% Img_2_double = im2double(Img_2);

% threshold = 0.48235; % from histogram visualization (using zoom tool)
% Img_2_binary = im2bw(Img_2_double, threshold);

% [T, MS] = graythresh(Img_2_double);
% Img_2_binary_otsu = im2bw(Img_2_double, T);
% % T = Threshold by Otsu method
% % MS = measure of separability

% threshold
% T

% figure()
% subplot(1, 2, 1), imshow(Img_2_binary)
% subplot(1, 2, 2), imshow(Img_2_binary_otsu)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.
% Img_3 = imread("celulas_1.tif");
% Img_3_double = im2double(Img_3);
% % figure()
% subplot(1,2,1), imshow(Img_3_double)
% % subplot(1,2,2), imhist(Img_3_double)

% % [T, MS] = multithresh(Img_3_double, 2)
% % T = Threshold by Otsu method
% % MS = measure of separability
% % N = number of thresholds
% T = multithresh(Img_3_double, 2);
% Img_3_double_2_levels = imquantize(Img_3_double, T);
% imshow(Img_3_double_2_levels, [])

% save("pl_04_leandro.mat")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.
% img_4 = imread("celulas_levedura.tif");
% img_4_double = im2double(img_4);

% T = multithresh(img_4_double, 2);
% img_4_double_2_levels = imquantize(img_4_double, T);

% figure()
% subplot(1, 2, 1), imshow(img_4_double)
% subplot(1, 2, 2), imshow(img_4_double_2_levels, [])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.
img_5 = imread("smarties.tif");
% [g, NR, SI, TI] = regiongrow(f, S, T)

figure()
subplot(1, 4, 1), imshow(img_5), title('img_5 original')
subplot(1, 4, 2), imshow(img_5_135), title('img_5 threshold_135')
subplot(1, 4, 3), imshow(img_5_150), title('img_5 threshold_150')
subplot(1, 4, 4), imshow(img_5_170), title('img_5 threshold_170')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.A.
% img_5 = imread("smarties.tif");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.B.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.C.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.A.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.B.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.A.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.B.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.A.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.B.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.C.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 10.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funções
