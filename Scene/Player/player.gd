extends CharacterBody2D

@onready var input_component: InputComponent = %InputComponent
@onready var movement_component: MovementComponent = %MovementComponent
@onready var interactor_component: InteractorComponent = %InteractorComponent
@onready var inventory_component: InventoryComponent = %InventoryComponent

func _physics_process(delta: float):
	input_component.update()
	movement_component.direction = input_component.move_direction
	movement_component.tick(delta)
	interactor_component.interact_pressed = input_component.interact_pressed
	interactor_component.tick(delta)