var sizeSprite = 64 * global.sprResize

if(room != r_Menu){
	switch heldGun{
		case 0:
			gunSprite = sprDefaultWeapon
			break
		case 1:
			gunSprite = sprWeaponBanana
			break
		case 2:
			gunSprite = sprWeaponCarrots
			break
}
	draw_healthbar(2,2,102,12, healthPoints,c_gray,c_red,c_green,0,true,true)
	draw_sprite_stretched(gunSprite, image_index, 15,15, sizeSprite, sizeSprite)
	
	//ONLY FOR INFINITE MODE
	if(room == r_InfiniteMode){
		draw_text(room_width-100, 0, "Killed Units: " + string(playerScore))
	}
}