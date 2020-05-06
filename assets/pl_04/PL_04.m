%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  PL 04                                      %
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.
% img_2 = imread("imp_digital.tif");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.A.
% img_2_double = im2double(img_2);
% figure()
% subplot(1, 2, 1), imshow(img_2_double)
% subplot(1, 2, 2), imhist(img_2_double)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.B.
% img_2_double = im2double(img_2);
% threshold = 0.48235; % from histogram visualization (using zoom tool)
% img_2_binary = im2bw(img_2_double, threshold);
% figure()
% subplot(1, 2, 1), imshow(img_2_double)
% subplot(1, 2, 2), imshow(img_2_binary)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.C.
% img_2_double = im2double(img_2);

% threshold = 0.48235; % from histogram visualization (using zoom tool)
% img_2_binary = im2bw(img_2_double, threshold);

% [T, MS] = graythresh(img_2_double);
% img_2_binary_otsu = im2bw(img_2_double, T);
% % T = Threshold by Otsu method
% % MS = measure of separability

% T

% figure()
% subplot(1, 2, 1), imshow(img_2_binary)
% subplot(1, 2, 2), imshow(img_2_binary_otsu)

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.
% img_4 = imread("celulas_levedura.tif");
% img_4_double = im2double(img_4);

% T = multithresh(img_4_double, 2);
% img_4_double_2_levels = imquantize(img_4_double, T);

% figure()
% subplot(1, 2, 1), imshow(img_4_double)
% subplot(1, 2, 2), imshow(img_4_double_2_levels, [])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.
% img_5 = imread("smarties.tif");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.A.
% [rows, cols] = size(img_5);

% % Defining slices
% r1 = 1;
% c1 = 1;
% r2 = round(rows / 2);
% c2 = round(cols / 2);
% r3 = rows - 1;
% c3 = cols - 1;

% % Slicing image in 4 pieaces
% img_5_tl = img_5(r1:r2, c1:c2);
% img_5_tr = img_5(r1:r2, c2:c3);
% img_5_bl = img_5(r2:r3, c1:c2);
% img_5_br = img_5(r2:r3, c2:c3);

% figure()
% subplot(2, 3, 1), imshow(img_5), title('img\_5 original')
% subplot(2, 3, 2), imshow(img_5_tl), title('img\_5\_tl')
% subplot(2, 3, 3), imshow(img_5_tr), title('img\_5\_tr')
% subplot(2, 3, 5), imshow(img_5_bl), title('img\_5\_bl')
% subplot(2, 3, 6), imshow(img_5_br), title('img\_5\_br')

% T = [135 150 170];
% img_5_3_levels = imquantize(img_5, T);
% img_5_tl_3_levels = imquantize(img_5_tl, 170);
% img_5_tr_3_levels = imquantize(img_5_tr, 135);
% img_5_bl_3_levels = imquantize(img_5_bl, 150);
% img_5_br_3_levels = imquantize(img_5_br, 135);

% figure()
% subplot(2, 3, 1), imshow(img_5_3_levels, []), title('img\_5\_3\_levels')
% subplot(2, 3, 2), imshow(img_5_tl_3_levels, []), title('img\_5\_tl\_3\_levels')
% subplot(2, 3, 3), imshow(img_5_tr_3_levels, []), title('img\_5\_tr\_3\_levels')
% subplot(2, 3, 5), imshow(img_5_bl_3_levels, []), title('img\_5\_bl\_3\_levels')
% subplot(2, 3, 6), imshow(img_5_br_3_levels, []), title('img\_5\_br\_3\_levels')

% % Merging slices together
% img_5_final = [
%             img_5_tl_3_levels img_5_tr_3_levels;
%             img_5_bl_3_levels img_5_br_3_levels];

