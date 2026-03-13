extends GridContainer

var selected

func select(mouse_position):
	for child in get_children():
		if child is Panel:
			var global_rect = child.get_global_rect()
			if global_rect.has_point(mouse_position):
				if selected != child:
					deselect()
					child.modulate = Color(0.7, 0.85, 1.0, 1.0) # Light blue tint
					selected = child
					return selected
				else:
					deselect()
					return selected

func deselect():
	if selected != null:
		selected.modulate = Color(1, 1, 1, 1) # Default color
		selected = null
