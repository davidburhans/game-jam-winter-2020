extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector3.ZERO
var speed = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		velocity.z = -speed
	elif Input.is_action_pressed("ui_down"):
		velocity.z = speed
	else:
		velocity.z = 0
	
	velocity = $KinematicBody.move_and_slide(velocity)