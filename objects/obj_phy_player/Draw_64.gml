/// @description Insert description here
// You can write your code in this editor

/*
for (var i = 0; i < 10; i += 1)
   {
   	   var txt = array_create(10,0);
       txt[1] = lerp(x, x + hspeed, room_speed);
       txt[2] = lerp(y, y + vspeed, room_speed);
       txt[3] = x;
       txt[4] = y;
       txt[5] = place_meeting(x+hspeed,y,obj_collision);
       txt[6] = place_meeting(x,y+vspeed,obj_collision);
       txt[7] = 0;
       txt[8] = median(x,mouse_x);
       txt[9] = median(y,mouse_y);
       text = draw_text(32, 32 + (i * 15), string(i) + ". "+ string(txt[i]));   
   }
*/



draw_text(32,32,"i_mass" + string(i_mass));
draw_text(32,32+16,"phy_mass " + string(phy_mass));
draw_text(32,64,"global_gravity " + string(150));
draw_text(32,64+16,"phy_position_x" + string(phy_position_x));
draw_text(32,64+32,"phy_speed_x" + string(phy_speed_x));
draw_text(32,64+32+16,"phy_position_y" + string(phy_position_y));
draw_text(32,64+64,"phy_speed_y" + string(phy_speed_y));




//draw_text(32,32+32+16,"fix_Ball" + string(physics_fixture_set_linear_damping(fix_Ball, i_fixture)));
