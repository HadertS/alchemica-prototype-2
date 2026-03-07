class_name ItemComponent extends Node

@export var item_name: String = ""
@export var item_id: int = 0
@export var stackable: bool = false
@export var max_stack: int = 1
@export var ammount: int = 1

var amount: int = 1

func use() -> void:
    pass
