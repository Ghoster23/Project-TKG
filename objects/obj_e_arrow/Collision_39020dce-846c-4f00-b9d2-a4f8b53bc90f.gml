///@description Damage the player
if global.p_hurt == false and global.p_inv == false{
    global.p_hp -= 10 div global.p_def;
    global.p_hurt = true;
}

instance_destroy();