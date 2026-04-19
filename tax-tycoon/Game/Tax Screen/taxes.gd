extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_arrow_pressed() -> void:
	$Sprite2D3.hide()
	$Sprite2D4.hide()
	$Sprite2D5.hide()
	$W2.hide()
	$"10-40 - 1".show()
