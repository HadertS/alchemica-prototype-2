class_name InputComponent extends Node

var move_direction: Vector2 = Vector2.ZERO

var interact_pressed: bool = false
var inventory_pressed: bool = false


var mouse_position: Vector2 = Vector2.ZERO
var mouse_clicked: bool = false

func update():
    # Read input and assemble movement vector based on default Godot input actions.
    move_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    
    interact_pressed = Input.is_action_just_pressed("ui_select")
    inventory_pressed = Input.is_action_just_pressed("ui_inventory")
    
    mouse_position = get_viewport().get_mouse_position()
    mouse_clicked = Input.is_action_just_pressed("click")
