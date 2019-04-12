
#region

txt = array_create(10,0);
txt[1] = lerp(x, x + hspeed, room_speed);
txt[2] = lerp(y, y + vspeed, room_speed);

spd = 0.5;

collided = 0;

test = -5;
mouse_test = 0;

#endregion