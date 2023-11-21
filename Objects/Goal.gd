extends Area2D

signal goal(player)

@export var player_goal = Globals.PLAYERS.PLAYER_1

func _on_body_entered(_body):
	goal.emit(player_goal)
