from skimage import io

_, pl_class = __name__.split(".")
img_folder = f"./assets/{pl_class}"


def ex_1(item: str = "") -> None:
    # Escrever em papel.
    print(f"Aula 4, exercício 1{item}")
    if item == "a":
        pass
    elif item == "b":
        pass
    elif item == "c":
        pass
    elif item == "d":
        pass


def ex_2(item: str = "") -> None:

    print(f"Aula 4, exercício 2{item}")
    if item == "a":
        # Img_2 = imread("imp_digital.tif");
        img_2 = io.imread(f"{img_folder}/imp_digital.tif")
        print(img_2)
        # Img_2_double = im2double(Img_2);
        # figure, subplot(1, 2, 1), imshow(Img_2_double)
        # subplot(1, 2, 2), imhist(Img_2_double)
        pass
    elif item == "b":
        # threshold = 0.4825;
        # Img_2_binary = im2bw(Img_2_double, threshold);
        # figure, subplot(1, 2, 1), imshow(Img_2_double)
        # subplot(1, 2, 2), imshow(Img_2_binary)
        pass
    elif item == "c":
        # % T = Threshold by Otsu method
        # % MS = measure of separability
        # [T, MS] = graythresh(Img_2_double);
        # Img_2_binary_otsu = im2bw(Img_2_double, T);
        # figure, subplot(1, 2, 1), imshow(Img_2_binary)
        # subplot(1, 2, 2), imshow(Img_2_binary_otsu)
        pass
    elif item == "d":
        pass


def ex_3(item: str = "") -> None:
    # Img_3 = imread("celulas_1.tif");
    # Img_3_double = im2double(Img_3);
    # % figure, subplot(1,2,1), imshow(Img_3_double)
    # % subplot(1,2,2), imhist(Img_3_double)

    # % [T, MS] = multithresh(Img_3_double, 2)
    # % T = Threshold by Otsu method
    # % MS = measure of separability
    # % N = number of thresholds
    # T = multithresh(Img_3_double, 2)
    # Img_3_double_2_levels = imquantize(Img_3_double, T);
    # imshow(Img_3_double_2_levels, [])

    # save("pl_04_leandro.mat")

    print(f"Aula 4, exercício 3{item}")
    if item == "a":
        pass
    elif item == "b":
        pass
    elif item == "c":
        pass
    elif item == "d":
        pass


def ex_4(item: str = "") -> None:

    print(f"Aula 4, exercício 4{item}")


def ex_5(item: str = "") -> None:

    print(f"Aula 4, exercício 5{item}")
    if item == "a":
        pass
    elif item == "b":
        pass
    elif item == "c":
        pass


def ex_6(item: str = "") -> None:

    print(f"Aula 4, exercício 6{item}")
    if item == "a":
        pass
    elif item == "b":
        pass


def ex_7(item: str = "") -> None:

    print(f"Aula 4, exercício 7{item}")
    if item == "a":
        pass
    elif item == "b":
        pass
    elif item == "c":
        pass


def ex_8(item: str = "") -> None:

    print(f"Aula 8, exercício 7{item}")


def ex_9(item: str = "") -> None:

    print(f"Aula 9, exercício 7{item}")
    if item == "a":
        pass
    elif item == "b":
        pass
    elif item == "c":
        pass


def ex_10(item: str = "") -> None:

    print(f"Aula 2, exercício 10{item}")
