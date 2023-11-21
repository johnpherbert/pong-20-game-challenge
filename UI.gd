extends Control

var player1score = 0
var player2score = 0

func _ready():
	player1score = 0
	player2score = 0


func goal(player):
	$HBoxContainer/Player1Score.text = ScoreManager.get_player1_score()
	$HBoxContainer/Player2Score.text = ScoreManager.get_player2_score()



