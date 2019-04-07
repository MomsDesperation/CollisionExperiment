
#region Movement

	if keyboard_check(ord("A")) || keyboard_check(vk_left)
		{
			phy_speed_x -=0.1;
		}
	if keyboard_check(ord("D")) || keyboard_check(vk_right)
		{
			phy_speed_x +=0.1;
		}
	
	// Jump
	
	if keyboard_check_pressed(vk_space)
		{
			physics_apply_impulse(x, y, 0, -500);
		}
		
// Testing Variables
		
	if keyboard_check_pressed(ord("O"))
		{
			physics_mass_properties(mass + i_mass, 0, 0, phy_inertia);
			i_mass += 10;
		}
		
	if keyboard_check_pressed(ord("P"))
		{
			physics_mass_properties(mass + i_mass, 0, 0, phy_inertia);
			i_mass -= 10;
		}
		
	if keyboard_check_pressed(ord("K"))
		{
			physics_fixture_set_linear_damping(fix_Ball, i_fixture);
			i_fixture += 0.1;
		}
		 
	if keyboard_check_pressed(ord("L"))
		{
			physics_fixture_set_linear_damping(fix_Ball, i_fixture);
			i_fixture -= 0.1;
		}

#endregion


#region Restart & End

    if keyboard_check_pressed(vk_escape)
        {
            game_end();
        }
    
    if keyboard_check_pressed(ord("R"))
        {
            room_restart();
        }
		
#endregion