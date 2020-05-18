extends Area2D

export var next_scene = ""
export var opened = false
func _ready():
	connect("body_entered", self, "body_entered")

func open():
	$Sprite.frame = 1
	opened = true
	$Open.play()

func body_entered(body):
	if body.is_in_group("player") and opened:
		get_tree().change_scene(next_scene)

func _physics_process(delta):
	var galletas = get_tree().get_nodes_in_group("galleta").size()
	if galletas <= 0:
		if not opened:
			open()
