extends Control


func _ready():
	Global.stop_music()
	$VBoxContainer/contador_muertes.text = "Muertes: " + str(Global.cont_deads)
	$Timer.start()
	yield($Timer, "timeout")
	Global.reset_cont_deads()
	get_tree().change_scene("res://scenes/Main.tscn")
