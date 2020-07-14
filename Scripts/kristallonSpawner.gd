extends Node

var preStreuner
var preLordakia
var preSaimon
var preMordon
var preDevolarium
var preSibelon
var preKristallon = preload("res://Scenes/kristallon.tscn")
var preBossKristallon
var preUberKristallon


var intervalo = 3

func _ready():
	set_process(true)
	pass

func _process(delta):
	if intervalo > 0:
		intervalo -= delta
	else:
		intervalo = rand_range(1, 1)
		var kristallon = preKristallon.instance()
		kristallon.set_pos(Vector2(rand_range(30, 420), -40))
		get_owner().add_child(kristallon)
	pass