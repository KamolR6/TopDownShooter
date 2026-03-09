var sizeSprite = 32

if(room != r_Menu){
	switch heldGun{
		case 0:
			gunSprite = sprDefaultWeapon
			break
		case 1:
			gunSprite = sprBananaWeapon
			break
		case 2:
			gunSprite = sprCarrotWeapon
			break
}
	draw_healthbar(2,2,102,12, healthPoints,c_gray,c_red,c_green,0,true,true)
	draw_sprite_stretched(gunSprite, image_index, 15,15, sizeSprite, sizeSprite)
	
	//ONLY FOR INFINITE MODE
	if(room == r_InfiniteMode){
		draw_text(room_width-100, 0, "Killed Units: " + string(playerScore))
	}
}