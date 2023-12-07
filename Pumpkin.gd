extends CharacterBody2D
#pumpkin will be inert until Player picks it up
signal touch
@export var speed = 0.0
var direction = Vector2.ZERO
var fwog = null
var touchable = null

func _ready():
	speed = 0.0
	touchable = get_node("MeleeRange")
	
func _physics_process(delta):
	if fwog:
			touchable.disabled = true;
			speed=fwog.speed
			position = position.move_toward(fwog.position, speed*delta)

func pickup(hand):
	fwog = instance_from_id(hand)
