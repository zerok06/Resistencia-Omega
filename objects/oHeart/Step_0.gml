floatDir += floatSpd


y = ystart + lengthdir_y(2, floatDir)






if place_meeting(x, y, oPlayer) {

	oPlayer.hp += heal
	instance_destroy()

}