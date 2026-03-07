class_name InventoryComponent extends Node

@export var total_unlocked_slots: int = 10
@export var max_slots: int = 30

func create_inventory_slots() -> void:
    # Create new slots up to total_unlocked
    for i in range(total_unlocked_slots):
        add_slot()

func unlock_slots(new_slots: int):
    # Unlocks a specified number of slots, but does not exceed max_slots
    var to_unlock = min(new_slots, max_slots - total_unlocked_slots)
    if to_unlock > 0:
        for i in range(to_unlock):
            add_slot()
        total_unlocked_slots += to_unlock

func add_slot() -> void:
        var slot = preload("res://Script/Component/Inventory/inventory_slot_component.gd").new()
        add_child(slot)

func get_inventory_slots() -> Array:
    return get_children()

func add_item(item: Node, slot: int) -> void:
    var slots = get_inventory_slots()
    if slot >= 0 and slot < slots.size():
        var slot_node = slots[slot]
        slot_node.add_item_to_slot(item)
    else:
        print("Invalid slot index.")

func remove_item() -> void:
    pass
