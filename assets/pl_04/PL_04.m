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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.
% img_4 = imread("celulas_levedura.tif");
% img_4_double = im2double(img_4);

% T = multithresh(img_4_double, 2);
% img_4_double_2_levels = imquantize(img_4_double, T);

% figure()
% subplot(1, 2, 1), imshow(img_4_double)
% subplot(1, 2, 2), imshow(img_4_double_2_levels, [])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.A.
% img_5 = imread("smarties.tif");
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
% img_5 = imread("smarties.tif");
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
img_5 = imread("smarties.tif");

% Solution inspired by PL_03, exercise 5.D.
img_5_bkg = ordfilt2(img_5, 525, ones(25, 25));
img_5_mg = imsubtract(img_5_bkg, img_5);
img_5_bin = imbinarize(img_5_mg, 'adaptive');
img_5_open = imopen(img_5_bin, strel('disk', 5));
img_5_final = imopen(img_5_open, strel('square', 5));

figure(),
subplot(1, 2, 1), imshow(img_5_bkg), title('background'),
subplot(1, 2, 2), imshow(img_5_final), title('segmented image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.
% In the “Hubble.tif” image (left figure) we aim to segment only the objects
% with the brightest nucleus to obtain a final image similar to that shown in
% the center. After verifying that a threshold value equal to 90 (in the range
% 0-255) allowed the correct detection of the contours of the above mentioned
% objects, we applied a segmentation method based on histogram with this global
% threshold value obtaining the image shown on the right. As can be seen, this
% result is not satisfactory since all image objects are segmented. To solve
% this problem, we chose to use a segmentation method based on region growing.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.A.
% Analyze the function to perform region growing segmentation whose code is
% available in the file “regiongrow.m”.
% [g, NR, SI, TI] = regiongrow(f, S, T)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.B.
% Write a set of instructions to segment the “Hubble.tif” image and get an
% image similar to that shown in the center. (To create the seed image for the
% region growing you may consider that all the objects we want to segment have
% nuclei with intensity greater than 240).

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
