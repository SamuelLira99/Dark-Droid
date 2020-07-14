extends Node2D

var velocidade = 900
var dano = 1

func _ready():
	set_process(true)
	get_node("somTiro").play("tiro")
	pass

func _process(delta):
	set_pos(get_pos()+Vector2(0, -1)*velocidade*delta)
	
	if get_pos().y < -30:
		queue_free()
		pass
	
	pass


func _on_Tiro_area_enter( area ):
	if area.is_in_group(game.GRUPO_INIMIGOS):
		area.aplicarDano(dano)
		queue_free()
		pass
	pass # replace with function body
