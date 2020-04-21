from skimage import io

_, pl_class = __name__.split(".")
img_folder = f"./assets/{pl_class}"


def ex_1(item: str = "") -> None:

    print(f"Aula 2, exercício 1{item}")
    if item == "a":
        # Escrever em papel o código abaixo antes de implementá-lo.
        img_1 = io.imread(f"{img_folder}/celulas_1.tif")
        print(img_1)

    elif item == "b":
        # % Img_1 = imread("celulas_1.tif");
        # % Img_1_double = im2double(Img_1);

        # % figure(1)
        # % subplot(1, 2, 1), imshow(Img_1_double)
        # % subplot(1, 2, 2), imhist(Img_1_double)

        # % Histogram Stretch (gray-level scaling)
        # % % g=((g_max-g_min)/(f_max-f_min))*(f-f_min)+g_min

        # % Função para calcular histogram stretch
        # % (definida 'inline' aqui e normal no fim do ficheiro)
        # % histretch = @(f, f_max, f_min, g_max, g_min) ((g_max - g_min) / (f_max - f_min)) * (f - f_min) + g_min;

        # % % Img_1_min = min(Img_1_double(:)) % 0.1020
        # % % Img_1_max = max(Img_1_double(:)) % 0.9098
        # % % Visualmente, os valores min e max são diferentes. Uso o visual.
        # % % Mesmo o visual, se usar as ferramentas de zoom, é possível \
        # % % chegar aos mesmos valores das funções do MatLAB.
        # % % Utilizo os valores que a professora utilizou.
        # % Img_1_min = 0.2;
        # % Img_1_max = 0.85;
        # % Img_A_min = 0;
        # % Img_A_max = 1;

        # % Img_B = histretch(Img_1_double, Img_1_max, Img_1_min, Img_A_max, Img_A_min);

        # % figure(2)
        # % subplot(1, 2, 1), imshow(Img_B)
        # % subplot(1, 2, 2), imhist(Img_B)

        # % figure(3)
        # % subplot(1, 2, 1), imhist(Img_1_double)
        # % subplot(1, 2, 2), imhist(Img_B)
        pass
    elif item == "c":
        # % G = imadjust(f, [low_in high_in], [low_out high_out], gamma);
        # % Img_C = imadjust(Img_1, [Img_1_min Img_1_max], [Img_A_min Img_A_max], 1);
        # % figure(4)
        # % subplot(1, 2, 1), imhist(Img_1)
        # % subplot(1, 2, 2), imhist(Img_C)
        pass
    elif item == "d":
        # % Img_D = imadjust(Img_1, [Img_1_min Img_1_max], [Img_A_min Img_A_max], 0.5);
        # % figure(5)
        # % subplot(1, 2, 1), imhist(Img_1)
        # % subplot(1, 2, 2), imhist(Img_D)
        pass
    elif item == "e":
        # % Img_E = imadjust(Img_1, [Img_1_min Img_1_max], [Img_A_min Img_A_max], 1.5);
        # % figure(6)
        # % subplot(1, 2, 1), imhist(Img_1)
        # % subplot(1, 2, 2), imhist(Img_E)
        pass
    elif item == "f":
        # % figure(7)
        # % subplot(2, 2, 1), imshow(histeq(Img_B))
        # % subplot(2, 2, 2), imshow(histeq(Img_C))
        # % subplot(2, 2, 3), imshow(histeq(Img_D))
        # % subplot(2, 2, 4), imshow(histeq(Img_E))
        pass
    elif item == "g":
        # % Img_G = histeq(Img_E);

        # % figure(8)
        # % subplot(1, 3, 1), imshow(Img_E)
        # % subplot(1, 3, 2), imshow(Img_G)
        # % subplot(1, 3, 3), imhist(Img_G)
        pass
    elif item == "h":
        # % Img_H = adapthisteq(Img_E);

        # % figure(9)
        # % subplot(1, 2, 1), imshow(Img_E)
        # % subplot(1, 2, 2), imshow(Img_H)
        pass
    elif item == "i":
        # % NumTiles = {2, 5, 10, 20};

        # % for i = 1:length(NumTiles)
        # %     genvarname('Img_I_', num2str(i));
        # %     tic
        # %     Img_I_TMP = adapthisteq(Img_E, 'NumTiles', [NumTiles{i} NumTiles{i}]);
        # %     toc
        # %     eval(['Img_I_' num2str(i) '= Img_I_TMP;'])
        # % end

        # % figure(10)
        # % subplot(1, 4, 1), imshow(Img_I_1)
        # % subplot(1, 4, 2), imshow(Img_I_2)
        # % subplot(1, 4, 3), imshow(Img_I_3)
        # % subplot(1, 4, 4), imshow(Img_I_4)
        # % Elapsed time for Img_I_1 (NumTiles = 2) is:   0.184489 seconds.
        # % Elapsed time for Img_I_2 (NumTiles = 5) is:   0.052993 seconds.
        # % Elapsed time for Img_I_3 (NumTiles = 10) is:  0.023972 seconds.
        # % Elapsed time for Img_I_4 (NumTiles = 20) is:  0.037609 seconds.
        # % Percebe-se que quanto menores os subsets, melhor contraste é \
        #   alcançado.
        # % No entanto, quanto menores os subsets, mais tempo demora.
        pass
    elif item == "j":
        # % ClipLimit = {0, 0.001, 0.01, 0.02, 0.1};

        # % for i = 1:length(ClipLimit)
        # %     genvarname('Img_J_', num2str(i));
        # %     tic
        # %     Img_J_TMP = adapthisteq(Img_E, 'ClipLimit', ClipLimit{i});
        # %     toc
        # %     eval(['Img_J_' num2str(i) '= Img_J_TMP;'])
        # % end

        # % figure(11)
        # % subplot(1, 5, 1), imshow(Img_J_1)
        # % subplot(1, 5, 2), imshow(Img_J_2)
        # % subplot(1, 5, 3), imshow(Img_J_3)
        # % subplot(1, 5, 4), imshow(Img_J_4)
        # % subplot(1, 5, 5), imshow(Img_J_5)
        # % Elapsed time for Img_J_1 (ClipLimit = 0) is:      0.036973 seconds.
        # % Elapsed time for Img_J_2 (ClipLimit = 0.001) is:  0.008410 seconds.
        # % Elapsed time for Img_J_3 (ClipLimit = 0.01) is:   0.008823 seconds.
        # % Elapsed time for Img_J_4 (ClipLimit = 0.02) is:   0.011739 seconds.
        # % Elapsed time for Img_J_5 (ClipLimit = 0.1) is:    0.029470 seconds.
        # % Percebe-se que quanto menores os limites, melhor contraste é \
        #   alcançado, com
        # % menor saturação. No entanto, quanto menores os limites, mais \
        #   tempo demora.
        pass


