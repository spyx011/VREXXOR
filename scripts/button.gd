extends Button

func _ready():
	pressed.connect(_on_start_pressed)

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")
