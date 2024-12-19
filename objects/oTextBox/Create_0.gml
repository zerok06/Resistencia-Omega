depth = -10000000


textbox_width = 300
textbox_height = 64
border = 8
line_step = 12
line_width = textbox_width - border * 2


txtb_spr[0] = sBoxDialogAlexa
txtb_image = 0
page_number = 0
txtb_image_spd = 6/60


// texto


page = 0
text[0] = ""

text_length[0] = string_length(text[0])
draw_char = 0
text_spd = 1

char[0,0] = ""
char_x[0,0] = 0
char_y[0,0] = 0


// opciones
option[0] = ""
option_link_id[0] = -1
option_pos = 0
option_number = false


setup = false


//efectos

set_default_for_text()
last_free_space = 0
text_pause_timer = 0
text_pause_time = 16