def ex_2(item: str = "") -> None:

    print(f"Aula 2, exercício 3{item}")

    # % Linear filter
    # % g=imfilter(f, w, boundary_options, size_options, filtering_mode)
    # % w = filter mask.
    # % w=fspecial(‘type’, parameters)
    # % 'type' specifies the filter type (average, gaussian)

    # % Nonlinear filter
    # % g=ordfilt2(f, order, domain)

    # % Median filter
    # % g=medfilt2(f, [m n], padopt)

    # % Img_2_A = imread("blister.tif");
    # % f_size = [9 9]; % filter

    # % Img_2_B_w = fspecial('gaussian', f_size);
    # % Img_2_D_w = fspecial('average', f_size);

    # % Img_2_B = imfilter(Img_2_A, Img_2_B_w); % gaussian filter
    # % Img_2_C = medfilt2(Img_2_A, f_size); % median filter
    # % Img_2_D = imfilter(Img_2_A, Img_2_D_w); % average filter

    # % figure(12)
    # % subplot(1, 4, 1), imshow(Img_2_A)
    # % subplot(1, 4, 2), imshow(Img_2_B)
    # % subplot(1, 4, 3), imshow(Img_2_C)
    # % subplot(1, 4, 4), imshow(Img_2_D)
    # % As imagens foram nomeadas de acordo com sua letra na questão.


