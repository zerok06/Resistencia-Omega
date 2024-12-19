function src_game_text(_id){
	
	switch (_id) {
	
		case "marcus_1":
			src_text("Como estas", "alexia", -1)
			src_text("soy")
			src_text("Elias", "alexia-inv", 1)
				src_option("Yeah", "elias_1_yes")
				src_option("Noo", "elias_1_no")
			break
		
			case "elias_1_yes":
				src_text("Yes")
				break
			case "elias_1_no":
				src_text("No")
				break
		
		case "vera_1":
			src_text("Hola")
			src_text("soy")
			src_text("Vera")
			break
		
		case "aldric_1":
			src_text("Hola")
			src_text("soy")
			src_text("Aldric")
			break
	
	}

}