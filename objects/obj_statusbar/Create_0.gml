scr_unique_inst();

//Status sprites
status_spr[statuses.poison]  = spr_status_poisoned;
status_spr[statuses.regen]   = spr_status_regen;
status_spr[statuses.ohko]    = spr_status_ohko;
status_spr[statuses.seeall]  = spr_status_seeall;
status_spr[statuses.immune]  = spr_status_immu;
status_spr[statuses.compass] = spr_status_compass;
status_spr[statuses.stuck]   = spr_status_stuck;
status_spr[statuses.wet]     = spr_status_wet;
status_spr[statuses.frost]   = spr_status_frost;
status_spr[statuses.frozen]  = spr_status_frozen;
status_spr[statuses.burning] = spr_status_burning;
status_spr[statuses.stun]    = -1;

state = 0;

counter = 0;

start_x = 64;
start_y = 36;

status_wd = sprite_get_width(spr_status_regen) + 2;
status_hg = sprite_get_height(spr_status_regen);

stop = 0;
reset = true;
