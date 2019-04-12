
for (var i = 0; i < 10; i += 1)
   {
       txt[1] = lerp(x, x + hspeed, room_speed);
       txt[2] = lerp(y, y + vspeed, room_speed);
       txt[3] = x;
       txt[4] = y;
       txt[5] = place_meeting(x+hspeed,y,obj_collision);
       txt[6] = place_meeting(x,y+vspeed,obj_collision);
       txt[7] = collided;
       txt[8] = median(x,mouse_x);
       txt[9] = median(y,mouse_y);
       text = draw_text(32, 32 + (i * 15), string(i) + ". "+ string(txt[i]));   
   }

