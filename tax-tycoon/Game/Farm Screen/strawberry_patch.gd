extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_pressed() -> void:
	var upgrade_level = 1
	if global.shovel == true:
		upgrade_level = 2
		if global.sprinkler == true:
			upgrade_level = 4
			if global.tracor == true:
				upgrade_level = 8
	global.count += upgrade_level
	get_node("Count Label").text = str(global.count)
