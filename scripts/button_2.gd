extends Button

func _ready():
	pressed.connect(_on_options_pressed)

func _on_options_pressed():
	get_tree().change_scene_to_file("res://scenes/options.tscn")
