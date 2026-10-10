
extends Control

func _on_next_level_pressed() -> void:
	if GameProgress.game_completed:
		return

	var error = get_tree().change_scene_to_file(GameProgress.next_level)

	if error != OK:
		print("ERROR: Could not load next level: ", GameProgress.next_level)


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_munu.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
