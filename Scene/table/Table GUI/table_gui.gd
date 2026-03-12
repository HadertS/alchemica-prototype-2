extends BoxContainer

@onready var input_component: InputComponent = %InputComponent

@onready var table_grid: GridContainer = %TableSlotContainer
@onready var info_panel: PanelContainer = %InfoPanel

var selected_inventory_slot = null
		
func _physics_process(delta: float):
	input_component.update()
	if input_component.mouse_clicked:
		var selected = table_grid.select(input_component.mouse_position)
		if selected != null:
			info_panel.update(selected.item, selected.contents)
	if input_component.debug_automation_advance_pressed:
		automation_tick(delta)

func automation_tick(delta):
	print("automation advanced")
	pass
