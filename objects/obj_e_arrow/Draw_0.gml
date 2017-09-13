draw_self();

if state == 0 {
//cauda aumenta com tempo ate certo offset
offset=scr_aproach(offset,50,10);
x1=xprevious+lengthdir_x(-(offset),-phy_rotation);
y1=yprevious+lengthdir_y(-(offset),-phy_rotation);

//junto à flexa nc muda

x2=x+lengthdir_x(-12,-phy_rotation)+lengthdir_x(2,-phy_rotation+90);
y2=y+lengthdir_y(-12,-phy_rotation)+lengthdir_y(2,-phy_rotation+90);
x3=x+lengthdir_x(-12,-phy_rotation)+lengthdir_x(2,-phy_rotation-90);
y3=y+lengthdir_y(-12,-phy_rotation)+lengthdir_y(2,-phy_rotation-90);


draw_triangle(x1,y1,x2,y2,x3,y3,0);
}