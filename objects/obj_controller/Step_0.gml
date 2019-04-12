
#region Room Controls

    if keyboard_check_pressed(ord("R")) { room_restart() };
    if keyboard_check_pressed(vk_escape) { game_end() };

#endregion
//
#region Choose object
    
    // Keyboard Choose
    if keyboard_check_pressed(188) || keyboard_check_pressed(vk_left) { if choose_object >=1 { choose_object -= 1 ;}; };
    if keyboard_check_pressed(190) || keyboard_check_pressed(vk_right) { if choose_object <=2 { choose_object += 1 ;}; };
    
    // Mouse Choose 
    if mouse_check_button_pressed(mb_left) 
        { 
            if !position_empty(mouse_x, mouse_y)
                {
                    //var inst, name;
                    inst = instance_position(mouse_x, mouse_y, all);
                    name = object_get_name(inst.object_index);
                    switch (name)
                        {
                            case "obj_player": choose_object = 0; break;
                            case "obj_small": choose_object = 1; break;
                            case "obj_big": choose_object = 2; break;
                            case "obj_enemy": choose_object = 3; break;
                        }
                };
        };
    
#endregion
//
#region Get Name

    switch (choose_object)
        {
            case 0: obj = obj_player; obj_name = "obj_player"; break;
            case 1: obj = obj_small; obj_name = "obj_small"; break;
            case 2: obj = obj_big; obj_name = "obj_big"; break;
            case 3: obj = obj_enemy; obj_name = "obj_enemy"; break;
        };

#endregion
//
#region Keyboard Movement Input

    if keyboard_check_pressed(vk_space) { with obj { physics_apply_local_impulse(0, 20, 0, -jmp); }; }
    if keyboard_check(ord("A")) { with obj { physics_apply_local_force(0, 0, -mvf, 0); }; }
    if keyboard_check(ord("D")) { with obj { physics_apply_local_force(0, 0, mvf, 0); }; }

#endregion
//
#region Keyboard Physics Config input
    // Summary config modes:
    
    // Multiplier
    if keyboard_check_pressed(vk_add) { mul =mul*10 }
    if keyboard_check_pressed(vk_subtract) { mul = mul/10 }
    
    // Shift mode
    if keyboard_check(vk_lshift) { shf = 10 }
    if keyboard_check_released(vk_lshift) { shf = 1 }
    
    
    // Global Gravity
    if keyboard_check_pressed(ord("Y")) { ygg -= (mul * shf); physics_world_gravity( 0, ygg ) };
    if keyboard_check_pressed(ord("U")) { ygg += (mul * shf); physics_world_gravity( 0, ygg ) };
    
    
    // Object config modes
    
    
//    if obj = Name.obj_player
//        {
            
      // Object.mass
         if keyboard_check_pressed(ord("H")) { obj.mss -= (con.mul * con.shf); with obj { physics_mass_properties(phy_mass + mss, 0, 0, phy_inertia); }; }
         if keyboard_check_pressed(ord("J")) { obj.mss += (con.mul * con.shf); with obj { physics_mass_properties(phy_mass + mss, 0, 0, phy_inertia); }; }
            
      // Object.inertia
         if keyboard_check_pressed(ord("N")) { obj.ine -= (con.mul * con.shf); with obj { physics_mass_properties(phy_mass, 0, 0, phy_inertia + ine); }; }
         if keyboard_check_pressed(ord("M")) { obj.ine += (con.mul * con.shf); with obj { physics_mass_properties(phy_mass, 0, 0, phy_inertia + ine); }; }
            
      // Object.jump_force
         if keyboard_check_pressed(ord("I")) { obj.jmp -= (con.mul * con.shf) }
         if keyboard_check_pressed(ord("O")) { obj.jmp += (con.mul * con.shf) }
            
      // Object.move_force
         if keyboard_check_pressed(ord("K")) { obj.mvf -= (con.mul * con.shf) }
         if keyboard_check_pressed(ord("L")) { obj.mvf += (con.mul * con.shf) }
         
         
         
//        }

#endregion

#region Grab

    // Move grabbed item
    if grab = 1
        {
            ginst.phy_position_x = obj.phy_position_x;
            ginst.phy_position_y = obj.phy_position_y - 64;
        }

        if keyboard_check_pressed(ord("F")) 
            {
                switch (grab)
                    {
                        case 0:
                            ginst = instance_nearest(obj.x, obj.y, obj_big);
                            ginst.phy_active = 0;
                            ginst.phy_position_x = obj.phy_position_x;
                            ginst.phy_position_y = obj.phy_position_y - 64;
                            grab = 1;
                            break;
                        case 1:
                            ginst.phy_active = 1;
                            with ginst { physics_apply_local_impulse(0, 0, obj_controller.gforce, 0); };
                            grab = 0;
                            break;
                    }
                
                
                /*
                if grab = 0 
                    {
                        ginst = instance_nearest(obj.x, obj.y, obj_big);
                        ginst.phy_active = 0;
                        ginst.phy_position_x = obj.phy_position_x;
                        ginst.phy_position_y = obj.phy_position_y - 64;
                        grab = 1;
                    }
                if grab = 1
                    {
                        ginst.phy_active = 1;
                        with ginst { physics_apply_local_impulse(0, 0, -obj_controller.gforce, 0); };
                        grab = 0;
                    }
                */
            }

//collision_circle(x1, y1, rad, obj, prec, notme);


#endregion
