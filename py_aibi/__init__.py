__version__ = '0.1.0'
from . import pl_01, pl_02, pl_03, pl_04


def execute(pl_class: int, exercise: int, item: str = "") -> None:
    """Run AIBI exercise.

    Arguments:
        pl_class {int} -- class number
        exercise {int} -- exercise number

    Keyword Arguments:
        item {str} -- exercise item, when applies (default: {""})
    """
    try:
        class_object = globals()[f"pl_{pl_class:02d}"]
        function_name = f"ex_{exercise}"
        _ = getattr(class_object, function_name)(item)

    except KeyError as class_error:
        print(f"Sorry, class {pl_class} not found... \
            \nError: Package {__name__} has no module {class_error}")

    except AttributeError as exercise_error:
        print(
            f"Sorry, class {pl_class} has no exercise {exercise}...\
            \nError: {exercise_error}")
