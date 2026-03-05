class_name InteractorComponent extends Node

@export var body: CharacterBody2D
@export var interactor: RayCast2D


var interact_pressed: bool = false

func tick(delta: float):
	if body == null or interactor == null:
		return
	if interact_pressed:
		var hit = interactor.get_collider()
		if "interactable_component" in hit:
			hit.interactable_component.interact()
		return
