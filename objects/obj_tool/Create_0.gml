event_inherited();
owner = noone;

//Pause
scr_pausable_init(4);

#region Item system info
slot = obj_inventory_controller.tool_slot; //Slot in inventory

//Item parameters
type   = item_type.tl_n_wep;
item   = tl_n_wep.wood_stick;
amount = 8;
#endregion

#region Visuals
offset = true;
offs   = 4;

//Position offset because of skills / chargeup
offx = 0;
offy = 0;

angle        = 0; //Angle in which the owner is aiming
ang_off_base = 0; //Base angle offset
ang_off      = 0; //Current angle offset

animation = 0; //Type of animation [On skill, Never, Always]

drawn  = -1; //Sprite to use when Drawn
stowed = -1; //Sprite to use when Stowed

image_speed = 0;
image_index = 0;
img_spd     = 0; //Image speed when animating
p_image_angle = image_angle; //Previous Image angle

handed = 0; //How the weapon is held [Two hands, One hand, No hands]
hand   = 1; //Lefty or Righty
#endregion

#region Weapon Stats
mult = stats.atk; //Damage scales on this
divi = stats.def; //Damage is mitigated by this

kb_amount = 0;
#endregion

#region Mechanics
state      = 0; //Held or Stowed
base_state = 0; //State to start in

executing = -1; //Which skill is executing
charging  = -1; //Which skill is charging

booted_skills = [false,false,false,false]; //Flags that indicate if each skills
										   //necessary vars are initialized

skills = [-1,-1,-1,-1]; //Array of the weapon's skills
cds    = [-1,-1,-1,-1]; //Cooldowns of each skill
icons  = [-1,-1,-1,-1]; //Skill Icons

skill_dist = sprite_width; //Distance at which some damage dealers
						   //Will spawn from the origin of the weapon

///Charge
charge_scr = -1;            //Script to execute on chargeup
charge     = [-1,-1,-1,-1]; //Time it takes to charge each skill
meter      = noone;         //Auxiliary variable for some chargeups
chargeup   = false;         //Charged up flag

///Useable
rd_skills = [0,0,0,0]; //Skills that can be used
resetting = false;     //Check flag

player_owned = false; //Player flag
#endregion

//Input array
key[0] = false;
key[1] = false;

xc = 0;
yc = 0;