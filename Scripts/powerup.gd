extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var laser = 1
var chaves = 0
var chance = 60 #Numero da multiplicação para chance aleatória


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("lblChaves").set_text(String(chaves))
	
	pass
	


func _on_powerup_area_enter( area ):
	
	if area.is_in_group(game.GRUPO_NAVE):
		var prnt
		chaves = int(get_node("lblChaves").get_text())
		if chaves > 0:
			var chanceUpgrade = rand_range(1, 100)
			if chanceUpgrade > 0 && chanceUpgrade < chance:
				if laser <= 6:
					prnt = "Seu laser foi melhorado!!"
					laser += 1
					area.set_arma(laser)
					#print(laser)
					chance-=0.4*chance
					print("Chance -> "+str(chance))
					pass
				else:
					prnt = "Capacidade máxima do laser atingida!!"
			else:
				prnt = "Você ganhou 1.000.000 xenomit"
				
			#if laser == 7:
			#	queue_free()
			#pass
			
			chaves -= 1
			get_node("lblChaves").set_text(String(chaves))
		else:
			prnt = "Você não possui chaves suficientes"
		pass
		get_node("lblRecompensa").set_text(prnt)
		get_node("/root/main/HUD/powerup/lblRecompensa/aniRecompensa").play("aniRecompensa")
		#get_node("lblRecompensa").set_text("")
	pass # replace with function body
