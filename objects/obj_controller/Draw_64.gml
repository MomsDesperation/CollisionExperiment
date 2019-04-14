//
#region Draw name
    draw_set_color(c_white);
    draw_text(32,32,"chosen_object: " + string(obj_name));
    draw_circle(obj.x,obj.y,gradius,5);
    
#endregion

#region Draw Physics Config UI

    draw_set_color(c_white);
    
conf_num =  array_create(11,0);
            conf_num[0] = mul;
            conf_num[1] = shf;
            conf_num[2] = ygg;
            conf_num[3] = obj.mss;
            conf_num[4] = obj.ine;
            conf_num[5] = obj.jmp;
            conf_num[6] = obj.mvf;
            conf_num[7] = obj.phy_position_x;
            conf_num[8] = obj.phy_position_y;
            conf_num[9] = obj.phy_speed_x;
            conf_num[10] = obj.phy_speed_y;
            


    for (var i = 0; i < 11 i += 1) 
        {
            draw_text(32, 32 + 16 + (i * 16), string(conf_name[i]));
            draw_text(832, 32 + 32 + (i * 16), string(conf_num[i]));
        }
        
    draw_text(32,300,string(collision_circle(obj.x, obj.y, gradius, obj_big, false, false)));
//    draw_text(32,316,string(with obj {distance_to_object(all)}));
    
    draw_text(32,316,"Grab " + string(grab));
    with obj_player { draw_text(32,332, "Distance to Big " + string(distance_to_object(obj_big))) };
    with obj_player { draw_text(32,332 + 16, "Distance to Small " + string(distance_to_object(obj_small))) };
    with obj_player { draw_text(32,332 + 32, "Distance to Enemy " + string(distance_to_object(obj_enemy))) };
    draw_text(32,332 + 32 + 16, "Min (7,39,8,3,5)" + string(min(7,32,8,3,5)));
    

#endregion
