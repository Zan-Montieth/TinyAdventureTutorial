extends Node2D


func _process(delta):
	match int(Game.PlayerSelect):
		0:
			get_node("PlayerSelect").play("Player0")
		1:
			get_node("PlayerSelect").play("Player1")
		2:
			get_node("PlayerSelect").play("Player2")
		3:
			get_node("PlayerSelect").play("Player3")
		4:
			get_node("PlayerSelect").play("Player4")
		5:
			get_node("PlayerSelect").play("Player5")

func _on_Left_pressed():
	if Game.PlayerSelect > 0:
		Game.PlayerSelect -= 1


func _on_Right_pressed():
	if Game.PlayerSelect < 6:
		Game.PlayerSelect += 1


func _on_Select_pressed():
	get_tree().change_scene("res://World.tscn")
	Game.FirstLaunch = true
	Utils.save_game()
