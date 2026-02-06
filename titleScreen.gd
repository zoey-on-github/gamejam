extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	splashTest()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://level.tscn")

func splashTest():
	var file = "res://splashes.txt"
	var list = FileAccess.open(file, FileAccess.READ)
	var rng = RandomNumberGenerator.new()
		
	while not list.eof_reached():
		%splash.text = "[center][wave freq=10][rainbow freq=0.1 sat=0.5]" + list.get_line() + "[/rainbow][/wave][/center]"
		if rng.randi() % 10 == 0:
			return