if pause_screen() {exit}

get_damaged(oDamageParent)


// mostramos dano
var  _healthPercent = 1 - (hp/maxHp)

image_index = _healthPercent * (image_number - 1)


if hp <= 0 {
	
	//animar la explosion
	
	var _bomba = instance_create_depth(x,y, -3000, oBombaAnimate)
	_bomba.image_xscale = 2.5
	_bomba.image_yscale = 2.5

	
	
	// screen pause
	
	create_screen_pause(10)
	oSonidoExplosiones._soundInst = sndBomba
	oSonidoExplosiones._play = true
	
	
	instance_destroy()

}