def ex_3(item: str = "") -> None:

    print(f"Aula 2, exercício 4{item}")
    if item == "a":
        # % Img_3_A = imread("blister.tif");
        # % f_size = [9 9]; % filter

        # % Img_3_gaus_w = fspecial('gaussian', f_size);
        # % Img_3_avg_w = fspecial('average', f_size);

        # % Img_3_gaus = imfilter(Img_3_A, Img_3_gaus_w); % gaussian filter
        # % Img_3_med = medfilt2(Img_3_A, f_size); % median filter
        # % Img_3_avg = imfilter(Img_3_A, Img_3_avg_w); % average filter

        # % figure(13)
        # % subplot(2, 6, [1]), imshow(Img_3_A), title('imagem 1.a')
        # % subplot(2, 6, [2 3]), imhist(Img_3_A), title('histograma 1.a')
        # % subplot(2, 6, [4]), imshow(Img_3_gaus), title('imagem 1.b')
        # % subplot(2, 6, [5 6]), imhist(Img_3_gaus), title('histograma 1.b')
        # % subplot(2, 6, [7]), imshow(Img_3_med), title('imagem 1.c')
        # % subplot(2, 6, [8 9]), imhist(Img_3_med), title('histograma 1.c')
        # % subplot(2, 6, [10]), imshow(Img_3_avg), title('imagem 1.d')
        # % subplot(2, 6, [11 12]), imhist(Img_3_avg), title('histograma 1.d')
        pass
    elif item == "b":
        # % Img_3_B = imread("blister.tif");

        # % for i = 3:2:9
        # %     genvarname('Img_3_gaus_', num2str(i));
        # %     genvarname('Img_3_avg_', num2str(i));
        # %     genvarname('Img_3_med_', num2str(i));

        # %     w_Img_3_gaus = fspecial('gaussian', [i i]);
        # %     w_Img_3_avg = fspecial('average', [i i]);

        # %     Img_3_gaus = imfilter(Img_3_B, w_Img_3_gaus);
        # %     Img_3_avg = imfilter(Img_3_B, w_Img_3_avg);
        # %     Img_3_med = medfilt2(Img_3_B, [i i]);

        # %     eval(['Img_3_gaus_' num2str(i) ' = Img_3_gaus; '])
        # %     eval(['Img_3_avg_' num2str(i) ' = Img_3_avg; '])
        # %     eval(['Img_3_med_' num2str(i) ' = Img_3_avg; '])
        # % end

        # % figure(14)
        # % subplot(3, 6, [1]), imshow(Img_3_B), title('original image 1.a')
        # % subplot(3, 6, [2 3]), imhist(Img_3_B), title('original image 1.a')
        # % k = 1;

        # % for i = 3:2:9
        # %     k = k + 3;
        # %     subplot(3, 6, [k])
        # %     imshow(eval(['Img_3_gaus_' num2str(i)]))
        # %     title('gaussian filter (num2str(i)xnum2str(i))')
        # %     subplot(3, 6, [(k + 1) (k + 2)])
        # %     imhist(eval(['Img_3_gaus_' num2str(i)]))
        # %     title('gaussian filter (num2str(i)xnum2str(i))')
        # % end

        # % figure(15)
        # % subplot(3, 6, [1]), imshow(Img_3_B), title('original image 1.a')
        # % subplot(3, 6, [2 3]), imhist(Img_3_B), title('original image 1.a')
        # % k = 1;

        # % for i = 3:2:9
        # %     k = k + 3;
        # %     subplot(3, 6, [k])
        # %     imshow(eval(['Img_3_avg_' num2str(i)]))
        # %     title('average filter (num2str(i)xnum2str(i))')
        # %     subplot(3, 6, [(k + 1) (k + 2)])
        # %     imhist(eval(['Img_3_avg_' num2str(i)]))
        # %     title('average filter (num2str(i)xnum2str(i))')
        # % end

        # % figure(16)
        # % subplot(3, 6, [1]), imshow(Img_3_B), title('original image 1.a')
        # % subplot(3, 6, [2 3]), imhist(Img_3_B), title('original image 1.a')
        # % k = 1;

        # % for i = 3:2:9
        # %     k = k + 3;
        # %     subplot(3, 6, [k])
        # %     imshow(eval(['Img_3_med_' num2str(i)]))
        # %     title('median filter (num2str(i)xnum2str(i))')
        # %     subplot(3, 6, [(k + 1) (k + 2)])
        # %     imhist(eval(['Img_3_med_' num2str(i)]))
        # %     title('median filter (num2str(i)xnum2str(i))')
        # % end
        pass
    elif item == "c":

        # % Examples:
        # % B=ORDFILT2(A,1,ONES(3,3)) implements a 3-by-3 minimum filter;
        # % B=ORDFILT2(A,9,ONES(3,3)) implements a 3-by-3 maximum filter;
        # % B=ORDFILT2(A,5,ONES(3,3)) implements a 3-by-3 median filter;

        # % B=ORDFILT2(A,4,[0 1 0; 1 0 1; 0 1 0]) replaces each element in A by
        # % the maximum of its north, east, south, and west neighbors.

        # % Img_3_C = imread("blister.tif");

        # % for i = 3:2:9
        # %     % Square
        # %     genvarname('Img_3_C_min_', num2str(i));
        # %     genvarname('Img_3_C_max_', num2str(i));
        # %     genvarname('Img_3_C_med_', num2str(i));

        # %     Img_3_C_min = ordfilt2(Img_3_C, 1, ones(i, i));
        # %     Img_3_C_max = ordfilt2(Img_3_C, 9, ones(i, i));
        # %     Img_3_C_med = ordfilt2(Img_3_C, 5, ones(i, i));

        # %     eval(['Img_3_C_min_' num2str(i) ' = Img_3_C_min; '])
        # %     eval(['Img_3_C_max_' num2str(i) ' = Img_3_C_max; '])
        # %     eval(['Img_3_C_med_' num2str(i) ' = Img_3_C_med; '])

        # %     if i == 3
        # %         % rectangle
        # %         Img_3_C_rect = ordfilt2(Img_3_C, 5, ones(3, 4));
        # %         % cross
        # %         Img_3_C_cross = ordfilt2(Img_3_C, 5, [0 1 0; 1 1 1; 0 1 0]);
        # %         % diagonal
        # %         Img_3_C_diag = ordfilt2(Img_3_C, 5, [1 0 1; 0 1 0; 1 0 1]);
        # %     end

        # % end

        # % % Plotando tamanhos diferentes para análise
        # % figure(17)
        # % plot_base(3, 6, Img_3_C, 'original image 1.a')
        # % plot_filter(3, 6, eval(['Img_3_C_min_' num2str(i)]), 'minimum')

        # % figure(18)
        # % plot_base(3, 6, Img_3_C, 'original image 1.a')
        # % plot_filter(3, 6, eval(['Img_3_C_max_' num2str(i)]), 'maximum')

        # % figure(19)
        # % plot_base(3, 6, Img_3_C, 'original image 1.a')
        # % plot_filter(3, 6, eval(['Img_3_C_med_' num2str(i)]), 'median')

        # % % Para analisar a infuência da forma do filtro, usei:
        # % % - tipo de filtro: mediano
        # % % - tamanho de filtro: 3x3 simétricos (square, cross, diagonal)
        # % % - tamanho de filtro: 3x4 assimétricos (rectangle)
        # % figure(20)
        # % plot_base(2, 6, Img_3_C, 'original image 1.a')
        # % subplot(2, 6, [4])
        # % imshow(Img_3_C_rect), title('filtro retangular')
        # % subplot(2, 6, [5 6])
        # % imhist(Img_3_C_rect), title('filtro retangular')
        # % subplot(2, 6, [7])
        # % imshow(Img_3_C_cross), title('filtro em cruz')
        # % subplot(2, 6, [8 9])
        # % imhist(Img_3_C_cross), title('filtro em cruz')
        # % subplot(2, 6, [10])
        # % imshow(Img_3_C_diag), title('filtro diagonal')
        # % subplot(2, 6, [11 12])
        # % imhist(Img_3_C_diag), title('filtro diagonal')
        pass


