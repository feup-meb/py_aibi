%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  PL 02                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% email prof: tfaraujo@fe.up.pt
% aresta@fe.up.pt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.A.
% Escrever em papel o código abaixo antes de implementá-lo.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.B.
Img_1 = imread("celulas_1.tif");
Img_1_double = im2double(Img_1);

figure(1)
subplot(1, 2, 1), imshow(Img_1_double)
subplot(1, 2, 2), imhist(Img_1_double)

% Histogram Stretch (gray-level scaling)
% % g=((g_max-g_min)/(f_max-f_min))*(f-f_min)+g_min

% Função para calcular histogram stretch
% (definida 'inline' aqui e normal no fim do ficheiro)
% histretch = @(f, f_max, f_min, g_max, g_min) ((g_max - g_min) / (f_max - f_min)) * (f - f_min) + g_min;

% Img_1_min = min(Img_1_double(:)) % 0.1020
% Img_1_max = max(Img_1_double(:)) % 0.9098
% Visualmente, os valores min e max são diferentes. Utilizo o visual.
% Mesmo o visual, se usar as ferramentas de zoom, é possível chegar aos
% mesmos valores das funções do MatLAB.
% Utilizo os valores que a professora utilizou.
Img_1_min = 0.2;
Img_1_max = 0.85;
Img_A_min = 0;
Img_A_max = 1;

Img_B = histretch(Img_1_double, Img_1_max, Img_1_min, Img_A_max, Img_A_min);

figure(2)
subplot(1, 2, 1), imshow(Img_B)
subplot(1, 2, 2), imhist(Img_B)

figure(3)
subplot(1, 2, 1), imhist(Img_1_double)
subplot(1, 2, 2), imhist(Img_B)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.C.
% G = imadjust(f, [low_in high_in], [low_out high_out], gamma);
Img_C = imadjust(Img_1, [Img_1_min Img_1_max], [Img_A_min Img_A_max], 1);
figure(4)
subplot(1, 2, 1), imhist(Img_1)
subplot(1, 2, 2), imhist(Img_C)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.D.
Img_D = imadjust(Img_1, [Img_1_min Img_1_max], [Img_A_min Img_A_max], 0.5);
figure(5)
subplot(1, 2, 1), imhist(Img_1)
subplot(1, 2, 2), imhist(Img_D)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.E.
Img_E = imadjust(Img_1, [Img_1_min Img_1_max], [Img_A_min Img_A_max], 1.5);
figure(6)
subplot(1, 2, 1), imhist(Img_1)
subplot(1, 2, 2), imhist(Img_E)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.F.
figure(7)
subplot(2, 2, 1), imshow(histeq(Img_B))
subplot(2, 2, 2), imshow(histeq(Img_C))
subplot(2, 2, 3), imshow(histeq(Img_D))
subplot(2, 2, 4), imshow(histeq(Img_E))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.G.
Img_G = histeq(Img_E);

figure(8)
subplot(1, 3, 1), imshow(Img_E)
subplot(1, 3, 2), imshow(Img_G)
subplot(1, 3, 3), imhist(Img_G)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.H.
Img_H = adapthisteq(Img_E);

figure(9)
subplot(1, 2, 1), imshow(Img_E)
subplot(1, 2, 2), imshow(Img_H)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.I.
NumTiles = {2, 5, 10, 20};

for i = 1:length(NumTiles)
    genvarname('Img_I_', num2str(i));
    tic
    Img_I_TMP = adapthisteq(Img_E,  'NumTiles', [NumTiles{i} NumTiles{i}]);
    toc
    eval(['Img_I_' num2str(i) '= Img_I_TMP;'])
end

figure(10)
subplot(1, 4, 1), imshow(Img_I_1)
subplot(1, 4, 2), imshow(Img_I_2)
subplot(1, 4, 3), imshow(Img_I_3)
subplot(1, 4, 4), imshow(Img_I_4)
% Elapsed time for Img_I_1 (NumTiles = 2) is:   0.184489 seconds.
% Elapsed time for Img_I_2 (NumTiles = 5) is:   0.052993 seconds.
% Elapsed time for Img_I_3 (NumTiles = 10) is:  0.023972 seconds.
% Elapsed time for Img_I_4 (NumTiles = 20) is:  0.037609 seconds.
% Percebe-se que quanto menores os subsets, melhor contraste é alcançado.
% No entanto, quanto menores os subsets, mais tempo demora.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.J.
ClipLimit = {0, 0.001, 0.01, 0.02, 0.1};

