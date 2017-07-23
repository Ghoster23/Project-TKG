owner = instance_nearest(x,y,obj_psnt_body);

allow = true;
alarm_0 = -1;
tell = 0;
event_inherited();
spr = irandom(1);
offs = 5;
offset = true;

switch spr{
	case 0:
		sprite_index = spr_e_wd_sword;
	break;
	case 1:
		sprite_index = spr_e_baton;
	break;
}