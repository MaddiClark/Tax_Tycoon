extends Sprite2D

var dragging = false
var drag_offset = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				# Check if mouse is over the sprite
				if get_rect().has_point(to_local(event.position)):
					dragging = !dragging
				else:
					dragging = false

	elif event is InputEventMouseMotion and dragging:
		position = event.position + drag_offset
