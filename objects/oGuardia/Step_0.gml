if instance_exists(oPlayer){
	dir = point_direction(x, y, oPlayer.x, oPlayer.y)
}


xspd = lengthdir_x(spd, dir)
yspd = lengthdir_y(spd, dir)

// cambiar perspectiva

if xspd > 0 { face = 1 }
if xspd < 0 { face = -1 }

image_xscale = face


// colisiones
if place_meeting(x + xspd, y, oWall) or place_meeting(x + xspd, y, oEnemyParent) {
	xspd = 0
}
if place_meeting(x, y + yspd, oWall) or place_meeting(x, y + yspd, oEnemyParent){
	yspd = 0
}


x += xspd
y += yspd






event_inherited()


