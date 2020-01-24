extends Spatial

export(int) var tree_count
export(Vector2) var tree_extents

var tree = preload("res://Tree.tscn")



# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(tree_count):
		var t = tree.instance() as StaticBody
		var x_pos = round(rand_range(-tree_extents.x/2, tree_extents.x/2))
		var z_pos = round(rand_range(-tree_extents.y/2, tree_extents.y/2))
		t.translate(Vector3(x_pos, 0, z_pos))
		add_child(t)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
