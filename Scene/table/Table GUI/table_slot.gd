extends Panel

@export var slot_index: int = 0
@export var item: String = "Empty"
@export var contents: String = "Empty"

@onready var label: Label = %Label

func _ready():
	label.text = item

func automation_tick():
	pass
