/// @description Insert description here
// You can write your code in this editor
scr_delete_link(linkslist);
pullback_time=clamp(original_pb_time + (0.7*(strength/180)),1.5,5);
alarm_set(1,pullback_time);