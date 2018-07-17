ROTT=1.5
LENN=2
DIVISOR=1.5
RANGE=256

if place_meeting(x,y,objSolid)=false
{
draw_set_color(c_white)
draw_primitive_begin(pr_trianglelist)
xx=x
yy=y
for (rot=0;rot<361;rot+=ROTT)
{
if collision_point(x+lengthdir_x(5,rot),y+lengthdir_y(5,rot),objSolid,true,true)=noone
{
draw_vertex(x,y)
draw_vertex(xx,yy)
len=RANGE
while collision_line(x,y,x+lengthdir_x(len,rot),y+lengthdir_y(len,rot),objSolid,true,true)!=noone and len>0
{
lenn=len
while collision_line(x,y,x+lengthdir_x(round(lenn/DIVISOR),rot),y+lengthdir_y(round(lenn/DIVISOR),rot),objSolid,true,true)!=noone and (lenn-round(lenn/DIVISOR))>2
{
lenn=round(lenn/DIVISOR)
}
len=lenn-LENN
}
xx=x+lengthdir_x(len,rot)
yy=y+lengthdir_y(len,rot)
draw_vertex(xx,yy)
}
}
draw_primitive_end()
}