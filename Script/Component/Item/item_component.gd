class_name ItemComponent extends Node

@export var item_name: String = ""
@export var max_stack: int = 1
@export var ammount: int = 1

func use() -> void:
    print(item_name, " used")
    pass