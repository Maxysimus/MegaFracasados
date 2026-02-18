// Gravedad
vsp += grav;
y += vsp;

// Suelo simple
if (y > 500) {
    y = 500;
    vsp = 0;
}

// Movimiento
var move = keyboard_check(vk_right) - keyboard_check(vk_left);
x += move * walk_speed;

// ATAQUE
if (keyboard_check_pressed(ord("Z"))) {
    state = "attack";
    sprite_index = spr_ataque;
    image_index = 0;
    image_speed = 1;
}

if (state == "attack") {
    if (image_index >= image_number - 1) {
        state = "idle";
        sprite_index = spr_prueba;
    }
}

// SALTO
if (keyboard_check_pressed(vk_up) && y == 500) {
	vsp=-10;
}

