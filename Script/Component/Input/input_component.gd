class_name InputComponent extends Node

## The normalized direction vector to use for movement.
var move_direction: Vector2 = Vector2.ZERO

func update():
    # Read input and assemble movement vector based on default Godot input actions.
    move_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    print("move_direction: ", move_direction)
