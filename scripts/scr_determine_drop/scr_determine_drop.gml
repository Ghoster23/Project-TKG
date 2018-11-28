{
var rnd = random(1);

var ind = scr_loot_table_get_ind(object_index);

if(ind != -1){
	var chnc = global.ds_grid_loot_table[# 1, ind];

	#region Determine tier
	var tier   = 0;
	var m_tier = array_length_1d(chnc);

	var mn = 0;
	var mx = chnc[tier];

	while(not(mn <= rnd && rnd <= mx)){
		tier += 1;
		mn    = mx;
	
		if(tier < m_tier){
			mx += chnc[tier];
		}else {
			mx = 1.0;
		}
	}

	#region Luck check
	if(is_descended(object_index,obj_entity_parent)){
		var l_rnd = random(1);
		var l_chk = 0.5;
	
		var luck = stat[stats.luck];
	
		if(luck > 0){
			l_chk = l_chk / (1 + luck / 10);
		}else {
			l_chk = l_chk * (1 + luck / 10);
		}

		if(l_chk < luck){
			if(tier == m_tier){
				tier = 0;
			}else if(tier != m_tier - 1){
				tier++;
			}
		}
	}
	#endregion
	#endregion

	if(tier < m_tier){
		var drop_info = global.ds_grid_loot_table[# tier + 2, ind];

		var type   = drop_info[0];
		var item   = drop_info[1];
		var amount = drop_info[2];

		switch type {
			default:
				if(item < 0){
					item = irandom(scr_item_type_count_items(type) - 1);
				}

				if(amount < 0){
					amount = amount * -1;
					amount = irandom(amount - 1) + 1;
				}
			break;
	
			case item_type.tl_n_wep:
				if(amount == -1){
					return [type,weapon.item,16];
				}else {
					if(item < 0){
						item = irandom(scr_item_type_count_items(type) - 1);
					}
			
					if(amount < 0){
						amount = amount * -1;
						amount = irandom(amount - 1) + 1;
					}
				}
			break;
		}

		return [type,item,amount];
	}
}

return -1;
}