for i = 1:length(ClipLimit)
    genvarname('Img_J_', num2str(i));
    tic
    Img_J_TMP = adapthisteq(Img_E,  'ClipLimit', ClipLimit{i});
    toc
    eval(['Img_J_' num2str(i) '= Img_J_TMP;'])
end

figure(11)
subplot(1, 5, 1), imshow(Img_J_1)
subplot(1, 5, 2), imshow(Img_J_2)
subplot(1, 5, 3), imshow(Img_J_3)
subplot(1, 5, 4), imshow(Img_J_4)
subplot(1, 5, 5), imshow(Img_J_5)
% Elapsed time for Img_J_1 (ClipLimit = 0) is:      0.036973 seconds.
% Elapsed time for Img_J_2 (ClipLimit = 0.001) is:  0.008410 seconds.
% Elapsed time for Img_J_3 (ClipLimit = 0.01) is:   0.008823 seconds.
% Elapsed time for Img_J_4 (ClipLimit = 0.02) is:   0.011739 seconds.
% Elapsed time for Img_J_5 (ClipLimit = 0.1) is:    0.029470 seconds.
% Percebe-se que quanto menores os limites, melhor contraste é alcançado, com
% menor saturação. No entanto, quanto menores os limites, mais tempo demora.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.
% Linear filter
% g=imfilter(f, w, boundary_options, size_options, filtering_mode)
% w = filter mask.
% w=fspecial(‘type’, parameters)
% 'type' specifies the filter type (average, gaussian)

% Nonlinear filter
% g=ordfilt2(f, order, domain)

% Median filter
% g=medfilt2(f, [m n], padopt)

Img_2_A = imread("blister.tif");
f_size = [9 9]; % filter

Img_2_B_w = fspecial('gaussian', f_size);
Img_2_D_w = fspecial('average', f_size);

Img_2_B = imfilter(Img_2_A, Img_2_B_w); % gaussian filter
Img_2_C = medfilt2(Img_2_A, f_size); % median filter
Img_2_D = imfilter(Img_2_A, Img_2_D_w); % average filter

figure(12)
subplot(1, 4, 1), imshow(Img_2_A), title('Original')
subplot(1, 4, 2), imshow(Img_2_B), title('gaussian filter')
subplot(1, 4, 3), imshow(Img_2_C), title('median filter')
subplot(1, 4, 4), imshow(Img_2_D), title('average filter')
% As imagens foram nomeadas de acordo com sua letra na questão.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.A.
Img_3_A = imread("blister.tif");
f_size = [9 9]; % filter

Img_3_gaus_w = fspecial('gaussian', f_size);
Img_3_avg_w = fspecial('average', f_size);

Img_3_gaus = imfilter(Img_3_A, Img_3_gaus_w); % gaussian filter
Img_3_med = medfilt2(Img_3_A, f_size); % median filter
Img_3_avg = imfilter(Img_3_A, Img_3_avg_w); % average filter

figure(13)
subplot(2, 6, 1), imshow(Img_3_A), title('imagem 1.a')
subplot(2, 6, [2 3]), imhist(Img_3_A), title('histograma 1.a')
subplot(2, 6, 4), imshow(Img_3_gaus), title('imagem 1.b')
subplot(2, 6, [5 6]), imhist(Img_3_gaus), title('histograma 1.b')
subplot(2, 6, 7), imshow(Img_3_med), title('imagem 1.c')
subplot(2, 6, [8 9]), imhist(Img_3_med), title('histograma 1.c')
subplot(2, 6, 10), imshow(Img_3_avg), title('imagem 1.d')
subplot(2, 6, [11 12]), imhist(Img_3_avg), title('histograma 1.d')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.B.
Img_3_B = imread("blister.tif");

