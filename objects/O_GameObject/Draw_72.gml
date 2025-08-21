/// @description Insert description here
// You can write your code in this editor
if FilterMode = "Sharp Bilinear" or FilterMode = "Nearest" {
		gpu_set_tex_filter(false)
	}
if FilterMode = "Bilinear" then gpu_set_tex_filter(true);