extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var trunk = get_node("Trunk")

# Called when the node enters the scene tree for the first time.
func _ready():
	trunk.rotate_y(randi() % 360)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _grow_branch(trnk):
	var branch = trunk.duplicate()
	var shape = branch.get_child(0)
	var new_radius = shape.radius / 4
	var new_height = shape.height / 4
	var height_diff = shape.height - new_height
	print(new_height, ", ", new_radius)
	# var rot_x = randi() % 45 + 20
	var rot_z = 45
	var x_translate = cos(deg2rad(rot_z)) * new_height	
	shape.radius = new_radius
	shape.height = new_height	
	#branch.rotate_x(rot_x)
	branch.rotate_z(rot_z)
	branch.translate(Vector3(-x_translate, 0, 0))	
	trnk.add_child(branch)
	pass
