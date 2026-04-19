extends Node2D


@onready var start_button = $"Start Button"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_button.button_pressed.connect(_start_game)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _start_game() -> void:
	get_tree().change_scene("res://farm.tscn")
