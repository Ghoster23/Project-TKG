///@description Damage the player
if not global.p_hurt and not global.p_inv and state != 3{
    global.p_hp -= e_atk div global.p_def;
    global.p_hurt = true;
}