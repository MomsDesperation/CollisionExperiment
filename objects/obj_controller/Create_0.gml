
//!#import "global"


#region Choose object


    // This is representation of which object has chosen
    // And which stats to change and show in GUI
    // 0 = Player
    // 1 = Object Big
    // 2 = Object Small
    // 3 = Enemy
    
    choose_object = 0;
    obj_name = 0;
    obj = obj_player;
    con = obj_controller;
    inst = 0;


#endregion

#region Physics Config Var

    /*
    enum Config {
        ygg,
        mss,
        ine,
        jmp,
        mvf,
        shf = 1,
        mul = 1
    };
    */
    
    ygg = 0.03125;
    
    mss = obj.phy_mass;
    ine = obj.phy_inertia;
    jmp = 1;
    mvf = 1;
    
    shf = 1;
    mul = 1;
    
    fix = physics_fixture_create();
    
    
    conf_name = array_create(10,0);
    conf_name[0] = "Global Multiplier: Numpad - (/10) / Numpad + (*10) ; Affects all variables"
    conf_name[1] = "Global Shift Multiplier: Left Shift / Multiplier * 10";
    conf_name[2] = "Global gravity: Y - / U + / * Multiplier";
    conf_name[3] = "Object Mass: H - / J + / * Multiplier";
    conf_name[4] = "Object Inertia: N - / M + / * Multiplier";
    conf_name[5] = "Object Jump Force: I - / O + / * Multiplier";
    conf_name[6] = "Object Move Force: K - / L + / * Multiplier";
    conf_name[7] = "Global gravity: Y - / U + / * Multiplier";
    
    
    
    
#endregion