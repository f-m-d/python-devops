from random import choices


def fruit():
    fruits = ["apple", "cherry", "strawberry"]
    return choices(fruits)[0]

# Example to generate a warning in pylint:
# assigning a variable... to itself!
# var = 1
# var = var