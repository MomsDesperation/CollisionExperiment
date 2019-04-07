
#region Testing

    if keyboard_check_pressed(ord("F"))
        {
            if mouse_test = 1 {mouse_test = 0}
            else {mouse_test = 1}
        }
        
    if mouse_test = 1
        {
            if mouse_check_button_pressed(mb_left)
                {
                    enum TestVariables {
                        xx,
                        yy,
                        hs,
                        vs
                    };
                    xx = mouse_x;
                    yy = mouse_y;
                    hs = lerp(x,xx,5);
                    vs = lerp(y,yy,5);
                    
                }
        }

#region Controls

// Testing for
if keyboard_check_pressed(ord("V"))
    {
        x+=test;
    };
    

// Controls

if !place_meeting(x+hspeed,y,obj_collision) || !place_meeting(x,y+vspeed,obj_collision)
    {
    collided = 0;
    if keyboard_check(ord("A"))
        {
            hspeed-=spd;
        }
    
    if keyboard_check(ord("D"))
         {
              hspeed+=spd;
           }
       
    if keyboard_check(ord("W"))
          {
              vspeed-=spd;
          }
    
    if keyboard_check(ord("S"))
          {
           vspeed+=spd;
          }
          
    }
    
if place_meeting(x+hspeed,y+1,obj_collision) || place_meeting(x,y+1+vspeed,obj_collision)
    {
        collided = 1;
    }
    
    
// Reload & Exit

if keyboard_check_pressed(vk_escape)
    {
        game_end();
    }
    
if keyboard_check_pressed(vk_f3) || keyboard_check_pressed(ord("R"))
    {
        room_restart();
    }

#endregion


#region Gravity

if !place_meeting(x,y+1+vspeed,obj_collision)
    {
        gravity = 0.5;
    }
if place_meeting(x,y+1+vspeed,obj_collision)
    {
        gravity = 0;
    }
    
    

    
#endregion



#region Collision

if collided = 1 && (vspeed > 0 || vspeed < 0)
    {
        vspeed = 0;
    }
    
if collided = 1 && (hspeed > 0 || hspeed < 0)
    {
        hspeed = 0;
    }
    
    
    
    
if collided = 1
    {
        if keyboard_check_pressed(vk_space)
            {
                vspeed -= 10;
            }
    }    
    
    
#endregion


