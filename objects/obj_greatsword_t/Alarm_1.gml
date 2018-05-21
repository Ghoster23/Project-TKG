/// @description Insert description here
// You can write your code in this editor
scr_delete_link(linkslist);
pullback_time=clamp(original_pb_time + (0.7*(strength/180)),1.5,5);
show_debug_message("i ate a link in the chain --->"+string(pullback_time));
alarm_set(1,pullback_time);