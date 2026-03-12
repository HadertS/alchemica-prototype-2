extends BoxContainer

@onready var input_component: InputComponent = %InputComponent

@onready var table_grid: GridContainer = %TableSlotContainer
@onready var info_panel: PanelContainer = %InfoPanel

func _ready():
	var index = 0
	for child in table_grid.get_children():
		if child is Panel and "slot_index" in child:
			child.slot_index = index
			index += 1
		
func _physics_process(delta: float):
	input_component.update()
	if input_component.mouse_clicked:
		for child in table_grid.get_children():
			if child is Panel:
				var global_rect = child.get_global_rect()
				if global_rect.has_point(input_component.mouse_position):
					print("Clicked on slot:", child.slot_index)
					info_panel.update(child.item, child.contents)
					

func automation_tick(delta):
	pass