for i = 3:2:9
    genvarname('Img_3_gaus_', num2str(i));
    genvarname('Img_3_avg_', num2str(i));
    genvarname('Img_3_med_', num2str(i));

    w_Img_3_gaus = fspecial('gaussian', [i i]);
    w_Img_3_avg = fspecial('average', [i i]);

    Img_3_gaus = imfilter(Img_3_B, w_Img_3_gaus);
    Img_3_avg = imfilter(Img_3_B, w_Img_3_avg);
    Img_3_med = medfilt2(Img_3_B, [i i]);

    eval(['Img_3_gaus_' num2str(i) ' = Img_3_gaus; '])
    eval(['Img_3_avg_' num2str(i) ' = Img_3_avg; '])
    eval(['Img_3_med_' num2str(i) ' = Img_3_avg; '])
end

figure(14)
subplot(3, 6, 1), imshow(Img_3_B), title('original image 1.a')
subplot(3, 6, [2 3]), imhist(Img_3_B), title('original image 1.a')
k = 1;

for i = 3:2:9
    k = k + 3;
    caption = sprintf('gaussian filter (%dx%d)', i, i);
    subplot(3, 6, k)
    imshow(eval(['Img_3_gaus_' num2str(i)]))
    title(caption)

    subplot(3, 6, [(k + 1) (k + 2)])
    imhist(eval(['Img_3_gaus_' num2str(i)]))
    title(caption)
end

figure(15)
subplot(3, 6, 1), imshow(Img_3_B), title('original image 1.a')
subplot(3, 6, [2 3]), imhist(Img_3_B), title('original image 1.a')
k = 1;

for i = 3:2:9
    k = k + 3;
    caption = sprintf('average filter (%dx%d)', i, i);
    subplot(3, 6, k)
    imshow(eval(['Img_3_avg_' num2str(i)]))
    title(caption)

    subplot(3, 6, [(k + 1) (k + 2)])
    imhist(eval(['Img_3_avg_' num2str(i)]))
    title(caption)
end

figure(16)
subplot(3, 6, 1), imshow(Img_3_B), title('original image 1.a')
subplot(3, 6, [2 3]), imhist(Img_3_B), title('original image 1.a')
k = 1;

for i = 3:2:9
    k = k + 3;
    caption = sprintf('median filter (%dx%d)', i, i);
    subplot(3, 6, k)
    imshow(eval(['Img_3_med_' num2str(i)])),
    title(caption)

    subplot(3, 6, [(k + 1) (k + 2)])
    imhist(eval(['Img_3_med_' num2str(i)]))
    title(caption)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.C.
% Examples:
% B=ORDFILT2(A,1,ONES(3,3)) implements a 3-by-3 minimum filter;
% B=ORDFILT2(A,9,ONES(3,3)) implements a 3-by-3 maximum filter;
% B=ORDFILT2(A,5,ONES(3,3)) implements a 3-by-3 median filter;

% B=ORDFILT2(A,4,[0 1 0; 1 0 1; 0 1 0]) replaces each element in A by
% the maximum of its north, east, south, and west neighbors.

Img_3_C = imread("blister.tif");

for i = 3:2:9
    % Square
    genvarname('Img_3_C_min_', num2str(i));
    genvarname('Img_3_C_max_', num2str(i));
    genvarname('Img_3_C_med_', num2str(i));

    Img_3_C_min = ordfilt2(Img_3_C, 1, ones(i, i));
    Img_3_C_max = ordfilt2(Img_3_C, 9, ones(i, i));
    Img_3_C_med = ordfilt2(Img_3_C, 5, ones(i, i));

    eval(['Img_3_C_min_' num2str(i) ' = Img_3_C_min; '])
    eval(['Img_3_C_max_' num2str(i) ' = Img_3_C_max; '])
    eval(['Img_3_C_med_' num2str(i) ' = Img_3_C_med; '])

    if i == 3
        Img_3_C_rect = ordfilt2(Img_3_C, 5, ones(3, 4)); % rectangle
        Img_3_C_cross = ordfilt2(Img_3_C, 5, [0 1 0; 1 1 1; 0 1 0]); % cross
        Img_3_C_diag = ordfilt2(Img_3_C, 5, [1 0 1; 0 1 0; 1 0 1]); % diagonal
    end

