extends Sprite2D

var is_dragging = true
var click_radius = 32 #change to size of sprite


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if (event.position - $Sprite2d.position).length() < click_radius:
			if not is_dragging and event.pressed:
				is_dragging = true
		if is_dragging and not event.pressed():
			is_dragging = false
	
	if event is InputEventMouseMotion and is_dragging:
		$Sprite2D.position = event.position
