extends CharacterBody2D

var is_sleeping: bool = false

func _ready() -> void:
	is_sleeping = true
	$Label.text = "Zzzzzzz"

	$StateTimer.start()
		
func _on_state_timer_timeout() -> void:

	if is_sleeping:
		is_sleeping = false
		Main.npc_is_awake = true
		$Label.text = "Awake!"
		$StateTimer.wait_time = 3
	else:
		is_sleeping = true
		Main.npc_is_awake = false
		$Label.text = "Zzzzzzz"
		$StateTimer.wait_time = 5
		
	$StateTimer.start()
