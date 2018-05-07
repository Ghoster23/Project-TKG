fluid_proj = false;
converter_proj = false;

event_inherited();

life_time = 0.3 * room_speed;

fall_rate = offs / life_time;

//Damage Dealer vars
mult = stats.satk;
divi = stats.sdef;

kb_amount = global.p_stats[stats.atk] * 0.8;
damage    = 1;

shadow.phy_linear_damping = phy_linear_damping;

image_index = irandom(2);
image_speed = 0;

//Particles
em = part_emitter_create(global.ps_if);
