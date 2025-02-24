extends Label
class_name health_label

func on_health_changed(new_health: float):
	self.text = str(get_parent().current_health) + str(" / ") + str(get_parent().health_max) 

func _process(delta: float) -> void:
	self.text = str(get_parent().current_health) + str(" / ") + str(get_parent().health_max) 
