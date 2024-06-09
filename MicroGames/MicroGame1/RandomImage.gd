extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	load_image()

func load_image():
	var Images = [
		preload("res://Images/Animals/Round/goat.png"),
		preload("res://Images/Animals/Round/cow.png"),
		preload("res://Images/Animals/Round/zebra.png"),
		preload("res://Images/Animals/Round/dog.png"),
		preload("res://Images/Animals/Round/duck.png"),
		preload("res://Images/Animals/Round/panda.png"),
		preload("res://Images/Animals/Round/frog.png"),
		preload("res://Images/Animals/Round/pig.png")
	]
