//push player in the direction of enemies' movement
var dir = point_direction(other.x, other.y, x, y)

x += lengthdir_x(8, dir)
y += lengthdir_y(8, dir)