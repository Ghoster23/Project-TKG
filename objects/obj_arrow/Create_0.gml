event_inherited();

offs = 16;

life_time = 3 * room_speed;
fall_rate = offs / life_time;

with shadow {
	visible = true;
	phy_position_y += other.offs;
	sprite_index    = other.sprite_index;
	image_blend     = c_black;
	image_alpha     = 0.3;
}

phy_fixed_rotation = true;

trail_offset = 0;

draw_script = scr_draw_projectile_trail;

drop = true;
type = item_type.drop;
item = drops.arrow;
amount = 1;

divi   = stats.def;
damage = 2;