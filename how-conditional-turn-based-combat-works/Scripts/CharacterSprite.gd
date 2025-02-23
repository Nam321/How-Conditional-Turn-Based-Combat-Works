extends Sprite2D


@export var character : Character
var health_max
var current_health 
var attack_dmg
var is_alive : bool = true
func _ready():
	if character:
		character.node = self
		texture = character.texture
		health_max = character.health
		current_health = character.health
		attack_dmg = character.damage
		print("dmg ", attack_dmg)
		print("current hp",current_health)
		print("max hp",current_health)
		

	
