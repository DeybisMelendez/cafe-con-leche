extends Node2D

func _ready():
	Global.play_music()
	$Music.connect("button_up", self, "music")
	$HBoxContainer/Twitter.connect("button_up", self, "twitter")
	$HBoxContainer/Youtube.connect("button_up", self, "youtube")
	$HBoxContainer/Facebook.connect("button_up", self, "facebook")
	$HBoxContainer/Web.connect("button_up", self, "web")
	$HBoxContainer/Github.connect("button_up", self, "github")

func music():
	OS.shell_open("https://opengameart.org/content/jump-and-run-8-bit")

func twitter():
	OS.shell_open("https://twitter.com/Damvcito")

func facebook():
	OS.shell_open("https://www.facebook.com/demelendez")

func web():
	OS.shell_open("https://www.deybismelendez.com/")

func youtube():
	OS.shell_open("https://www.youtube.com/c/deybismelendez")

func github():
	OS.shell_open("https://github.com/DeybisMelendez/cafe-con-leche")