end

% Plotando tamanhos diferentes para análise
figure(17)
plot_base(3, 6, Img_3_C,  'original image 1.a')
plot_filter(3, 6, eval(['Img_3_C_min_' num2str(i)]),  'minimum')

figure(18)
plot_base(3, 6, Img_3_C,  'original image 1.a')
plot_filter(3, 6, eval(['Img_3_C_max_' num2str(i)]),  'maximum')

figure(19)
plot_base(3, 6, Img_3_C,  'original image 1.a')
plot_filter(3, 6, eval(['Img_3_C_med_' num2str(i)]),  'median')

% Para analisar a infuência da forma do filtro, usei:
% - tipo de filtro: mediano
% - tamanho de filtro: 3x3 para filtros simétricos (square, cross, diagonal)
% - tamanho de filtro: 3x4 para filtros assimétricos (rectangle)
figure(20)
plot_base(2, 6, Img_3_C,  'original image 1.a')
subplot(2, 6, 4), imshow(Img_3_C_rect), title('filtro retangular')
subplot(2, 6, [5 6]), imhist(Img_3_C_rect), title('filtro retangular')
subplot(2, 6, 7), imshow(Img_3_C_cross), title('filtro em cruz')
subplot(2, 6, [8 9]), imhist(Img_3_C_cross), title('filtro em cruz')
subplot(2, 6, 10), imshow(Img_3_C_diag), title('filtro diagonal')
subplot(2, 6, [11 12]), imhist(Img_3_C_diag), title('filtro diagonal')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.
Img_4_2a = imread('smarties.tif');
Img_4_2b = ordfilt2(Img_4_2a, 441, ones(21, 21));
Img_4_2c_1 = imsubtract(Img_4_2b, Img_4_2a);

figure(21)
subplot(1, 3, 1), imshow(Img_4_2a), title('original image 2.a')
subplot(1, 3, 2), imshow(Img_4_2b), title('image 2.b')
subplot(1, 3, 3), imshow(Img_4_2c_1), title('image 2.c')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.A.
Img_5_A = imread('hand.tif');
Img_5_A_lap_w = fspecial('laplacian');
% Como o filtro Laplaciano utiliza máscaras de 3x3,
% usarei também para os outros filtros
Img_5_A_gaus_w = fspecial('gaussian', [3 3], 1.4);
Img_5_A_log_w = fspecial('log', [3 3], 1.4);

Img_5_A_1 = imfilter(Img_5_A, Img_5_A_lap_w);
Img_5_A_2 = imfilter(Img_5_A, Img_5_A_gaus_w);
Img_5_A_3 = imfilter(Img_5_A, Img_5_A_log_w);

