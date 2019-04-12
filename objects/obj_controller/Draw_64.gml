//
#region Draw name
    draw_set_color(c_white);
    draw_text(32,32,"chosen_object: " + string(obj_name));
    
#endregion

#region Draw Physics Config UI

    draw_set_color(c_white);
    
conf_num =  array_create(10,0);
            conf_num[0] = mul;
            conf_num[1] = shf;
            conf_num[2] = ygg;
            conf_num[3] = obj.mss;
            conf_num[4] = obj.ine;
            conf_num[5] = obj.jmp;
            conf_num[6] = obj.mvf;
            


    for (var i = 0; i < 10; i += 1) 
        {
            draw_text(32, 32 + 16 + (i * 16), string(conf_name[i]));
            draw_text(832, 32 + 32 + (i * 16), string(conf_num[i]));
        }
        
    



#endregion
