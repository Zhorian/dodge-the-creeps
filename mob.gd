extends RigidBody2D

@export var min_speed: int # Minimum speed range.
@export var max_speed: int # Maximum speed range.
var mob_types = ["walk", "swim", "fly"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.animation = mob_types[randi() % mob_types.size()]
	$AnimatedSprite2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_visibility_screen_exited() -> void:
	queue_free()
