extends Control


var solution = [[]] 
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _draw():
	print(self.rect_position)
	print(self.rect_size)
	draw_rect(Rect2(Vector2(0,0),Vector2(self.rect_size)),Color.wheat)
	draw_string(self.get_font(""),Vector2(19,20),"M",-1)
	for n in "abc":
		print(n)

func _input(event):
	if InputEventMouseButton:
		if event.is_pressed():
			if  withinbounds(get_global_mouse_position(),self.rect_position,self.rect_position+self.rect_size):
				print(self.get_local_mouse_position())			

#Check if v1 is inside the rect of points v2 and v3		
func withinbounds(v1, v2,v3):
	if v1.x >= v2.x and v1.y>=v2.y and v1.x <= v3.x and v1.y <= v3.y:
		return true;
	else:
		return false;
		
