extends Sprite2D


@export var character : Character
signal character_died
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
		

func take_damage(amount):
	current_health -= amount
	print("Took damage: ", amount, " Current health: ", current_health)
	if current_health <= 0:
		is_alive = false
		character_died.emit()  # Add this line
		queue_free()
	
