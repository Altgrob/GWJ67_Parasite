extends Area2D

@onready var speed : float = 900.0

var direction : Vector2 = Vector2.ZERO

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	$VisibleOnScreenNotifier2D.screen_exited.connect(_on_screen_exited)

func _process(delta: float) -> void:
	position += direction.normalized() * speed * delta

######### SIGNALS ########
func _on_body_entered(body: Node) -> void:
		queue_free()

func _on_screen_exited() -> void:
	queue_free()
