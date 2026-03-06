// Si me chocan y tengo el control (para que no me peguen 60 veces por segundo)
if (has_control == true)
{
    hp = hp - 1;       // 1. Me quitan vida
    has_control = false; // 2. Pierdo el control del teclado
    
    // 3. CALCULAR RETROCESO (Knockback)
    // Calculamos la dirección contraria al enemigo
    var direction_hit = sign(x - other.x); 
    
    // Si direction_hit es 0 (estamos justo encima), nos movemos a la derecha por defecto
    if (direction_hit == 0) direction_hit = 1;

    // 4. APLICAR EL IMPULSO
    hsp = direction_hit * 10; // Salimos disparados horizontalmente
    vsp = -5;                 // Un saltito hacia arriba
    
    // 5. CAMBIAR COLOR (Feedback visual)
    image_blend = c_red;
    
    // 6. RECUPERAR CONTROL (Temporizador)
    alarm[0] = 30; // Activamos la Alarma 0 en 30 pasos (medio segundo)
}