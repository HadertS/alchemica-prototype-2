extends PanelContainer

@onready var table_label: Label = %TargetLabel
@onready var table_content: Label = %TargetContentLabel

func update(label_text: String, content_text: String) -> void:
	table_label.text = label_text
	table_content.text = content_text
