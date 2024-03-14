extends Actor

@export var parasite : bool = true

func _ready():
	if parasite:
		_change_color(Color(0, 0, 0, 1))
	else:
		_change_color(Color(1, 1, 1, 1))

func _change_color(color: Color) -> void:
	self.sprite.modulate = color
