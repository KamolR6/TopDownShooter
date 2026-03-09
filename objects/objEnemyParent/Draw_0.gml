draw_set_alpha(image_alpha)
draw_self()
draw_set_alpha(1)

if(!isSpawning){
	draw_healthbar(
		x - sprite_xoffset, y - sprite_yoffset - 5,
		x + sprite_xoffset, y - sprite_yoffset,
		enemyHealhtPoints, c_gray, c_red, c_green, 0, true, true
	)
}