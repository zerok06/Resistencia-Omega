// @params text
// @params [portrait]
// @params [side]
function src_text (_text) {
	set_default_for_text()
	text[page_number] = _text
	if argument_count > 1 {
	
		switch (argument[1]) {
		
			case "alexia":
			
				speaker_sprite[page_number] = sAlexia
				txtb_spr[page_number] = sBoxDialogAlexa
			
				break
			case "alexia-inv":
			
				speaker_sprite[page_number] = sAlexia
				txtb_spr[page_number] = sBoxDialogAlexa
				break
		
		
		}
	
	}
	
	if argument_count > 2 {
	
		speaker_side[page_number] = argument[2]
	
	}
	
	page_number++

}

// @params _option
// @params _link_id

function src_option (_option, _link_id = "") {

	option[option_number] = _option
	option_link_id[option_number] = _link_id
	
	
	option_number++

}


function create_dialog (text_id) {

	var _dialog = instance_create_depth(0,0,-999999, oTextBox)
		with (_dialog){
			src_game_text(text_id)
		}
}


function set_default_for_text () {

	line_break_pos[0,page_number] = 999
	line_break_num[page_number] = 0
	line_break_offset[page_number] = 0
	
	txtb_spr[page_number] = sBoxDialogDefault
	speaker_sprite[page_number] = noone
	speaker_side[page_number] = 1
	

}