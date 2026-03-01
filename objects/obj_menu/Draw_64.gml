var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() / 2;

//Fondo
draw_sprite_stretched(spr_fondo, 0, 0, 0, display_get_gui_width(), display_get_gui_height());

//Titulo
var escala = 1 + sin(current_time * 0.002) * 0.03;
draw_sprite_ext(spr_titulo, 0, cx, 100, escala, escala, 0, c_white, 1);

for (var i = 0; i < array_length(opciones); i++) {
    var bx = cx - 100;
    var by = 250 + i * 60;
    var bw = 200;
    var bh = 45;
	var hover = (mouse_x > bx && mouse_x < bx+bw && mouse_y > by && mouse_y < by+bh);

    draw_set_color(hover ? c_white : make_color_rgb(60, 100, 200));
    draw_rectangle(bx, by, bx+bw, by+bh, false);

    draw_set_color(hover ? c_black : c_white);
    draw_set_font(fnt_menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(bx + bw/2, by + bh/2, opciones[i]);
}