def ex_4(item: str = "") -> None:

    print(f"Aula 2, exercício 2{item}")
    # % Img_4_2a = imread('smarties.tif');
    # % Img_4_2b = ordfilt2(Img_4_2a, 441, ones(21, 21));
    # % Img_4_2c_1 = imsubtract(Img_4_2b, Img_4_2a);

    # % figure(21)
    # % subplot(1, 3, 1), imshow(Img_4_2a), title('original image 2.a')
    # % subplot(1, 3, 2), imshow(Img_4_2b), title('image 2.b')
    # % subplot(1, 3, 3), imshow(Img_4_2c_1), title('image 2.c')


def ex_5(item: str = "") -> None:

    print(f"Aula 2, exercício 5{item}")

    if item == "a":
        # % 1) the application of a Laplacian filter
        # % 2) the application of a Gaussian filter before the Laplacian filter
        # % 3) the LoG filter (Laplacian of Gaussian).
        # % Use the imfilter and fspecial functions. Use sigma=1.4.

        # % Img_5_A = imread('hand.tif');
        # % Img_5_A_lap_w = fspecial('laplacian');
        # % % Como o filtro Laplaciano utiliza máscaras de 3x3,
        # % % usarei também para os outros filtros
        # % Img_5_A_gaus_w = fspecial('gaussian', [3 3], 1.4);
        # % Img_5_A_log_w = fspecial('log', [3 3], 1.4);
        # % % Img_5_A_log_w = fspecial('log', [43 43], 1.4);

        # % Img_5_A_1 = imfilter(Img_5_A, Img_5_A_lap_w);
        # % Img_5_A_2 = imfilter(Img_5_A, Img_5_A_gaus_w);
        # % Img_5_A_2 = imfilter(Img_5_2, Img_5_A_lap_w);
        # % Img_5_A_3 = imfilter(Img_5_A, Img_5_A_log_w);

        # % figure(22)
        # % subplot(2, 2, 1)
        # %imshow(Img_5_A), title('original')
        # % subplot(2, 2, 2)
        # %imshow(Img_5_A_1), title('Laplacian filter')
        # % subplot(2, 2, 3)
        # %imshow(Img_5_A_2), title('Gaussian filter -> Laplacian filter')
        # % subplot(2, 2, 4)
        # %imshow(Img_5_A_3), title('LoG filter (Laplacian of Gaussian)')
        pass
    elif item == "b":
        # % Img_5_B = imread('hand.tif');
        # % filter_sz = [3 3];

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_1_0_w = fspecial('log', filter_sz, 1.0);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_1_4_w = fspecial('log', filter_sz, 1.4);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_1_8_w = fspecial('log', filter_sz, 1.8);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_2_2_w = fspecial('log', filter_sz, 2.2);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_2_6_w = fspecial('log', filter_sz, 2.6);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_3_0_w = fspecial('log', filter_sz, 3.0);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_5_0_w = fspecial('log', filter_sz, 5.0);

        # % Img_5_B_1_0 = imfilter(Img_5_B, Img_5_B_1_0_w); % Filtered image
        # % Img_5_B_1_4 = imfilter(Img_5_B, Img_5_B_1_4_w); % Filtered image
        # % Img_5_B_1_8 = imfilter(Img_5_B, Img_5_B_1_8_w); % Filtered image
        # % Img_5_B_2_2 = imfilter(Img_5_B, Img_5_B_2_2_w); % Filtered image
        # % Img_5_B_2_6 = imfilter(Img_5_B, Img_5_B_2_6_w); % Filtered image
        # % Img_5_B_3_0 = imfilter(Img_5_B, Img_5_B_3_0_w); % Filtered image
        # % Img_5_B_5_0 = imfilter(Img_5_B, Img_5_B_5_0_w); % Filtered image

        # % Img_5_B_1_0 = edge(Img_5_B_1_0, 'zerocross'); % zero-cross method
        # % Img_5_B_1_4 = edge(Img_5_B_1_4, 'zerocross'); % zero-cross method
        # % Img_5_B_1_8 = edge(Img_5_B_1_8, 'zerocross'); % zero-cross method
        # % Img_5_B_2_2 = edge(Img_5_B_2_2, 'zerocross'); % zero-cross method
        # % Img_5_B_2_6 = edge(Img_5_B_2_6, 'zerocross'); % zero-cross method
        # % Img_5_B_3_0 = edge(Img_5_B_3_0, 'zerocross'); % zero-cross method
        # % Img_5_B_5_0 = edge(Img_5_B_5_0, 'zerocross'); % zero-cross method

        # % figure(23)
        # % subplot(2, 4, 1)
        # % imshow(Img_5_B), title('original (zero - cross method)')
        # % subplot(2, 4, 2)
        # % imshow(Img_5_B_1_0), title('LoG filter (sigma = 1.0)')
        # % subplot(2, 4, 3)
        # % imshow(Img_5_B_1_4), title('LoG filter (sigma = 1.4)')
        # % subplot(2, 4, 4)
        # % imshow(Img_5_B_1_8), title('LoG filter (sigma = 1.8)')
        # % subplot(2, 4, 5)
        # % imshow(Img_5_B_2_2), title('LoG filter (sigma = 2.2)')
        # % subplot(2, 4, 6)
        # % imshow(Img_5_B_2_6), title('LoG filter (sigma = 2.6)')
        # % subplot(2, 4, 7)
        # % imshow(Img_5_B_3_0), title('LoG filter (sigma = 3.0)')
        # % subplot(2, 4, 8)
        # % imshow(Img_5_B_5_0), title('LoG filter (sigma = 5.0)')

        # % filter_sz = [21 21];

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_1_0_w = fspecial('log', filter_sz, 1.0);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_1_4_w = fspecial('log', filter_sz, 1.4);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_1_8_w = fspecial('log', filter_sz, 1.8);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_2_2_w = fspecial('log', filter_sz, 2.2);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_2_6_w = fspecial('log', filter_sz, 2.6);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_3_0_w = fspecial('log', filter_sz, 3.0);

        # % LoG filter (Laplacian of Gaussian)
        # % Img_5_B_5_0_w = fspecial('log', filter_sz, 5.0);

        # % Img_5_B_1_0 = imfilter(Img_5_B, Img_5_B_1_0_w); % Filtered image
        # % Img_5_B_1_4 = imfilter(Img_5_B, Img_5_B_1_4_w); % Filtered image
        # % Img_5_B_1_8 = imfilter(Img_5_B, Img_5_B_1_8_w); % Filtered image
        # % Img_5_B_2_2 = imfilter(Img_5_B, Img_5_B_2_2_w); % Filtered image
        # % Img_5_B_2_6 = imfilter(Img_5_B, Img_5_B_2_6_w); % Filtered image
        # % Img_5_B_3_0 = imfilter(Img_5_B, Img_5_B_3_0_w); % Filtered image
        # % Img_5_B_5_0 = imfilter(Img_5_B, Img_5_B_5_0_w); % Filtered image

        # % Img_5_B_1_0 = edge(Img_5_B_1_0, 'zerocross'); % zero-cross method
        # % Img_5_B_1_4 = edge(Img_5_B_1_4, 'zerocross'); % zero-cross method
        # % Img_5_B_1_8 = edge(Img_5_B_1_8, 'zerocross'); % zero-cross method
        # % Img_5_B_2_2 = edge(Img_5_B_2_2, 'zerocross'); % zero-cross method
        # % Img_5_B_2_6 = edge(Img_5_B_2_6, 'zerocross'); % zero-cross method
        # % Img_5_B_3_0 = edge(Img_5_B_3_0, 'zerocross'); % zero-cross method
        # % Img_5_B_5_0 = edge(Img_5_B_5_0, 'zerocross'); % zero-cross method

        # % figure(24)
        # % subplot(2, 4, 1)
        # % imshow(Img_5_B), title('original (zero - cross method)')
        # % subplot(2, 4, 2)
        # % imshow(Img_5_B_1_0), title('LoG filter (sigma = 1.0)')
        # % subplot(2, 4, 3)
        # % imshow(Img_5_B_1_4), title('LoG filter (sigma = 1.4)')
        # % subplot(2, 4, 4)
        # % imshow(Img_5_B_1_8), title('LoG filter (sigma = 1.8)')
        # % subplot(2, 4, 5)
        # % imshow(Img_5_B_2_2), title('LoG filter (sigma = 2.2)')
        # % subplot(2, 4, 6)
        # % imshow(Img_5_B_2_6), title('LoG filter (sigma = 2.6)')
        # % subplot(2, 4, 7)
        # % imshow(Img_5_B_3_0), title('LoG filter (sigma = 3.0)')
        # % subplot(2, 4, 8)
        # % imshow(Img_5_B_5_0), title('LoG filter (sigma = 5.0)')
        pass


