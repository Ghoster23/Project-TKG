if instance_number(self.object_index) > 1 {
	show_debug_message("Deleted " + object_get_name(self.object_index) + " duplicate.");
	show_debug_message("Attempted creation in " + string(room_get_name(room)) + ".");
	instance_destroy(id,false);
	return true;
}
return false;