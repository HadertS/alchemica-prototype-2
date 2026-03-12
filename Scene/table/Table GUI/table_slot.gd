extends Panel

@export var item: String = "Empty"
@export var contents: String = "Empty"

@onready var label: Label = %Label

var slot_index: int

func _ready():
	label.text = item

func automation_tick():
	pass
