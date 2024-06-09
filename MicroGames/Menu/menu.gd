extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_pressed():
	get_tree().change_scene_to_file("res://MicroGame1/MatchAndLearn.tscn")

func _on_button_down():
	get_tree().change_scene_to_file("res://MicroGame2/3Pics1Word.tscn")

func _on_button_up():
	get_tree().change_scene_to_file("res://MicroGame3/WordMatch.tscn")
