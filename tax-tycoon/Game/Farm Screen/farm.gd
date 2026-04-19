extends Node2D

var farmTime = true
var steppy = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
<<<<<<< HEAD
	Timer60.start
	Timer5.start

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
=======
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if farmTime:
		var timeElapsed = ($Timer60.time_left - 60) * (-1)
		print(timeElapsed)
		var barPercent = (timeElapsed / 60) * 100
		print(barPercent)
		$Bar_Node/Bar/Timer_Progress.value = barPercent



func _on_timer_60_timeout() -> void:
	farmTime = false


func _on_timer_5_timeout() -> void:
	if farmTime:
		steppy += 1
		$Bar_Node/Bar/Count/VBoxContainer/Month.text = str(steppy)
>>>>>>> parent of 3a5af0e (I keep breaking shit)
