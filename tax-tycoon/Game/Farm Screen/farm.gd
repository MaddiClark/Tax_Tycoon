extends Node2D

var farmTime = true
var steppy = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Timer60.start
	Timer5.start

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
