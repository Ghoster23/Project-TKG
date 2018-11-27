if(alarm[0] == -1){
	var mx_wd = 0;
	
	ds_list_clear(tr_vals);
	
	for(var i = 0; i < ds_list_size(tr_vars); i++){
		var vr = tr_vars[| i];
		var vl = variable_instance_get(tr_inst,vr);
		
		#region Arrays
		if(is_array(vl)){
			var nvl  = "[ ";
			var vlen = array_length_1d(vl);
			
			for(var j = 0; j < vlen; j++){
				nvl += string(vl[j]);
				
				if(j < vlen - 1){
					nvl += ", ";
				}else {
					nvl += "]";
				}
			}
			
			vl = nvl;
		}
		#endregion
		
		ds_list_add(tr_vals,vl);
		
		#region Update mx_wd
		var nwd = string_width(vr);
		if(nwd > mx_wd){
			mx_wd = nwd;
		}
		
		var nwd = string_width(vl);
		if(nwd > mx_wd){
			mx_wd = nwd;
		}
		#endregion
	}
	
	width = max(string_width(title)+60, mx_wd * 2 + 24);
	
	alarm[0] = 5;
}