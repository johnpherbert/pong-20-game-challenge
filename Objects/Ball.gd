extends CharacterBody2D

@export var SPEED = 5.0
@export var SPEED_INC = 0.5

var ball_direction = 1
var rng = RandomNumberGenerator.new()

func _ready():
	velocity.x = SPEED * ball_direction
	velocity.y = rng.randf_range(-5,5)

func _physics_process(_delta):
	var collide_info = move_and_collide(velocity)
	if collide_info:
		velocity = velocity.bounce(collide_info.get_normal())
		velocity *= 1.1


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
