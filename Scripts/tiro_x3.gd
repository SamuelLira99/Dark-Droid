extends "res://Scripts/Tiro.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)
	get_node("somTiro").play("tiro")
	dano = 6
	pass