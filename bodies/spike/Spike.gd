extends Area2D

func _ready():
	connect("body_entered",self, "body_entered")

func body_entered(body):
	if body.is_in_group("player"):
		body.kill()
