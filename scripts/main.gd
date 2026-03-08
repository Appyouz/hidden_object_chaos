extends Node2D

var npc_is_awake: bool = false

func restart_game():
	npc_is_awake = false
	get_tree().reload_current_scene()
