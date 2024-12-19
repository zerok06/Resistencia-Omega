floatDir += floatSpd


y = ystart + lengthdir_y(2, floatDir)






if place_meeting(x, y, oPlayer) {
	oPlayer.balas = 2
	oPlayer.spread = 15
	oPlayer.modificate = true
	
	var _ oResetInst = instance_create_depth(x,y,-3000, oResetMejoraBalas)
	
	with(oResetInst){
	
		countdown = 5 * 60
		
	}
	
	instance_destroy()

}