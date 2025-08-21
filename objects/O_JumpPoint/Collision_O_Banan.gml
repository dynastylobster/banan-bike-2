/// @description Insert description here
// You can write your code in this editor
if abs(other.xspeed) >= 2.5 {

if InputPressed(INPUT_VERB.ACCEPT){
		other.yspeed = -abs(other.xspeed*1.25) + distance_to_object(other)
		other.xspeed *= 1.1
		other.y -= 2
	}
}