from skimage import io
from pydicom import dcmread

_, pl_class = __name__.split(".")
img_folder = f"./assets/{pl_class}"


def ex_1(item: str = "") -> None:

    print(f"Aula 1, exercício 1{item}\n")

    if item == "a":
        print("Executar 'imformats' no MatLAB para saber os formatos aceitos.")

    elif item == "b":
        img_1 = io.imread(f"{img_folder}/mona.tif")
        print(img_1)

    elif item == "c":
        img_2 = io.imread(f"{img_folder}/mamografia.bmp")
        print(img_2)

    elif item == "d":
        print("Verificar no painel inferior esquerdo do MatLAB se aparecem as \
               duas variáveis (Img_1 e Img_2).")


def ex_2(item: str = "") -> None:

    print(f"Aula 1, exercício 2{item}")

    if item == "a":
        img_dicom = io.imread(f"{img_folder}/Chest_XRay.dcm")
        print(img_dicom)

    elif item == "b":
        info_dicom = dcmread(f"{img_folder}/Chest_XRay.dcm")
        print(info_dicom)

    elif item == "c":
        print("Verificar no painel inferior esquerdo do MatLAB se aparecem as \
            duas variáveis (Img_Dicom e Info_dicom).")

    elif item == "d":
        info_dicom = dcmread(f"{img_folder}/Chest_XRay.dcm")
        pixel_representation = info_dicom.PixelRepresentation
        print(pixel_representation)


def ex_3(item: str = "") -> None:

    print(f"Aula 1, exercício 3{item}")

    if item == "a":
        # help size
        pass

    elif item == "b":
        # help whos
        pass

    elif item == "c":
        # size(Img_1)
        # size(Img_2)
        # size(Img_Dicom)
        pass

    elif item == "d":
        # %    D. Use the functions whos for getting additional information \
        # %       about the variables Img_1, Img_2 and Img_Dicom.
        # whos __ Img_1 Img_2 Img_Dicom
        pass


def ex_4(item: str = "") -> None:

    print(f"Aula 1, exercício 4{item}")

    if item == "a":
        # imshow(Img_1)
        pass

    elif item == "b":
        # imshow(Img_2)
        pass

    elif item == "c":
        # imshow(Img_1), figure, imshow(Img_2)
        # % O comando 'figure' permite apresentar a segunda imagem. Sem ele, \
        # % a segunda imagem não é exibida.
        pass

    elif item == "d":
        # figure, subplot(1, 2, 1), imshow(Img_1)
        # subplot(1, 2, 2), imshow(Img_2)
        # % O comando subplot divide a figura em partes. Neste caso, dividiu \
        # % em 2 partes.
        # % No primeiro comando, a imagem fica na 1a parte, á esquerda.
        # % No segundo, a imagem fica na 2a parte, à direita.
        pass

    elif item == "e":
        # imshow(Img_Dicom)
        # % Exibe a imgem com 'range' de dados padrão, inadequado para a \
        # % imagem dicom.

        # imshow(Img_Dicom, [])
        # % Exibe a imgem com 'range' de dados apropriado para a imagem dicom.
        pass

    elif item == "f":
        # close all; % close all the open windows
        # figure(1), imshow(Img_Dicom), figure(2), imshow(Img_Dicom, [])
        # figure(3), imshow(Img_Dicom, [0 255])
        # figure(4), imshow(Img_Dicom, [255 1024])
        # % Cada imagen possui diferentes 'ranges' da valor da escala de \
        # % cinza, de forma que possuem mais branco à medida que o range \
        # % aumenta.
        pass


def ex_5(item: str = "") -> None:

    print(f"Aula 1, exercício 5{item}")

    if item == "a":
        # imtool(Img_1)
        pass


def ex_6(item: str = "") -> None:

    print(f"Aula 1, exercício 6{item}")

    if item == "a":
        # imwrite(Img_2, "mamografia.tif")
        pass

    elif item == "b":
        # imwrite(Img_1, "mona.jpg", 'Quality', 0.5)
        # Img_2a = imread("mamografia.tif")
        # Img_1a = imread("mona.jpg")
        # figure(1), imshow(Img_2a), figure(2), imshow(Img_1a)
        pass

    elif item == "c":
        # imfinfo("mamografia.tif")
        # imfinfo("mona.jpg")
        pass

    elif item == "d":
        # imwrite(Img_Dicom, "micro_radiografia.tif")
        pass

    elif item == "e":
        # Img_Dicom_tif = imread("micro_radiografia.tif")
        # whos __ Img_Dicom_tif
        pass


def ex_7(item: str = "") -> None:

    print(f"Aula 1, exercício 7{item}")

    if item == "a":
        # % Verificar na ajuda do MatLAB
        pass

    elif item == "b":
        # Img_2_double = double(Img_2);
        # Img_Dicom_uint8 = uint8(Img_Dicom);
        # Img_4_double = Img_2_double .* 4;
        # Img_4 = uint8(Img_4_double);
        pass

    elif item == "c":
        # figure(1), subplot(1, 2, 1), imshow(Img_2_double)
        # subplot(1, 2, 2), imshow(Img_Dicom_uint8)
        # figure(2), subplot(1, 2, 1), imshow(Img_4_double)
        # subplot(1, 2, 2), imshow(Img_4)
        # figure(1), imshow(Img_2_double)
        # figure(2), imshow(Img_Dicom_uint8)
        # figure(3), imshow(Img_4_double)
        # figure(4), imshow(Img_4)
        # % As imagens em 'uint8' ficaram completamente brancas
        pass


