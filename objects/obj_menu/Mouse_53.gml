var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var cx = display_get_gui_width() / 2;

for (var i = 0; i < array_length(opciones); i++) {
    var bx = cx - 100;
    var by = 250 + i * 60;
    var bw = 200;
    var bh = 45;

    if (mx > bx && mx < bx + bw && my > by && my < by + bh) {
        switch(i) {
            case 0: room_goto(rm_juego); break;     // MODO HISTORIA
            case 1: room_goto(rm_juego); break;     // CONTRA CPU
            case 2: room_goto(rm_opciones); break;  // OPCIONES
            case 3: game_end(); break;              // SALIR (Ahora es el índice 3)
        }
    }
}