extends TextureRect

@onready var score_label = $MarginContainer/HBoxContainer/score_label
@onready var counter_label = $MarginContainer/HBoxContainer/counter_label

var current_score = 0
var current_count = 6

func _ready():
	var grid = get_parent().get_node("grid")
	counter_label.text = str(current_count)
	grid.connect("score_updated", _on_score_updated)
	grid.connect("move_counter", _on_move_counter)

func _on_score_updated(points):
	current_score += points
	score_label.text = str(current_score)

func _on_move_counter():
	current_count -= 1
	counter_label.text = str(current_count)
	if current_count == 0:
		print('game over')
	
