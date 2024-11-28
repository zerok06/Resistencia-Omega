


xspd = lengthdir_x(spd, dir)
yspd = lengthdir_y(spd, dir)



// colision

if place_meeting(x + xspd, y, oWall){
	xspd = 0
}


x += xspd
y += yspd


