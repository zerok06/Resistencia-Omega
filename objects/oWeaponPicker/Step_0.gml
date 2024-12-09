sprite_index = weapon.sprite

floatDir += floatSpd


y = ystart +dsin(floatDir) * 1


if place_meeting(x, y, oPlayer) {

	array_push(global.PlayerWeapons, weapon)
	
	
	oPlayer.selectedWeapon = array_length(global.PlayerWeapons) - 1
	
	
	instance_destroy()

}