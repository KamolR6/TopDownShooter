var dir = point_direction(other.x, other.y, x, y)

x += lengthdir_x(1, dir)
y += lengthdir_y(1, dir)

other.x += lengthdir_x(1, dir + 180)
other.y += lengthdir_y(1, dir + 180)