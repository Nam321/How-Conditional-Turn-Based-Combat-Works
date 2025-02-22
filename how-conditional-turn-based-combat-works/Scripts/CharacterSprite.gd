extends Sprite2D


@export var character : Character
var health_max
var health_current
func _ready():
	if character:
		character.node = self
		texture = character.texture
		health_max = character.health
		health_current = character.temp_health
		print(health_current)
		
