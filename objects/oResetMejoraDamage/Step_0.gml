

count++

if count >= countdown {

	if instance_exists(oPlayer) and oPlayer.modificate == true {

		oPlayer.damageIncrement = 1
		oPlayer.modificate = false
		instance_destroy()

	}

}