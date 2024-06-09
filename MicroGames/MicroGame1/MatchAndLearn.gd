extends Node

@onready var guess = $UI/Guess
var word = "EXAMPLE"
var letters = word.split("")

func _ready():
	create_draggable_letters()

func create_draggable_letters():
	var draggable_scene = preload("res://GameManager/Letters.tscn")
	for letter in letters:
		var letter_instance = draggable_scene.instantiate()
		letter_instance.letter = letter
		letter_instance.update_letter_image()
		add_child(letter_instance)
		letter_instance.rect_position = Vector2(randi() % 800, randi() % 600)
