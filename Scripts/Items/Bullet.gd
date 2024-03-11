extends Area2D

@onready var speed : float = 200.0

var direction : Vector2 = Vector2.ZERO

func _ready() -> void:
	body_entered.connect(_on_body_entered)


func _process(delta: float) -> void:
	position += direction.normalized() * speed * delta

######### SIGNALS ########
func _on_body_entered(body: Node) -> void:
		queue_free()
