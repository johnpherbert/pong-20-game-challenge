extends Node

signal player_won()

var winning_player = Globals.PLAYERS.NONE

var player1_score = 0
var player2_score = 0

var goals_to_win = 10

func reset_scores():
	player1_score = 0
	player2_score = 0

func goal(player):
	if player == Globals.PLAYERS.PLAYER_1:
		player1_score += 1
		win_check(Globals.PLAYERS.PLAYER_1, player1_score)
	else:
		player2_score += 1
		win_check(Globals.PLAYERS.PLAYER_2, player2_score)

func win_check(player, score):
	if score >= goals_to_win:
		winning_player = player
		player_won.emit()

func get_player1_score():
	return str(player1_score)

func get_player2_score():
	return str(player2_score)
	
func get_winning_player():
	if winning_player == Globals.PLAYERS.PLAYER_1:
		return "Player 1"
	elif winning_player == Globals.PLAYERS.PLAYER_2:
		return "Player 2"
