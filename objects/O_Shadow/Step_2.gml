/// @description Insert description here
// You can write your code in this editor
x = int64(owner.x)

while !place_meeting(x,y,[SLOPE,WALL]) and y < room_height {
		y+= 1
	}

while place_meeting(x,y+1,[SLOPE,WALL]) {
	y-= 1	
}