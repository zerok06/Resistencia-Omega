function src_game_text(_id){
	
	switch (_id) {
	
		case "marcus_1":
			src_text("Hola, bienvenida a la resistencia", "alexia", -1)
			src_text("Soy marcus en encargado de este lugar, sientete a gusto con nosotros")
			src_text("Elias", "alexia-inv", 1)
				src_option("Hola", "alexia_1_yes")
				src_option("A hola, jaja", "alexia_1_no")
			break
		
			case "alexia_1_yes":
				src_text("Hola, gracias")
				break
			case "alexia_1_no":
				src_text("A hola, jaja.")
				break
		
		case "vera_1":
			src_text("Hey ale !!, escapa de la fabrica", 1)
			src_text("Recuerda usar tu arcenal, emplea los potenciadores de armas.", 1)
			break
		
		case "aldric_1":
			src_text("Hola")
			src_text("soy")
			src_text("Aldric")
			break
	
	}

}