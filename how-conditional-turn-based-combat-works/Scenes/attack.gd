extends Button


func _on_pressed():
	owner.choose_enemy()
	print("mango")
	get_parent().hide()
