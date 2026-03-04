var gunSprite = noone
switch heldGun{
	case 0:
		gunSprite = sprDefaultWeapon
		break
	case 1:
		gunSprite = sprBananaWeapon
		break
}
//draw_sprite(gunSprite, image_index, 15,15)
draw_sprite_stretched(gunSprite, image_index, 15,15,32,32)