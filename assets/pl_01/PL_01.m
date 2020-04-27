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
imformats

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.B.
Img_1 = imread("mona.tif");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.C.
Img_2 = imread("mamografia.bmp");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1.D.
% Verificar no painel inferior esquerdo se aparecem as duas variáveis
% (Img_1 e Img_2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.A.
Img_Dicom = dicomread("Chest_XRay.dcm");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.B.
% Info_dicom = dicomread("Chest_XRay.dcm");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.C.
% Verificar no painel inferior esquerdo se aparecem as duas variáveis
% (Img_Dicom e Info_dicom).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2.D.
Info_dicom = dicominfo("Chest_XRay.dcm");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.A.
help size
size(Img_1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.B.
help whos

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.C.
size(Img_1)
size(Img_2)
size(Img_Dicom)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.D.
%    D. Use the functions whos for getting additional information about the
%       variables Img_1, Img_2 and Img_Dicom.
whos __ Img_1 Img_2 Img_Dicom

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.A.
imshow(Img_1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.B.
imshow(Img_2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.C.
imshow(Img_1), figure, imshow(Img_2)
% O comando 'figure' permite apresentar a segunda imagem. Sem ele, a segunda
% imagem não é exibida.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.D.
figure, subplot(1, 2, 1), imshow(Img_1)
subplot(1, 2, 2), imshow(Img_2)
% O comando subplot divide a figura em partes. Neste caso, dividiu em 2 partes.
% No primeiro comando, a imagem fica na 1a parte, à esquerda.
% No segundo, a imagem fica na 2a parte, à direita.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.E.
imshow(Img_Dicom)
% Exibe a imgem com 'range' de dados padrão, inadequado para a imagem dicom.

imshow(Img_Dicom, [])
% Exibe a imgem com 'range' de dados apropriado para a imagem dicom.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.F.
close all; % close all the open windows
figure(1), imshow(Img_Dicom)
figure(2), imshow(Img_Dicom, [])
figure(3), imshow(Img_Dicom, [0 255])
figure(4), imshow(Img_Dicom, [255 1024])
% Cada imagem possui diferentes 'ranges' da valor da escala de cinza, de
% forma que possuem menos branco é medida que o range aumenta.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 5.A.
imtool(Img_1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.A.
imwrite(Img_2, "mamografia.tif")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.B.
imwrite(Img_1, "mona.jpg", 'Quality', 0.5)
Img_2a = imread("mamografia.tif")
Img_1a = imread("mona.jpg")
figure(1), imshow(Img_2a)
figure(2), imshow(Img_1a)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.C.
imfinfo("mamografia.tif")
imfinfo("mona.jpg")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.D.
imwrite(Img_Dicom, "micro_radiografia.tif")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.E.
Img_Dicom_tif = imread("micro_radiografia.tif");
whos __ Img_Dicom_tif

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.A.
% Verificar na ajuda do MatLAB

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.B.
Img_2_double = double(Img_2);
Img_Dicom_uint8 = uint8(Img_Dicom);
Img_4_double = Img_2_double .* 4;
Img_4 = uint8(Img_4_double);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7.C.
figure(1), subplot(1, 2, 1), imshow(Img_2_double)
subplot(1, 2, 2), imshow(Img_Dicom_uint8)
figure(2), subplot(1, 2, 1), imshow(Img_4_double)
subplot(1, 2, 2), imshow(Img_4)
figure(1), imshow(Img_2_double)
figure(2), imshow(Img_Dicom_uint8)
figure(3), imshow(Img_4_double)
figure(4), imshow(Img_4)
% As imagens em 'double' ficaram completamente brancas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8.A.
a = [-0.5 0.5; 0.75 1.5]
b = uint8(a)
c = im2uint8(a)
% As matrizes resultantes demonstram o que foi explicado no enunciado.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8.B.
d = uint8([25 50; 128 200])
e = double(d)
f = im2double(d)
g = mat2gray(d)
g0 = mat2gray(d, [0 255])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8.C.
d = [25 50; 128 200]
e1 = double(d)
f1 = im2double(d)
g1 = mat2gray(d)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8.D.
h = uint8([25 50; 128 200])
i = im2bw(h)
j = im2bw(h, 0.7)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8.E.
close all;
figure(1); imshow(Img_1);
Img_1_d = double(Img_1);
figure(2); imshow(Img_1_d);
Img_1_i2d = im2double(Img_1);
figure(3); imshow(Img_1_i2d);
Img_1_gray = mat2gray(Img_1)
figure(4); imshow(Img_1_gray);
Img_1_bw = im2bw(Img_1)
figure(5); imshow(Img_1_bw);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.
close all;
figure, imshow(Img_1)                       % Exibe Img_1
Img_1_flipped = Img_1(end:-1:1, :); % Inverte verticalmente a imagem
figure, imshow(Img_1_flipped)               % Exibe imagem invertida
% Img_1_crop = Img_1(257:768, 257:768);     % Tenta cortar a imagem. Apresenta erro por ser maior que o tamanho da imagem
Img_1_crop = Img_1(257:512, 257:512); % Corta a imagem no quadrante inferior direito
figure, imshow(Img_1_crop)                  % Exibe a imagem cortada
Img_1_subsampled = Img_1(1:2:end, 1:2:end); % Obtém imgem com metade dos pixels da imagem original
figure, imshow(Img_1_subsampled)            % Exibe imagem em menor resolução
figure, plot(Img_1(512, :))                 % Exibe gráfico de intensidade da Img_1?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 9.A.
A = [10 50 3; 70 2 125]       % Define a matriz
V = A(:)                      % Transforma a matriz 2 x 3 em matriz 6 x 1
max_A = max(A)                % Localiza o máximo valor nas linhas (matriz 1 x 3)
max = max(A(:)) % max(V)      % Localiza o máximo valor nas linhas (valor único)
min_A = min(A)                % Localiza o mínimo valor nas linhas (matriz 1 x 3)
min = min(A(:)) % min(V)      % Localiza o mínimo valor nas linhas (valor único)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 10.A.
% Ler documentação

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 10.B.
% Ler documentação

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 11.A.
img_rgb = imread("retinografia.tif"); % Lê a imagem em cores
img_gray = rgb2gray(img_rgb); % Converte a imagem RGB para cinzenta
imshow(img_rgb); figure, imshow(img_gray); % Exibe as 2 imagens

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 11.B.
red = img_rgb(:, :, 1); figure, imshow(red), title("RED"); % Recupera apenas o canal RED e exibe a imagem
green = img_rgb(:, :, 2); figure, imshow(green), title("GREEN"); % Recupera apenas o canal GREEN e exibe a imagem
blue = img_rgb(:, :, 3); figure, imshow(blue), title("BLUE"); % Recupera apenas o canal BLUE e exibe a imagem

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 11.C.
red_modificada = imadjust(red, [0.5 1]); figure, imshow(red_modificada); % Recupera apenas o canal RED, modificando o mínimo de saturação e exibe a imagem
img_rgb_modificada = cat(3, red_modificada, green, blue); % Concatena as matrizes da imgem red_modificada, green e blue, formando uma imagem RGB com o canal RED modificado
figure, imshow(img_rgb_modificada); % Exibe a imagem RGB modificada

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HOMEWORK
files_info = dir("images/*.png")    	% Reads file info from all ".png" in "images" folder
full_cell = {}                        	% Creates an empty cell

for i = 1:length(files_info)                            	% Loop "files_info"
    image = imread(strcat("images/", files_info(i).name))  	% Read file
    image_double = im2double(image)                       	% Convert file
    full_cell = [full_cell, image_double]                  	% Add file to cell
end

full_cell								% Print "full_cell" info in Command Window
