/// @description Insert description here
// You can write your code in this editor
event_inherited();

eq = instance_create_layer(x,y-32,"IF",obj_equipable);

eq.pedestal = self;

scr_interactable_init(48,16,15,16,-48);