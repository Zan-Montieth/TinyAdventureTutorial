extends StaticBody2D

func _ready():
	get_node("Panel").hide()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_node("Panel/Label").text = "Welcome, this is a sample text"
		get_node("Panel").show()
		get_node("Panel").rect_size.x = get_node("Panel/Label").rect_size.x + 16
		get_node("Panel").rect_size.y = get_node("Panel/Label").rect_size.y + 8


func _on_Area2D_body_exited(body):
	if body.name == "Player":
		get_node("Panel").hide()
