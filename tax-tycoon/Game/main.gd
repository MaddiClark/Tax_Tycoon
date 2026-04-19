extends Node2D

var count = 0
var tractor_upgrade = false
var shovel_upgrade = false
var sprinkler_upgrade = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://Game/Title Screen/title.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
