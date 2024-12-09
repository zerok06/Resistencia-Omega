get_damaged(oDamageEnemies)


if hp <= 0{
	
	var _chance = irandom(100)
	
	if _chance < 30 {
	
		instance_create_depth(x , y, depth, oHeart)
	
	}
 	
	instance_destroy()
}