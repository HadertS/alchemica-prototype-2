extends PanelContainer

@onready var info_label: Label = %SelectedLabel
@onready var info_content: Label = %SelectedContentLabel

func update(label_text: String, content_text: String) -> void:
	info_label.text = label_text
	info_content.text = content_text
