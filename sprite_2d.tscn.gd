extends Sprite2D

var speed = 400
var angular_speed= PI

func _ready():
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_timeout)

func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
	#commented out to automove instead of user move
#	var direction = 0
#	#check for user pressing left, changes direction
#	if Input.is_action_pressed("ui_left"):
#		direction = -1
#	# check for user press right
#	if Input.is_action_pressed("ui_right"):
#		direction = 1
#
#	#rotates every speed per time/frame
#	rotation += angular_speed * delta * direction
#
#	#velocity equal to zero so it only moves when player moves it
#	var velocity = Vector2.ZERO
#	if Input.is_action_pressed("ui_up"):
#		velocity = Vector2.UP.rotated(rotation) * speed
#	#update position
#	position += velocity * delta

func _on_button_pressed():
	set_process(not is_processing())
	
func _on_timer_timeout():
	visible = not visible

