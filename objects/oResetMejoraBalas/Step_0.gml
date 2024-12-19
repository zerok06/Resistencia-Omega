

count++

if count >= countdown {

	if instance_exists(oPlayer) and oPlayer.modificate == true {

		oPlayer.balas = 1
		oPlayer.modificate = false
		oPlayer.spread = 1
		instance_destroy()

	}

}