extends BoxContainer

@onready var input_component: InputComponent = %InputComponent

@onready var table_grid: GridContainer = %TableSlotContainer
@onready var info_panel: PanelContainer = %InfoPanel
@onready var inventory_grid: GridContainer = %InventoryGrid

var selected_inventory_slot = null
		
func _physics_process(delta: float):
	input_component.update()
	if input_component.mouse_clicked:
		var table_selected = table_grid.select(input_component.mouse_position)
		if table_selected != null:
			info_panel.update(table_selected.item, table_selected.contents)
		var inventory_selected = inventory_grid.select(input_component.mouse_position)
		
	if input_component.debug_automation_advance_pressed:
		automation_tick(delta)

func automation_tick(delta):
	print("automation advanced")
	pass
