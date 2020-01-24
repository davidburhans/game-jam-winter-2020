extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var trunk = get_node("KinematicBody/Trunk")

# Called when the node enters the scene tree for the first time.
func _ready():
	print(trunk)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _grow_branch(trnk):
	pass
