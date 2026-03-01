for (var i = 0; i < array_length(opciones); i++) {
    var bx = display_get_gui_width()/2 - 100;
    var by = 250 + i * 60;
    if (mouse_x > bx && mouse_x < bx+200 && mouse_y > by && mouse_y < by+45) {
        switch(i) {
			case 0: room_goto(rm_juego); break;
			case 1: room_goto(rm_juego); break;     // cargar partida guardada
			case 2: room_goto(rm_opciones); break;
			case 3: room_goto(rm_creditos); break;
			case 4: game_end(); break;
        }
    }
}