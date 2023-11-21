extends Control

func goal(_player):
	$HBoxContainer/Player1Score.text = ScoreManager.get_player1_score()
	$HBoxContainer/Player2Score.text = ScoreManager.get_player2_score()
