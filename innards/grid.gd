extends RefCounted


class_name Grid
var cell_scene = preload("res://cell.tscn")
var grid = []
var width = 9
var height = 9
var bombs = 10
var dirs = [
	[+1, 0], 
	[+1, +1], 
	[0, +1], 
	[0, -1], 
	[-1, 0], 
	[-1, -1], 
	[+1, -1], 
	[-1, +1]
]
func _ready():
	for i in range(width):
		grid.append([]) # Add a new row
		for j in range(height):
			grid[i].append(initialize_cell()) # Initialize with a value
			
			
			
			
func generate_bombs():
	for i in range(bombs):
		var x = randi_range(0, width)
		var y = randi_range(0, height)
		if grid[x][y] != null:
			i+=1
			continue
		initialize_cell()

func initialize_cell():
	cell_scene.instantiate()
	
