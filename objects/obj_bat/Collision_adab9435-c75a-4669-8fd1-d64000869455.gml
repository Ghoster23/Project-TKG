///@description Damage the player
if global.p_inv == false{
    global.p_hp -= e_atk div global.p_def;
    global.p_inv = true;
}