def ex_8(item: str = "") -> None:

    print(f"Aula 1, exercício 8{item}")

    if item == "a":
        # a = [-0.5 0.5; 0.75 1.5]
        # b = uint8(a)
        # c = im2uint8(a)
        # % As matrizes resultantes demonstram o explicado no enunciado.
        pass

    elif item == "b":
        # d = uint8([25 50; 128 200])
        # e = double(d)
        # f = im2double(d)
        # g = mat2gray(d)
        # g0 = mat2gray(d, [0 255])
        pass

    elif item == "c":
        # d = [25 50; 128 200]
        # e1 = double(d)
        # f1 = im2double(d)
        # g1 = mat2gray(d)
        pass

    elif item == "d":
        # h = uint8([25 50; 128 200])
        # i = im2bw(h)
        # j = im2bw(h, 0.7)
        pass

    elif item == "e":
        # close all;
        # figure(1); imshow(Img_1);
        # Img_1_d = double(Img_1);
        # figure(2); imshow(Img_1_d);
        # Img_1_i2d = im2double(Img_1);
        # figure(3); imshow(Img_1_i2d);
        # Img_1_gray = mat2gray(Img_1)
        # figure(4); imshow(Img_1_gray);
        # Img_1_bw = im2bw(Img_1)
        # figure(5); imshow(Img_1_bw);
        pass


def ex_9(item: str = "") -> None:

    if not item:
        # close all;

        # % Exibe Img_1
        # figure, imshow(Img_1)

        # % Inverte verticalmente a imagem
        # Img_1_flipped = Img_1(end:-1:1, :);

        # % Exibe imagem invertida
        # figure, imshow(Img_1_flipped)

        # % Tenta cortar a imagem. Apresenta erro por ser maior que o tamanho \
        # % da imagem
        # % Img_1_crop = Img_1(257:768, 257:768);

        # % Corta a imagem no quadrante inferior direito
        # Img_1_crop = Img_1(257:512, 257:512);

        # % Exibe a imagem cortada
        # figure, imshow(Img_1_crop)

        # % Obtém imgem com metade dos pixels da imagem original
        # Img_1_subsampled = Img_1(1:2:end, 1:2:end);

        # % Exibe imagem em menor resolução
        # figure, imshow(Img_1_subsampled)

        # % Exibe gráfico de intensidade da Img_1?
        # figure, plot(Img_1(512, :))
        print("Exercise 9, no item.")

    elif item == "a":
        # % Define a matriz
        # A = [10 50 3; 70 2 125]

        # % Transforma a matriz 2 x 3 em matriz 6 x 1
        # V = A(:)

        # % Localiza o máximo valor nas linhas (matriz 1 x 3)
        # max_A = max(A)

        # % Localiza o máximo valor nas linhas (valor único)
        # max = max(A(:)) % max(V)

        # % Localiza o mínimo valor nas linhas (matriz 1 x 3)
        # min_A = min(A)

        # % Localiza o mínimo valor nas linhas (valor único)
        # min = min(A(:)) % min(V)
        print(f"Class 1, exercise 9{item}")

    else:
        print(f"Sorry, exercise 9.{item}. not found...")


def ex_10(item: str = "") -> None:

    print(f"Aula 1, exercício 10{item}")

    if item == "a":
        # % Ler documentação
        pass

    elif item == "b":
        # % Ler documentação
        pass


def ex_11(item: str = "") -> None:

    print(f"Aula 1, exercício 11{item}")

    if item == "a":
        # img_rgb = imread("retinografia.tif"); % Lê a imagem em cores
        # img_gray = rgb2gray(img_rgb); % Converte a imagem RGB para cinzenta
        # imshow(img_rgb); figure, imshow(img_gray); % Exibe as 2 imagens
        pass

    elif item == "b":
        # % Recupera apenas o canal RED e exibe a imagem
        # red = img_rgb(:, :, 1);
        # figure, imshow(red), title("RED");

        # % Recupera apenas o canal GREEN e exibe a imagem
        # green = img_rgb(:, :, 2);
        # figure, imshow(green), title("GREEN");

        # % Recupera apenas o canal BLUE e exibe a imagem
        # blue = img_rgb(:, :, 3);
        # figure, imshow(blue), title("BLUE");
        pass

    elif item == "c":
        # % Recupera apenas o canal RED, modificando o mínimo de saturação \
        # % e exibe a imagem
        # red_modificada = imadjust(red, [0.5 1])
        # figure, imshow(red_modificada);

        # % Concatena as matrizes da imgem red_modificada, green e blue, \
        # % formando uma imagem RGB com o canal RED modificado
        # img_rgb_modificada = cat(3, red_modificada, green, blue);
        # figure, imshow(img_rgb_modificada);
        pass


def ex_homework() -> None:

    print(f"Aula 1, HOMEWORK")

    # % Reads file info from all ".png" in "images" folder
    # files_info = dir("images/*.png")

    # % Creates an empty cell
    # full_cell = {}

    # for i = 1:length(files_info)
    # %   Read file
    #     image = imread(strcat("images/", files_info(i).name))
    # %   Convert file
    #     image_double = im2double(image)
    # %   Add file to cell
    #     full_cell = [full_cell, image_double]
    # end

    # full_cell
