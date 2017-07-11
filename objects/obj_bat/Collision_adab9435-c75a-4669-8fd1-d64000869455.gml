///@description Damage the player
if not global.p_inv and not global.invuln{
    global.p_hp -= e_atk div global.p_def;
    global.p_inv = true;
}