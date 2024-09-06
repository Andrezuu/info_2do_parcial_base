extends TextureRect

@onready var score_label = $MarginContainer/HBoxContainer/score_label
@onready var counter_label = $MarginContainer/HBoxContainer/counter_label

var current_score = 0
var current_count = 0

func _ready():
	var grid = get_parent().get_node("grid")
	grid.connect("score_updated", _on_score_updated)

func _on_score_updated(points):
	current_score += points
	score_label.text = str(current_score)