% figure()
% subplot(1, 3, 1), imshow(img_5, []), title('img\_5 original')
% subplot(1, 3, 2), imshow(img_5_3_levels, []), title('img\_5\_3\_levels')
% subplot(1, 3, 3), imshow(img_5_final, []), title('img\_5\_final')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.B.
% [rows, cols] = size(img_5);

% % Defining slices
% r1 = 1;
% c1 = 1;
% r2 = round(rows / 2);
% c2 = round(cols / 2);
% r3 = rows - 1;
% c3 = cols - 1;

% % Slicing image in 4 pieaces
% T = [135 150 170];
% img_5_3_levels = imquantize(img_5, T);
% img_5_tl_3_levels = imquantize(img_5(r1:r2, c1:c2), 170);
% img_5_tr_3_levels = imquantize(img_5(r1:r2, c2:c3), 135);
% img_5_bl_3_levels = imquantize(img_5(r2:r3, c1:c2), 150);
% img_5_br_3_levels = imquantize(img_5(r2:r3, c2:c3), 135);

% % Merging slices together
% img_5_final = [
%             img_5_tl_3_levels img_5_tr_3_levels;
%             img_5_bl_3_levels img_5_br_3_levels];

% img_5_double = im2double(img_5);
% [T2, MS] = graythresh(img_5_double);
% img_5_binary_otsu = im2bw(img_5_double, T2);

% figure()
% subplot(2, 2, 1), imshow(img_5, []), title('img\_5 original')
% subplot(2, 2, 2), imshow(img_5_3_levels, []), title('img\_5\_3\_levels')
% subplot(2, 2, 3), imshow(img_5_final, []), title('img\_5\_final')
% subplot(2, 2, 4), imshow(img_5_binary_otsu, []), title('img\_5\_binary\_otsu')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.C.
% % Solution inspired by PL_03, exercise 5.D.
% img_5_bkg = ordfilt2(img_5, 525, ones(25, 25));
% img_5_mg = imsubtract(img_5_bkg, img_5);
% img_5_bin = imbinarize(img_5_mg, 'adaptive');
% img_5_open = imopen(img_5_bin, strel('disk', 5));
% img_5_final = imopen(img_5_open, strel('square', 5));

