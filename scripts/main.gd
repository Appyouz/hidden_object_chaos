extends Node2D

var npc_is_awake: bool = false

func restart_game():
	var label = get_tree().current_scene.find_child("GameOverLabel", true, false)
	if label:
		label.visible = true
	
	await get_tree().create_timer(3.0).timeout
	npc_is_awake = false
	get_tree().reload_current_scene()
