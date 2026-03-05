extends CharacterBody2D

@onready var input_component: InputComponent = %InputComponent
@onready var movement_component: MovementComponent = %MovementComponent

func _physics_process(delta: float):
    input_component.update()
    movement_component.direction = input_component.move_direction
    movement_component.tick(delta)