extends Button


func _on_pressed():
	owner.choose_ally()
	get_parent().hide()
