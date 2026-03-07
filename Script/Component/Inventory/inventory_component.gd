class_name InventoryComponent extends Node

@export var total_slots: int = 30
@export var unlocked_slots: int = 10

func get_items() -> Array:
	return get_children()

func add_item(item: Node) -> void:
	add_child(item)

func remove_item(item: Node) -> void:
	if item.get_parent() == self:
		remove_child(item)
