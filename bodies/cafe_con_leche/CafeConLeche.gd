extends KinematicBody2D

const GRAVITY = 500
const SPEED = 100
const JUMP = 200
var mov = Vector2.ZERO
export var inverted = false

func _physics_process(delta):
	if inverted:
		mov = move_and_slide(mov, Vector2.DOWN)
		mov.y -= GRAVITY * delta
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			mov.y += JUMP
			$Jump.play()
		if Input.is_action_pressed("ui_right"):
			$Sprite.flip_h = true
			mov.x = SPEED
		elif Input.is_action_pressed("ui_left"):
			$Sprite.flip_h = false
			mov.x = -SPEED
		else:
			mov.x = 0
	else:
		mov = move_and_slide(mov, Vector2.UP)
		mov.y += GRAVITY * delta
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			mov.y -= JUMP
			$Jump.play()
		if Input.is_action_pressed("ui_right"):
			$Sprite.flip_h = false
			mov.x = SPEED
		elif Input.is_action_pressed("ui_left"):
			$Sprite.flip_h = true
			mov.x = -SPEED
		else:
			mov.x = 0

func coin():
	$Coin.play()

func kill():
	Global.cont_deads += 1
	Global.play_dead()
	get_tree().reload_current_scene()
