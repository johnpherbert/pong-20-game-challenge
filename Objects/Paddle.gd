extends CharacterBody2D

@export var SPEED = 600.0
@export var player = "player1"

var player_inputs = ["player1_up","player1_down"]
var paddle_height = 75

func _ready():
	player_inputs = get_input_strings()

func _physics_process(_delta):
	var screen_size = get_viewport_rect().size
	var direction = Input.get_axis(player_inputs[0], player_inputs[1])
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	position.y = clamp(position.y,0 + paddle_height,screen_size.y - paddle_height)

func get_input_strings():
	return [player + "_up",player+"_down"]
