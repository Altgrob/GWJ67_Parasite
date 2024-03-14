extends BaseState

func enter() -> void:
	await get_tree().create_timer(randf_range(1.0, 3.0)).timeout
	_change_state(states.Idle)


func physics_process(delta: float) -> Node:
	if actor.parasite:
		return _parasite_move()
	else:
		return _human_move()
	
func _parasite_move() -> Node:
	return self
	
func _human_move() -> Node:
	return self