% figure(),
% subplot(1, 2, 1), imshow(img_5_bkg), title('background'),
% subplot(1, 2, 2), imshow(img_5_final), title('segmented image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.
img_6 = imread("Hubble.tif");
T = 90;
img_6_gt = imquantize(img_6, T);

% figure(),
% subplot(1, 2, 1), imshow(img_6), title('original image'),
% subplot(1, 2, 2), imshow(img_6_gt, []), title('global T'),

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.A.
% S = 90;
% T = 90;
% [g_1, NR, SI, TI] = regiongrow(img_6, S, T);
% [g_2, NR, SI, TI] = regiongrow(img_6, 100, T);
% [g_3, NR, SI, TI] = regiongrow(img_6, 110, T);
% [g_4, NR, SI, TI] = regiongrow(img_6, 140, T);
% [g_5, NR, SI, TI] = regiongrow(img_6, 180, T);
% [g_6, NR, SI, TI] = regiongrow(img_6, 80, T);
% [g_7, NR, SI, TI] = regiongrow(img_6, 70, T);
% [g_8, NR, SI, TI] = regiongrow(img_6, 40, T);
% [g_9, NR, SI, TI] = regiongrow(img_6, 45, T);

% S = 240;
% T = 240;
% [g_10, NR, SI, TI] = regiongrow(img_6, S, T);
% [g_11, NR, SI, TI] = regiongrow(img_6, 250, T);
% [g_12, NR, SI, TI] = regiongrow(img_6, 260, T);
% [g_13, NR, SI, TI] = regiongrow(img_6, 290, T);
% [g_14, NR, SI, TI] = regiongrow(img_6, 480, T);
% [g_15, NR, SI, TI] = regiongrow(img_6, 230, T);
% [g_16, NR, SI, TI] = regiongrow(img_6, 220, T);
% [g_17, NR, SI, TI] = regiongrow(img_6, 190, T);
% [g_18, NR, SI, TI] = regiongrow(img_6, 120, T);

% figure(),
% subplot(1, 2, 1), imshow(img_6), title('original image'),
% subplot(1, 2, 2), imshow(img_6_gt, []), title('global T'),

% figure(),
% subplot(3, 6, 1), imshow(g_1, []), title('T = 90; S = 90'),
% subplot(3, 6, 2), imshow(g_2, []), title('T = 90; S = (90+10)'),
% subplot(3, 6, 3), imshow(g_3, []), title('T = 90; S = (90+20)'),
% subplot(3, 6, 4), imshow(g_4, []), title('T = 90; S = (90+50)'),
% subplot(3, 6, 5), imshow(g_5, []), title('T = 90; S = (90*2)'),
% subplot(3, 6, 6), imshow(g_6, []), title('T = 90; S = (90-10)'),
% subplot(3, 6, 7), imshow(g_7, []), title('T = 90; S = (90-20)'),
% subplot(3, 6, 8), imshow(g_8, []), title('T = 90; S = (90-50)'),
% subplot(3, 6, 9), imshow(g_9, []), title('T = 90; S = (90/2)'),
% subplot(3, 6, 10), imshow(g_10, []), title('T = 240; S = 240'),
% subplot(3, 6, 11), imshow(g_11, []), title('T = 240; S = (240+10)'),
% subplot(3, 6, 12), imshow(g_12, []), title('T = 240; S = (240+20)'),
% subplot(3, 6, 13), imshow(g_13, []), title('T = 240; S = (240+50)'),
% subplot(3, 6, 14), imshow(g_14, []), title('T = 240; S = (240*2)'),
% subplot(3, 6, 15), imshow(g_15, []), title('T = 240; S = (240-10)'),
% subplot(3, 6, 16), imshow(g_16, []), title('T = 240; S = (240-20)'),
% subplot(3, 6, 17), imshow(g_17, []), title('T = 240; S = (240-50)'),
% subplot(3, 6, 18), imshow(g_18, []), title('T = 240; S = (240/2)'),

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.B.
S = img_6 > 240;
[img_6_final, NR, SI, TI] = regiongrow(img_6, S, T);

figure(),
subplot(1, 3, 1), imshow(img_6), title('original image'),
subplot(1, 3, 2), imshow(im2bw(img_6_final), []), title('Final image bin'),
% subplot(1, 3, 2), imshow(img_6_final, []), title('final image'),
subplot(1, 3, 3), imshow(img_6_gt, []), title('global T'),
% subplot(2, 3, 5), imshow(TI, []), title('TI'),
% subplot(2, 3, 6), imshow(SI, []), title('SI'),

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.
% Use the K-means clustering for segmenting the “retinograma.tif” image. Use
% the default parameters and set the random seed to 1 via “rng(1)”. After
% reading the image, assess the segmentation results for different values of
% k using:

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.A.
% The RGB channels as features;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.B.
% Different combinations of 1 and 2 image color channels as input.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8.
% The “BWCircles.tif" image (left) must be segmented for separating the
% circular objects that can be observed in the figure. Implement a
% watershed-based methodology to obtain a result similar to the one shown in
% the right image.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.
% Consider again the "smarties.tif" image shown in the figure on the left and
% the images that resulted from two segmentation procedures based on
% watersheds. Write a set of instructions in Matlab for obtaining segmentation
% results similar to those shown in the following figures.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.A.
% Apply watershed directly to the image;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.B.
% Smooth the image via appropriate morphological operations prior to the
% watershed;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.C.
% Use an edge enhancement technique, followed by noise removal, prior to the
% watershed;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 10.
% Implement the k-means clustering method by hand (i.e., without using the
% kmeans function from MATLAB) for segmenting the image of problem 2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funções
