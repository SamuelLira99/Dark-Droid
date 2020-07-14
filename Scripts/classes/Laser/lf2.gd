var preTiro = preload("res://Scenes/Tiro.tscn")
var intervalo = .3
var ultimoDisparo = 0
var nave
	
func _init(nave):
	self.nave = nave
	pass

func disparar():
	if ultimoDisparo <= 0:
		criar_tiro(nave.get_node("laserEsquerdo"))
		criar_tiro(nave.get_node("laserCentral"))
		criar_tiro(nave.get_node("laserDireito"))
		ultimoDisparo = intervalo
		pass
	pass
func atualizar(delta):
	if ultimoDisparo > 0:
		ultimoDisparo -= delta
	
	pass

func criar_tiro(node):
	var tiro = preTiro.instance()
	tiro.set_global_pos(node.get_global_pos())
	nave.get_owner().add_child(tiro)
	pass