extends CanvasLayer

var cont_deads = 0

func reset_cont_deads():
	cont_deads = 0

func play_dead():
	$Dead.play()

func stop_music():
	$Music.stop()

func play_music():
	$Music.play()
