extends Node2D

var main = preload("res://Scenes/main.tscn")

var chaves
var velocidade = 75
var vida = 9
#var chaves = powerup.get_node("powerup").get("chaves")

func _ready():
	set_process(true)
	add_to_group(game.GRUPO_INIMIGOS)
	pass

func _process(delta):
	set_pos(get_pos() + Vector2(0, 1) * velocidade * delta)
	pass

func aplicarDano(dano):
	vida -= dano
	get_node("animacoesNPC").play("hit")
	if vida <= 0:
		get_node("animacoesNPC").play("destroy")
		get_node("somExplosao").play("explosao")
		remove_from_group(game.GRUPO_INIMIGOS)
		
		#Chance de dropar chaves verdesú
		var chanceChaves = rand_range(1, 100)
		#print(chanceChaves)
		if chanceChaves > 10 && chanceChaves < 40:
			print("Você ganhou uma chave de espólio verde")
			#get_node(powerup."lblChaves").set_text("gf")
			chaves = int(get_node("/root/main/HUD/powerup/lblChaves").get_text())
			chaves += 1
			get_node("/root/main/HUD/powerup/lblChaves").set_text(String(chaves))
#			chaves = 13
			#print(itens.chaves)
			
		pass
	pass