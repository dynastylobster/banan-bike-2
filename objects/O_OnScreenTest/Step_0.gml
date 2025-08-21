/// @description Insert description here
// You can write your code in this editor
CheckOnscreen(true,true);

if InputPressed(INPUT_VERB.ACCEPT) {
currentpal += 1
if currentpal > 2 then currentpal = 0
}

//x+= 2
//y+= 2

if InputCheck(INPUT_VERB.RIGHT) {
		xspeed+= 0.125 * DT
	}
if InputCheck(INPUT_VERB.DOWN) {
	yspeed+= 0.125 * DT	
	}
if InputCheck(INPUT_VERB.LEFT) {
		xspeed-= 0.125 * DT
	}
if InputCheck(INPUT_VERB.UP) {
	yspeed-= 0.125 * DT	
	}

xspeed *= 1 - (1/20) * DT
yspeed *= 1 - (1/20) * DT


x+= xspeed
y+= yspeed

xspeed = clamp(xspeed,-max_speed,max_speed)
yspeed = clamp(yspeed,-max_speed,max_speed)
if onscreen = false {
	y = starty
	x = startx
}