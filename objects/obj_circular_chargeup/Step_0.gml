/// @description Insert description here
// You can write your code in this editor
counter += chargeinc;

if(counter>0 && counter<=time/8){
	image_index=0;
}else if(counter<=2*time/8){
	image_index=1;
}else if(counter<=3*time/8){
	image_index=2;
}else if(counter<=4*time/8){
	image_index=3;
}else if(counter<=5*time/8){
	image_index=4;
}else if(counter<=6*time/8){
	image_index=5;
}else if(counter<=7*time/8){
	image_index=6;
}else if(counter<time){
	image_index=7;
}else if(counter>=time){
	image_index=8;
}

if (counter>=time){
	owner.chargeup = true;
}