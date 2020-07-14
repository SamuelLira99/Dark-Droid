 extends CanvasLayer


func _ready():
	set_process_input(true)
	pass

func _input(event):
	if event.is_action_pressed("pause") && !event.is_echo():
		get_tree().set_pause(!get_tree().is_paused());
		
		if get_tree().is_paused():
			get_node("lblPaused").show()
			get_node("shd").show()
			#get_node("tbtnPause").set_texture("res://botoes/Sprites/flatLight/flatLight14.png")
		else:
			get_node("lblPaused").hide()
			get_node("shd").hide()
			pass
		
		pass
	pass