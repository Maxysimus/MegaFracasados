if (other != owner) {

    // Aplicar knockback
    other.x += image_xscale * knockback;

    // Aplicar daño si quieres
    // other.hp -= damage;
    instance_destroy();
}
