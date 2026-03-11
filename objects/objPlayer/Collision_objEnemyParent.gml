var dir = point_direction(other.x, other.y, x, y)

var push = 2

if (!place_meeting(x + lengthdir_x(push, dir), y + lengthdir_y(push, dir), objCollisionBox))
{
    x += lengthdir_x(push, dir)
    y += lengthdir_y(push, dir)
}

other.x += lengthdir_x(push, dir + 180)
other.y += lengthdir_y(push, dir + 180)