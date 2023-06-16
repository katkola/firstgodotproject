extends Sprite2D

signal health_depleted

var health = 10
var speed = 400
var angular_speed = PI


#func _ready():
#	var timer = get_node("Timer")
#	timer.timeout.connect(_on_timer_timeout)


func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta

#toggles button which starts/stops motion
func _on_button_pressed():
	set_process(not is_processing())

#timer singals lil guy to be visible/not
#func _on_timer_timeout():
#	visible = not visible

func take_damage(amount):
	health -= amount
	if health <= 0 :
		health_depleted.emit()

func _on_health_depleted():
	pass # Replace with function body.
