/// @description Contact damage
if global.p_inv == false and global.invuln{
    global.p_hp -= e_atk div global.p_def;
    global.p_inv = true;
}