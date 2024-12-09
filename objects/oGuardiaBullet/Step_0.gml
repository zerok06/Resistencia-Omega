if pause_screen() {exit}


switch (state) {

	case 0:
	
		if instance_exists(oPlayer){
			dir = point_direction(x, y, oPlayer.x, oPlayer.y)
		}
		
		depth = -y - 50
		
	break
	
	case 1:
	
		xspd = lengthdir_x(spd, dir)
		yspd = lengthdir_y(spd, dir)

		x += xspd
		y += yspd
		
		depth = -y
	
	break
	

}
	
	
	

var _pad = 16
if bbox_right < -_pad or bbox_left > room_width + _pad or bbox_bottom < -_pad or bbox_top > room_height + _pad {

	destroy = true

}



if hitConfirm == true && playerDestroy == true { destroy = true }

if  destroy == true { instance_destroy() }

if place_meeting(x, y, oWall) { destroy = true }
	
