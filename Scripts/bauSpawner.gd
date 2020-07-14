extends Node

var preBau = preload("res://Scenes/bau.tscn")

func _ready():
	set_process(true)
	print("QUASE")
	pass

func _process(delta):
	var bau = preBau.instance()
	bau.set_pos(Vector2(65, 638))
	get_owner().add_child(bau)
	pass