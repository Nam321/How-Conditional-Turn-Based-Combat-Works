extends Button


func _on_pressed():
	owner.set_status("Haste")
	owner.pop_out()
	owner.sort_and_display()
	#owner.next_attack()
	await get_tree().create_timer(1).timeout
	EventBus.next_attack.emit()
