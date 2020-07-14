extends Area2D

var velocidade = 400
var arma

var lf1 = preload("res://Scripts/classes/Laser/lf1.gd")
var mp1 = preload("res://Scripts/classes/Laser/mp1.gd")
var lf2 = preload("res://Scripts/classes/Laser/lf2.gd")
var lf3 = preload("res://Scripts/classes/Laser/lf3.gd")
var lf4 = preload("res://Scripts/classes/Laser/lf4.gd")
var x3 = preload("res://Scripts/classes/Laser/x3.gd")
var x4 = preload("res://Scripts/classes/Laser/x4.gd")
var rsb75 = preload("res://Scripts/classes/Laser/rsb75.gd")

var armas = [
	lf1.new(self),
	mp1.new(self),
	lf2.new(self),
	lf3.new(self),
	x3.new(self),
	x4.new(self),
	rsb75.new(self),
]
func _ready():
	set_process(true)
	arma = lf1.new(self)
	add_to_group(game.GRUPO_NAVE)
	pass

func _process(delta):
	var direita = 0
	var esquerda = 0
	if Input.is_action_pressed("direita"):
		direita = 1
	
	if Input.is_action_pressed("esquerda"):
		esquerda = -1
	
	if get_pos().x > 480 - 50:
		direita = 0
	
	if get_pos().x < 50:
		esquerda = 0
	set_pos(get_pos() + Vector2(1, 0) * velocidade * delta * (direita + esquerda))
	
	#disparar laser
	if Input.is_action_pressed("tiro"):
		arma.disparar()
		pass
	arma.atualizar(delta)
	
	pass
	
func set_arma(valor):
		arma = armas[valor-1]