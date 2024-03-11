extends BaseState


func enter() -> void:
	print("Enter Idle state")
	
	
func input(event: InputEvent) -> Node:
	
	if Input.get_vector("LEFT", "RIGHT", "DOWN", "UP")	!= Vector2.ZERO:
		return states.Move
	
	return self
