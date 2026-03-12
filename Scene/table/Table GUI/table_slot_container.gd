extends GridContainer

var selected_inventory_slot

func _ready():
	var index = 0
	for child in get_children():
		if child is Panel and "slot_index" in child:
			child.slot_index = index
			index += 1

func select(mouse_position):
	for child in get_children():
		if child is Panel:
			var global_rect = child.get_global_rect()
			if global_rect.has_point(mouse_position):
				deselect()
				print("Clicked on slot:", child.slot_index)
				child.modulate = Color(0.7, 0.85, 1.0, 1.0) # Light blue tint
				selected_inventory_slot = child
				return child

func deselect():
	selected_inventory_slot = null
	for child in get_children():
		if child is Panel:
			child.modulate = Color(1, 1, 1, 1) # Default color