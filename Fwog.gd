extends CharacterBody2D

@export var speed = 400
@export var angular_speed= PI

func _physics_process(delta):
	#if you wanna shpin
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
