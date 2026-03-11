if (!place_meeting(x + lengthdir_x(speed, direction),
                   y + lengthdir_y(speed, direction),
                   objCollisionBox))
{
    x += lengthdir_x(speed, direction)
    y += lengthdir_y(speed, direction)
	image_angle = direction
}
else
{
    direction += 180
	image_angle = direction
}