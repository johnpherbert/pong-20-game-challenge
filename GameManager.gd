extends Node

@export var ball:PackedScene
@export var players_turn = 1

func _ready():
	ScoreManager.reset_scores()
	ScoreManager.player_won.connect(win)
	start_round()

func start_round():
	var new_ball = ball.instantiate()
	new_ball.ball_direction = players_turn
	call_deferred("add_child", new_ball)

func goal(player):
	ScoreManager.goal(player)
	players_turn *= -1
	start_round()

func win():
	get_tree().change_scene_to_file("res://Screens/win_screen.tscn")
