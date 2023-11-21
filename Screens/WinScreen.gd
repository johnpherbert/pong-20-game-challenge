extends Control

func _ready():
	$VBoxContainer/PlayerWins.text = ScoreManager.get_winning_player() + " Wins!"
	$VBoxContainer/Score.text = ScoreManager.get_player1_score() + " - " + ScoreManager.get_player2_score()
	
func _on_quit_pressed():
	get_tree().quit()

func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://game_board.tscn")
