extends Move

@onready var bullet_scn = preload("res://Scenes/Items/Bullet.tscn")

func enter() -> void:
	_shoot()
	_change_state(states.Move)

func _shoot() -> void:
	var bullet = bullet_scn.instantiate()
	var mouse_pos = get_global_mouse_position()
	
	bullet.direction = actor.global_position.direction_to(mouse_pos)
	bullet.global_position = actor.global_position
	get_tree().get_root().add_child(bullet)
	await get_tree().create_timer(2).timeout
	
