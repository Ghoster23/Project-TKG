///@description Damage the player
if global.p_inv == false{
    global.p_hp -= 10 div global.p_def;
    global.p_inv = true;
}

instance_destroy();