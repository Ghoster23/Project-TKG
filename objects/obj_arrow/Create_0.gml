event_inherited();

offs = 16;

life_time = 3 * room_speed;
fall_rate = offs / life_time;

shadow.phy_linear_damping = phy_linear_damping;
shadow.visible = true;
shadow.phy_position_y += offs;

phy_fixed_rotation = true;

trail_offset = 0;

draw_script = scr_draw_projectile_trail;

drop = true;
type = item_type.drop;
item = drops.arrow;
amount = 1;

divi   = stats.def;
damage = 2;