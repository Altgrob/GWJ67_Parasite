extends BaseState

func input(event: InputEvent) -> Node:
	
	if Input.get_vector("LEFT", "RIGHT", "UP", "DOWN")	!= Vector2.ZERO:
		return states.Move
	
	return self
