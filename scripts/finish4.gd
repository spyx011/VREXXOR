extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("Something entered the finish: ", body.name)

	if body.name.to_lower() == "player":
		print("PLAYER FINISHED!")
		GameProgress.game_completed = true
		get_tree().change_scene_to_file("res://scenes/game_end.tscn")
