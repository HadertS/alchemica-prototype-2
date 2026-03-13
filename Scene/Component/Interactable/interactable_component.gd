class_name InteractableComponent extends Node


func interact():
	var interaction_queue = get_children()
	for interaction in interaction_queue:
		interaction.action()
