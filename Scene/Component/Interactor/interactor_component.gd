class_name InteractorComponent extends Node

@export var body: CharacterBody2D
@export var interactor: RayCast2D


var interact_pressed: bool = false

func tick(delta: float):
	if body == null or interactor == null:
		return
	if interact_pressed:
		var hit = interactor.get_collider()
		if hit != null and "interactable_component" in hit:
			var interactable_component = hit.interactable_component as InteractableComponent
			if interactable_component != null:
				interactable_component.interact()
		return
