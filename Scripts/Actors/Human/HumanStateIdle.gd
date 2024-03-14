extends BaseState

func enter() -> void:
	if actor.parasite:
		await get_tree().create_timer(randf_range(1.0, 3.0)).timeout
		_change_state(states.Move)

