extends Control


func _ready():
	Global.stop_music()
	$Timer.start()
	yield($Timer, "timeout")
	get_tree().change_scene("res://scenes/Main.tscn")
