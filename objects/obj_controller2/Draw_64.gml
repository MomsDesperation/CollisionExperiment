
    // Prototype v.0.0.3
    draw_text(832,32, "Elevator Extreme");
    draw_text(832,32+16, "Prototype v.0.0.3");

    draw_text(32,16+(16*1), "X " + string( obj_player.phy_position_x ));
    draw_text(32,16+(16*2), "Y " + string( obj_player.phy_position_y ));
    draw_text(32,16+(16*3), "Xspeed " + string( obj_player.phy_speed_x ));
    draw_text(32,16+(16*4), "Yspeed " + string( obj_player.phy_speed_y ));