extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("Something entered the finish: ", body.name)

	if body.name.to_lower() == "player":
		print("PLAYER FINISHED!")
		GameProgress.next_level = "res://scenes/game_3.tscn"
		GameProgress.game_completed = false
		get_tree().change_scene_to_file("res://scenes/winner_screen.tscn")
