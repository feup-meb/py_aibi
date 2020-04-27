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

% figure()
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

% figure()
% subplot(1, 2, 1), imshow(img_2), title('original image')
% subplot(1, 2, 2), imshow(imopen(img_2, ex_2_se)), title('processed image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.
% img_3 = imread("EDorsal(MRI).tif");
% ex_3_se = strel('square', 3);
% img_3_dilation = imdilate(img_3, ex_3_se);
% img_3_erosion = imerode(img_3, ex_3_se);
% img_3_mg = imsubtract(img_3_dilation, img_3_erosion);

% figure()
% subplot(2, 2, 1), imshow(img_3), title('original image')
% subplot(2, 2, 2), imshow(img_3_dilation), title('processed image (dilation)')
% subplot(2, 2, 3), imshow(img_3_erosion), title('processed image (erosion)')
% subplot(2, 2, 4), imshow(img_3_mg), title('processed image (morph. grad.)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.A.
% img_4 = imread("histo_1.tif");
% ex_4_se_3 = strel('square', 3);
% img_4_a = imclose(img_4, ex_4_se_3);
% img_4_b = imopen(img_4, ex_4_se_3);

% img_4_c = imopen(img_4_a, ex_4_se_3);
% img_4_d = imclose(img_4_b, ex_4_se_3);

% figure()
% subplot(1, 3, 1), imshow(img_4), title('original image')
% subplot(1, 3, 2), imshow(img_4_c), title('open on close image')
% subplot(1, 3, 3), imshow(img_4_d), title('close on open image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.B.
% img_4 = imread("histo_1.tif");
% for i = 3:2:9
%     ex_4_se = strel('square', i);

%     genvarname('img_4_a_', num2str(i));
%     genvarname('img_4_b_', num2str(i));
%     genvarname('img_4_c_', num2str(i));
%     genvarname('img_4_d_', num2str(i));

%     eval(['img_4_a_' num2str(i) ' = imclose(img_4, ex_4_se); '])
%     eval(['img_4_b_' num2str(i) ' = imopen(img_4, ex_4_se); '])
%     eval(['img_4_c_' num2str(i) ' = imopen(img_4_a_' num2str(i) ', ex_4_se); '])
%     eval(['img_4_d_' num2str(i) ' = imclose(img_4_b_' num2str(i) ', ex_4_se); '])

%     figure()
%     subplot(1, 3, 1), imshow(img_4)
%     title('original image')

%     subplot(1, 3, 2), imshow(eval(['img_4_c_' num2str(i)]))
%     title(sprintf('open on close image (%dx%d)', i, i))

%     subplot(1, 3, 3), imshow(eval(['img_4_d_' num2str(i)]))
%     title(sprintf('close on open image (%dx%d)', i, i))
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.A.
% img_5 = imread("angio.tif");
% figure(), imshow(img_5), title('original image')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.B.
% Apply an opening operator using an appropriate structuring element (with
% an adequate shape and size) to estimate of the background image.
% possible shapes:
% diamond, disk, line, octagon, rectangle, square, sphere, cube, cuboid
% img_5 = imread("angio.tif");
% shape =  'disk';
% img_5_open_disk_3 = imopen(img_5, strel(shape, 3));
% img_5_open_disk_5 = imopen(img_5, strel(shape, 5));
% img_5_open_disk_7 = imopen(img_5, strel(shape, 7));
% img_5_open_disk_9 = imopen(img_5, strel(shape, 9));

% figure()
% subplot(2, 2, 1), imshow(img_5_open_disk_3), title('img_5_open_disk_5')
% subplot(2, 2, 2), imshow(img_5_open_disk_5), title('img_5_open_disk_5')
% subplot(2, 2, 3), imshow(img_5_open_disk_7), title('img_5_open_disk_7')
% subplot(2, 2, 4), imshow(img_5_open_disk_9), title('img_5_open_disk_9')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.C.
% Subtract the background image from the original one and display the result.
% img_5 = imread("angio.tif");
% img_5_open_disk_9 = imopen(img_5, strel('disk', 9));
% img_5_mg = imsubtract(img_5, img_5_open_disk_9);

% figure()
% subplot(1, 2, 1), imshow(img_5), title('original image')
% subplot(1, 2, 2), imshow(img_5_mg), title('image - background')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.D.
% img_5 = imread("angio.tif");
% img_5_open_disk_9 = imopen(img_5, strel('disk', 9));
% img_5_mg = imsubtract(img_5, img_5_open_disk_9);
% img_5_th = imtophat(img_5, strel('disk', 9));

% figure()
% subplot(1, 3, 1), imshow(img_5), title('original image')
% subplot(1, 3, 2), imshow(img_5_mg), title('image - background')
% subplot(1, 3, 3), imshow(img_5_th), title('top-hat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.A.
% img_6 = imread("angio.tif");
% img_6_th = imtophat(img_6, strel('disk', 9));
% img_6_bh = imbothat(img_6, strel('disk', 9));

% figure()
% subplot(1, 3, 1), imshow(img_6), title('original image')
% subplot(1, 3, 2), imshow(img_6_th), title('top-hat')
% subplot(1, 3, 3), imshow(img_6_bh), title('bottom-hat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.B.
% img_6 = imread("angio.tif");
% img_6_th = imtophat(img_6, strel('disk', 9));
% img_6_bh = imbothat(img_6, strel('disk', 9));
% img_6_sum = imadd(img_6, img_6_th);

% figure()
% subplot(1, 3, 1), imshow(img_6), title('original image')
% subplot(1, 3, 2), imshow(img_6_th), title('top-hat')
% subplot(1, 3, 3), imshow(img_6_sum), title('original + top-hat')
% The reslting image have more contrast

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.C.
% img_6 = imread("angio.tif");
% img_6_th = imtophat(img_6, strel('disk', 9));
% img_6_bh = imbothat(img_6, strel('disk', 9));
% img_6_sum = imadd(img_6, img_6_th);
% img_6_diff = imsubtract(img_6_sum, img_6_bh);

% figure()
% subplot(2, 3, 1), imshow(img_6), title('original image')
% subplot(2, 3, 2), imshow(img_6_th), title('top-hat')
% subplot(2, 3, 3), imshow(img_6_bh), title('bottom-hat')
% subplot(2, 3, 5), imshow(img_6_sum), title('original + top-hat')
% subplot(2, 3, 6), imshow(img_6_diff), title('original + top-hat - bottom-hat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.
img_7 = imread("blister.tif");
img_7_bin = imread("blister_bin.tif");

figure()
subplot(1, 3, 1), imshow(img_7), title('original image')
subplot(1, 3, 2), imshow(img_7_bin), title('binarized')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funções
