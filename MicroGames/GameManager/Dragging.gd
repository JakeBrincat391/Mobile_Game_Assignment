extends Control

var is_dragging = false
var letter = ""

func _ready():
	Load_Letters()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				is_dragging = true
			else:
				is_dragging = false
				check_drop_position()
	elif event is InputEventMouseMotion and is_dragging:
		position += event.relative

func Load_Letters():
	var A = preload("res://Images/Letters/Blue/letter_A.png")
	var B = preload("res://Images/Letters/Blue/letter_B.png")
	var C = preload("res://Images/Letters/Blue/letter_C.png")
	var D = preload("res://Images/Letters/Blue/letter_D.png")
	var E = preload("res://Images/Letters/Blue/letter_E.png")
	var F = preload("res://Images/Letters/Blue/letter_F.png")
	var G = preload("res://Images/Letters/Blue/letter_G.png")
	var H = preload("res://Images/Letters/Blue/letter_H.png")
	var I = preload("res://Images/Letters/Blue/letter_I.png")
	var J = preload("res://Images/Letters/Blue/letter_J.png")
	var K = preload("res://Images/Letters/Blue/letter_K.png")
	var L = preload("res://Images/Letters/Blue/letter_L.png")
	var M = preload("res://Images/Letters/Blue/letter_M.png")
	var N = preload("res://Images/Letters/Blue/letter_N.png")
	var O = preload("res://Images/Letters/Blue/letter_O.png")
	var P = preload("res://Images/Letters/Blue/letter_P.png")
	var Q = preload("res://Images/Letters/Blue/letter_Q.png")
	var R = preload("res://Images/Letters/Blue/letter_R.png")
	var S = preload("res://Images/Letters/Blue/letter_S.png")
	var T = preload("res://Images/Letters/Blue/letter_T.png")
	var U = preload("res://Images/Letters/Blue/letter_U.png")
	var V = preload("res://Images/Letters/Blue/letter_V.png")
	var W = preload("res://Images/Letters/Blue/letter_W.png")
	var X = preload("res://Images/Letters/Blue/letter_X.png")
	var Y = preload("res://Images/Letters/Blue/letter_Y.png")
	var Z = preload("res://Images/Letters/Blue/letter_Z.png")
	
func check_drop_position():
	var main_node = get_parent()
	var target_position = main_node.get_node("UI/WordLabel").position
	if position.distance_to(target_position) < 100:
		is_dragging = false
		position = target_position
