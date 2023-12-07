extends CharacterBody2D

@export var speed = 400
var train = []

func _ready():
	pass

func _physics_process(_delta):
	#if you wanna shpin around
	#rotation += angular_speed * delta
	#movement
	var direction = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	velocity.x = direction.x * speed
	velocity.y = direction.y * speed
	set_velocity(velocity)
	move_and_slide()
	
	if get_slide_collision_count()> 0:
		var pumpkin = get_last_slide_collision().get_collider()
		var fwog = get_instance_id()
		pumpkin.pickup(fwog)
		
		