figure(22)
subplot(2, 2, 1), imshow(Img_5_A), title('Original')
subplot(2, 2, 2), imshow(Img_5_A_1), title('Laplacian filter')
subplot(2, 2, 3), imshow(Img_5_A_2), title('Filter: Gaussian -> Laplacian')
subplot(2, 2, 4), imshow(Img_5_A_3), title('LoG (Laplacian of Gaussian)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.B.
Img_5_B = imread('hand.tif');
filter_sz = [3 3];

% LoG filter (Laplacian of Gaussian)
Img_5_B_1_0_w = fspecial('log', filter_sz, 1.0);
Img_5_B_1_4_w = fspecial('log', filter_sz, 1.4);
Img_5_B_1_8_w = fspecial('log', filter_sz, 1.8);
Img_5_B_2_2_w = fspecial('log', filter_sz, 2.2);
Img_5_B_2_6_w = fspecial('log', filter_sz, 2.6);
Img_5_B_3_0_w = fspecial('log', filter_sz, 3.0);
Img_5_B_5_0_w = fspecial('log', filter_sz, 5.0);

% Filtered image
Img_5_B_1_0 = imfilter(Img_5_B, Img_5_B_1_0_w);
Img_5_B_1_4 = imfilter(Img_5_B, Img_5_B_1_4_w);
Img_5_B_1_8 = imfilter(Img_5_B, Img_5_B_1_8_w);
Img_5_B_2_2 = imfilter(Img_5_B, Img_5_B_2_2_w);
Img_5_B_2_6 = imfilter(Img_5_B, Img_5_B_2_6_w);
Img_5_B_3_0 = imfilter(Img_5_B, Img_5_B_3_0_w);
Img_5_B_5_0 = imfilter(Img_5_B, Img_5_B_5_0_w);

% zero-cross method
Img_5_B_1_0 = edge(Img_5_B_1_0,  'zerocross');
Img_5_B_1_4 = edge(Img_5_B_1_4,  'zerocross');
Img_5_B_1_8 = edge(Img_5_B_1_8,  'zerocross');
Img_5_B_2_2 = edge(Img_5_B_2_2,  'zerocross');
Img_5_B_2_6 = edge(Img_5_B_2_6,  'zerocross');
Img_5_B_3_0 = edge(Img_5_B_3_0,  'zerocross');
Img_5_B_5_0 = edge(Img_5_B_5_0,  'zerocross');

% figure(23)
subplot(2, 4, 1), imshow(Img_5_B), title('original (zero - cross method)')
subplot(2, 4, 2), imshow(Img_5_B_1_0), title('LoG filter (sigma = 1.0)')
subplot(2, 4, 3), imshow(Img_5_B_1_4), title('LoG filter (sigma = 1.4)')
subplot(2, 4, 4), imshow(Img_5_B_1_8), title('LoG filter (sigma = 1.8)')
subplot(2, 4, 5), imshow(Img_5_B_2_2), title('LoG filter (sigma = 2.2)')
subplot(2, 4, 6), imshow(Img_5_B_2_6), title('LoG filter (sigma = 2.6)')
subplot(2, 4, 7), imshow(Img_5_B_3_0), title('LoG filter (sigma = 3.0)')
subplot(2, 4, 8), imshow(Img_5_B_5_0), title('LoG filter (sigma = 5.0)')

filter_sz = [21 21];

% LoG filter (Laplacian of Gaussian)
Img_5_B_1_0_w = fspecial('log', filter_sz, 1.0);
Img_5_B_1_4_w = fspecial('log', filter_sz, 1.4);
Img_5_B_1_8_w = fspecial('log', filter_sz, 1.8);
Img_5_B_2_2_w = fspecial('log', filter_sz, 2.2);
Img_5_B_2_6_w = fspecial('log', filter_sz, 2.6);
Img_5_B_3_0_w = fspecial('log', filter_sz, 3.0);
Img_5_B_5_0_w = fspecial('log', filter_sz, 5.0);

% Filtered image
Img_5_B_1_0 = imfilter(Img_5_B, Img_5_B_1_0_w);
Img_5_B_1_4 = imfilter(Img_5_B, Img_5_B_1_4_w);
Img_5_B_1_8 = imfilter(Img_5_B, Img_5_B_1_8_w);
Img_5_B_2_2 = imfilter(Img_5_B, Img_5_B_2_2_w);
Img_5_B_2_6 = imfilter(Img_5_B, Img_5_B_2_6_w);
Img_5_B_3_0 = imfilter(Img_5_B, Img_5_B_3_0_w);
Img_5_B_5_0 = imfilter(Img_5_B, Img_5_B_5_0_w);

% zero-cross method
Img_5_B_1_0 = edge(Img_5_B_1_0,  'zerocross');
Img_5_B_1_4 = edge(Img_5_B_1_4,  'zerocross');
Img_5_B_1_8 = edge(Img_5_B_1_8,  'zerocross');
Img_5_B_2_2 = edge(Img_5_B_2_2,  'zerocross');
Img_5_B_2_6 = edge(Img_5_B_2_6,  'zerocross');
Img_5_B_3_0 = edge(Img_5_B_3_0,  'zerocross');
Img_5_B_5_0 = edge(Img_5_B_5_0,  'zerocross');

%figure(24)
subplot(2, 4, 1), imshow(Img_5_B), title('original (zero - cross method)')
subplot(2, 4, 2), imshow(Img_5_B_1_0), title('LoG filter (sigma = 1.0)')
subplot(2, 4, 3), imshow(Img_5_B_1_4), title('LoG filter (sigma = 1.4)')
subplot(2, 4, 4), imshow(Img_5_B_1_8), title('LoG filter (sigma = 1.8)')
subplot(2, 4, 5), imshow(Img_5_B_2_2), title('LoG filter (sigma = 2.2)')
subplot(2, 4, 6), imshow(Img_5_B_2_6), title('LoG filter (sigma = 2.6)')
subplot(2, 4, 7), imshow(Img_5_B_3_0), title('LoG filter (sigma = 3.0)')
subplot(2, 4, 8), imshow(Img_5_B_5_0), title('LoG filter (sigma = 5.0)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.A.
% First operation is smotthing, to remove the noise
% As there are some losses too, the second operation is needed

% Second operation is image sharpening , which improves edges (even noises)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.B.
Img_6 = imread('hand_noise.tif');

Img_6_A = im2double(Img_6);

Img_6_A_min = min(Img_6_A(:)); % 0
Img_6_A_max = max(Img_6_A(:)); % 1
Img_6_min = 0;
Img_6_max = 1;

Img_6_A_h = histretch(Img_6_A, Img_6_A_min, Img_6_A_max, Img_6_min, Img_6_max);

% Median filter
Img_6_A_1 = medfilt2(Img_6_A_h);

% Filter
h = [-1 -1 -1; -1 8 -1; -1 -1 -1];
Img_6_A_2 = imfilter(Img_6_A_1, h);
Img_6_A_3 = Img_6_A_1 + Img_6_A_2;

figure(25)
subplot(1, 3, 1), imshow(Img_6_A), title('Original')
subplot(1, 3, 2), imshow(Img_6_A_1), title('1.Median filter')
subplot(1, 3, 3), imshow(Img_6_A_3), title('3.Enhanced 3x3 (-1), center 8')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.A.
Img_7_A = imread('blobs2.tif');

Img_7_A_1_w = fspecial('gaussian', [9 9]);
Img_7_A_1_f = imfilter(Img_7_A, Img_7_A_1_w,  'conv',  'replicate',  'same');

Img_7_A_2_w = fspecial('log');
Img_7_A_2_f = imfilter(Img_7_A_1_f, Img_7_A_2_w,  'conv',  'replicate',  'same');
min_max = stretchlim(Img_7_A_2_f, 0);
Img_7_A_3 = imadjust(Img_7_A_2_f, min_max, [0 1], 1);

figure(26)
subplot(1, 3, 1), imshow(Img_7_A), title('Original')
subplot(1, 3, 2), imshow(Img_7_A_1_f), title('Smoothed')
subplot(1, 3, 3), imshow(Img_7_A_3), title('Edges')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.B.
Img_7_B = imread('blobs2_bin.tif');
Img_7_B_1 = ordfilt2(Img_7_B, 25, ones(5, 5));

figure(27)
subplot(1, 2, 1), imshow(Img_7_B), title('Original (binarized)')
subplot(1, 2, 2), imshow(Img_7_B_1), title('Final')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funções
% Função para calcular histogram stretch
function g = histretch(f, f_max, f_min, g_max, g_min)
    g = ((g_max - g_min) / (f_max - f_min)) * (f - f_min) + g_min;
end

function plot_base(rows, cols, img, title_str)
    subplot(rows, cols, 1), imshow(img), title(title_str)
    subplot(rows, cols, [2 3]), imhist(img), title(title_str)
end

function plot_filter(rows, cols, filter_val, base_title)
    k = 1;

    for i = 3:2:9
        k = k + 3;
        title_str = sprintf('%s filter (%dx%d)', base_title, i, i);
        subplot(rows, cols, k)
        imshow(filter_val), title(title_str)
        subplot(rows, cols, [(k + 1) (k + 2)])
        imhist(filter_val), title(title_str)
    end

end
