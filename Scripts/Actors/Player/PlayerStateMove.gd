extends BaseState

func physics_process(delta: float) -> Node:
	
	var dir = Input.get_vector("LEFT", "RIGHT", "UP", "DOWN")
	
	if dir == Vector2.ZERO:
		return states.Idle
	
	dir.normalized()
	actor.velocity = dir * actor.speed 
	actor.move_and_slide()
	
	return self
	
