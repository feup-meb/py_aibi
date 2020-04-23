from skimage import io


def ex_1(item: str = "") -> None:

    print(f"Aula 3, exercício 1{item}")


def ex_2(item: str = "") -> None:

    print(f"Aula 3, exercício 2{item}")
    img_2 = io.imread(f"{img_folder}/imp_digital_ruido.tif")
    print(img_2)


def ex_3(item: str = "") -> None:

    print(f"Aula 3, exercício 3{item}")


def ex_4(item: str = "") -> None:

    print(f"Aula 3, exercício 4{item}")
    if item == "a":
        pass
    elif item == "b":
        pass


def ex_5(item: str = "") -> None:

    print(f"Aula 3, exercício 5{item}")
    if item == "a":
        pass
    elif item == "b":
        pass
    elif item == "c":
        pass
    elif item == "d":
        pass


def ex_6(item: str = "") -> None:

    print(f"Aula 3, exercício 6{item}")
    if item == "a":
        pass
    elif item == "b":
        pass
    elif item == "c":
        pass


def ex_7(item: str = "") -> None:

    print(f"Aula 3, exercício 7{item}")


if __name__ == "__main__":
    pl_class = 3
    exercise = 1
    item = "a"

    function_name = f"ex_{exercise}"
    function_to_call = locals()[function_name]
    function_to_call(item)

else:
    _, pl_class = __name__.split(".")

img_folder = f"./assets/{pl_class}"
