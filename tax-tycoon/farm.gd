extends Node2D

@onready var upgrade_button = $"Upgrade Button"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	upgrade_button.button_pressed.connect(_to_upgrades)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _to_upgrades() -> void:
	get_tree().change_scene("res://upgrades.tscn")
