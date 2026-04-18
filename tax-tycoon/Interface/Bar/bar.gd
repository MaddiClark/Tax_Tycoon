extends Node2D

@onready var monTimer = $Bar/Count/VBoxContainer/sixtySec
@onready var month = $Bar/Count/VBoxContainer/Month
@onready var monCount = $Bar/Count/VBoxContainer/sixtySec/fiveSec
var steppy = 0
var farmTime = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	monCount.timeout.connect(_on_timer_timeout5)
	monTimer.timeout.connect(_on_timer_timeout60)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout5() -> void:
	steppy += 1
	month.text = str(steppy)
	if !farmTime:
		monCount.stop()


func _on_timer_timeout60() -> void:
	farmTime = false
