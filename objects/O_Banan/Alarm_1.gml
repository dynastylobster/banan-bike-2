/// @description Insert description here
// You can write your code in this editor
if !turning {
		if InputCheck(INPUT_VERB.DOWN) {y_offset -= 16; alarm[1] = 8;}
		if InputCheck(INPUT_VERB.UP) {y_offset += 16; alarm[1] = 8;}
}