def ex_6(item: str = "") -> None:

    print(f"Aula 2, exercício 6{item}")
    if item == "a":
        # % Img_6_A = imread('hand.tif');

        # % figure(25)
        # % subplot(1, 3, 1)
        # % imshow(Img_6_A), title('original (zero - cross method)')
        # % subplot(1, 3, 2)
        # % imshow(Img_6_A_1), title('LoG filter (sigma = 1.0)')
        # % subplot(1, 3, 3)
        # % imshow(Img_6_A_2), title('LoG filter (sigma = 1.4)')
        pass
    elif item == "b":
        # % Img_6_B = imread('hand.tif');

        # % figure(25)
        # % subplot(1, 3, 1)
        # % imshow(Img_6_B), title('original (zero - cross method)')
        # % subplot(1, 3, 2)
        # % imshow(Img_6_B_1), title('LoG filter (sigma = 1.0)')
        # % subplot(1, 3, 3)
        # % imshow(Img_6_B_2), title('LoG filter (sigma = 1.4)')
        pass


def ex_7(item: str = "") -> None:

    print(f"Aula 2, exercício 7{item}")
    if item == "a":
        pass
    elif item == "b":
        # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Funções
        # % Função para calcular histogram stretch
        # % function g = histretch(f, f_max, f_min, g_max, g_min)
        # %     g = ((g_max - g_min) / (f_max - f_min)) * (f - f_min) + g_min;
        # % end

        # % function plot_base(rows, cols, img, title_str)
        # %     subplot(rows, cols, [1]), imshow(img), title(title_str)
        # %     subplot(rows, cols, [2 3]), imhist(img), title(title_str)
        # % end

        # % function plot_filter(rows, cols, filter_val, base_title)
        # %     k = 1;

        # %     for i = 3:2:9
        # %         k = k + 3;
        # %         title_str = sprintf('%s filter (%dx%d)', base_title, i, i);
        # %         subplot(rows, cols, [k])
        # %         imshow(filter_val), title(title_str)
        # %         subplot(rows, cols, [(k + 1) (k + 2)])
        # %         imhist(filter_val), title(title_str)
        # %     end

        # % end
        pass
