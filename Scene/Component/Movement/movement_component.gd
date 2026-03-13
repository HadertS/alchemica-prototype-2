class_name MovementComponent extends Node

@export var body: CharacterBody2D
@export var model: Node2D
@export var speed := 100.0

var direction: Vector2 = Vector2.ZERO

func tick(delta: float) -> void:
    if body == null:
        return

    body.velocity.x = direction.x * speed
    body.velocity.y = direction.y * speed
    body.move_and_slide()
    if model and direction.length() > 0.001:
        var look_direction := direction.normalized()

        # Look at the direction of the movement
        model.look_at(model.global_position + look_direction)