// obj_hud — Draw GUI Event

var jugador = obj_jugador; // referencia al jugador

// ── Función helper para dibujar una barra ──
// (puedes convertirlo en script: scr_draw_bar)
var barra_x = 20;
var barra_y = 20;
var barra_w = 220;
var barra_h = 18;
var gap     = 28;

// ── VIDA ──
var hp_pct = jugador.hp / jugador.hp_max;
// Fondo
draw_set_color(make_color_rgb(40, 10, 10));
draw_rectangle(barra_x, barra_y, barra_x+barra_w, barra_y+barra_h, false);
// Relleno
draw_set_color(make_color_rgb(220, 50, 50));
draw_rectangle(barra_x, barra_y, barra_x + barra_w*hp_pct, barra_y+barra_h, false);
// Borde
draw_set_color(c_white);
draw_rectangle(barra_x, barra_y, barra_x+barra_w, barra_y+barra_h, true);
// Texto
draw_set_font(fnt_hud);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(barra_x + 5, barra_y + 1, "HP  " + string(jugador.hp) + "/" + string(jugador.hp_max));

// ── ESCUDO ──
barra_y += gap;
var sh_pct = jugador.shield / jugador.shield_max;
draw_set_color(make_color_rgb(10, 20, 50));
draw_rectangle(barra_x, barra_y, barra_x+barra_w, barra_y+barra_h, false);
draw_set_color(make_color_rgb(50, 130, 255));
draw_rectangle(barra_x, barra_y, barra_x + barra_w*sh_pct, barra_y+barra_h, false);
draw_set_color(c_white);
draw_rectangle(barra_x, barra_y, barra_x+barra_w, barra_y+barra_h, true);
draw_text(barra_x + 5, barra_y + 1, "SH  " + string(jugador.shield) + "/" + string(jugador.shield_max));

// ── ENERGÍA ──
barra_y += gap;
var en_pct = jugador.energia / jugador.energia_max;
draw_set_color(make_color_rgb(50, 40, 0));
draw_rectangle(barra_x, barra_y, barra_x+barra_w, barra_y+barra_h, false);
draw_set_color(make_color_rgb(255, 200, 0));
draw_rectangle(barra_x, barra_y, barra_x + barra_w*en_pct, barra_y+barra_h, false);
draw_set_color(c_white);
draw_rectangle(barra_x, barra_y, barra_x+barra_w, barra_y+barra_h, true);
draw_text(barra_x + 5, barra_y + 1, "EN  " + string(jugador.energia) + "/" + string(jugador.energia_max));