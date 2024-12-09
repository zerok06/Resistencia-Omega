if pause_screen() {exit}

get_damaged(oDamageParent)


// mostramos dano
var  _healthPercent = 1 - (hp/maxHp)

image_index = _healthPercent * (image_number - 1)


if hp <= 0 {
	
	//animar la explosion
	
	instance_create_depth(x,y, -3000, oBombaAnimate)
	
	
	// screen pause
	
	create_screen_pause(100)
	
	
	instance_destroy()

}