
draw_sprite(spr_collision,0,(x+hspeed),(y+vspeed));
draw_self();

draw_set_color(c_white);
//draw_arrow(x,y,x+hspeed,y+vspeed,2);
draw_line(x,y,lerp(x, x + hspeed, room_speed),lerp(y, y + vspeed, room_speed));
draw_sprite(spr_collision2,0,lerp(x, x + hspeed, room_speed),lerp(y, y + vspeed, room_speed));

