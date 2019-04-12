//
    draw_set_color(c_white);
#region Draw arrow
    if instance_exists(obj) { draw_arrow(obj.x,obj.y-64,obj.x,obj.y-32 , 10); };
    draw_arrow(obj.x,obj.y,ginst.x,ginst.y,10);
#endregion

