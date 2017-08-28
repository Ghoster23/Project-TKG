var obj_name = argument0;

switch obj_name{
	case "obj_pit":
	case "obj_fl_spikes":
	case "obj_fl_spikes_alt":
		return "BH"
	break;
	
	default:
		return "Instances"
	break;
}