// Gravedad
vsp += grav;
y += vsp;

// Suelo simple
if (y > 500) {
    y = 500;
    vsp = 0;
}

// =====================
//IA - BUSCAR JUGADOR
// =====================
var target = instance_nearest(x,y,obj_prueba);
if (instance_exists(target)){
	var dist = point_distance(x,y,target.x,target.y);
	
	if (dist < vision_range){
		//Persecucion horizontal
		if(target.x > x){
			x += speed_x;
			image_xscale=1; //giro derecha
		}
		else{
			x -= speed_x;
			image_xscale= -1; //giro izquierda
		}
		//Saltar si el jugador esta mas alto
		if (target.y < y -20 && y == 500){
			vsp = jump_force;
		}
	}
}
// =====================
//CONTROL ANIMACION ATAQUE
// =====================
if (state == "attack"){
	if(image_index >= image_number-1){
		state = "idle";
		sprite_index=spr_prueba;
	}
}
