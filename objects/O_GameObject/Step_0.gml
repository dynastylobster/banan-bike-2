/// @description Insert description here
// You can write your code in this editor
if AspectRatioMode = "Dynamic" {
var windowwidth = window_get_width();
var windowheight = window_get_height();

if windowwidth != CurrentWindowWidth or windowheight != CurrentWindowHeight {
		WindowSizeCall();
	}
}

if !global.paused 
{

if global.stoptimer > 0 {
	global.stoptimer--
	global.stop = true;
	}
	
}
if global.stoptimer <= 0 then global.stop = false;

if global.paused global.stop = true;