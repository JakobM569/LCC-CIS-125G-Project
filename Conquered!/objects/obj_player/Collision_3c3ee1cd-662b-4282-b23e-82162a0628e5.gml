/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19CDF894
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0263069D
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "spriteind" "spr_player_hit"
	/// @DnDSaveInfo : "spriteind" "33c096bb-fec6-4e74-8100-674268602aa1"
	sprite_index = spr_player_hit;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 04EC62E9
	/// @DnDParent : 19CDF894
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06410633
	/// @DnDInput : 2
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "stun"
	/// @DnDArgument : "var_1" "sprite_lock"
	stun = 1;
	sprite_lock = 1;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 02624001
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "health" "-34"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-34);

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 54ADB4CA
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "op" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health < 0)
	{
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 0A362919
		/// @DnDParent : 54ADB4CA
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "15"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "1"
		/// @DnDArgument : "color" "$FFCCCCCC"
		effect_create_above(5, x + 0, y + 15, 1, $FFCCCCCC & $ffffff);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 42610B9C
		/// @DnDParent : 54ADB4CA
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1F8CA8EE
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 15);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A71010B
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "var" "other.x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "x"
	if(other.x > x)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 336E07E6
		/// @DnDParent : 1A71010B
		/// @DnDArgument : "expr" "-5"
		/// @DnDArgument : "var" "hsp"
		hsp = -5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7D30A847
	/// @DnDParent : 19CDF894
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 367EEA38
		/// @DnDParent : 7D30A847
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "hsp"
		hsp = 5;
	}
}