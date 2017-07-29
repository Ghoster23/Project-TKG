if global.p_hurt == false{
    global.p_hp -= 10 div global.p_sdef;
    global.p_hurt = true;
}

instance_destroy();

