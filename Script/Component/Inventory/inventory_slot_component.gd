extends Node

func add_item_to_slot(item_node: Node) -> void:
    if get_child_count() != 0:
        return # Slot already occupied
    add_child(item_node)

func remove_item_from_slot() -> void:
    if get_child_count() > 0:
        var child = get_child(0)
        remove_child(child)
        child.queue_free()