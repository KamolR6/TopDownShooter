var gunSprite = noone
switch heldGun{
	case 0:
		gunSprite = sprDefGun
		break
}
draw_sprite(gunSprite, image_index, 15,15)