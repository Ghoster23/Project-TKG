if instance_number(self.object_index) > 1 {
	show_debug_message("Deleted " + object_get_name(self.object_index) + " duplicate.");
	instance_destroy();
}