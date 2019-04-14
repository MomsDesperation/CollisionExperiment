
#region Room Controls

    if keyboard_check_pressed(ord("R")) || keyboard_check_pressed(vk_f3) { room_restart(); };
    if keyboard_check_pressed(vk_escape) { game_end(); };
    if keyboard_check_pressed(vk_f1) { room_goto_previous(); };
    if keyboard_check_pressed(vk_f2) { room_goto_next(); };

#endregion


#region Keyboard Movement Input

    if keyboard_check_pressed(vk_space) { with obj_player { physics_apply_local_impulse(0, 20, 0, -jmp); }; }
    if keyboard_check(ord("A")) { with obj_player { physics_apply_local_force(0, 0, -mvf, 0); }; }
    if keyboard_check(ord("D")) { with obj_player { physics_apply_local_force(0, 0, mvf, 0); }; }

#endregion

