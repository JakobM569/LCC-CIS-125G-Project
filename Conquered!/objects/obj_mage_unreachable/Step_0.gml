/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0C817446
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "e22915d9-2845-4a82-8355-61d77a9bd462"
var l0C817446_0 = false;
l0C817446_0 = instance_exists(obj_player);
if(l0C817446_0)
{
	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1EAEECCC
	/// @DnDParent : 0C817446
	/// @DnDArgument : "target" "xpos"
	xpos = x;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0806F4DE
	/// @DnDParent : 0C817446
	/// @DnDArgument : "var" "obj_player.x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "xpos"
	if(obj_player.x > xpos)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 69AF3A77
		/// @DnDParent : 0806F4DE
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 466AC59B
	/// @DnDParent : 0C817446
	/// @DnDArgument : "var" "obj_player.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "xpos"
	if(obj_player.x < xpos)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 00CE4723
		/// @DnDParent : 466AC59B
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 172BCA81
	/// @DnDParent : 0C817446
	/// @DnDArgument : "var" "casting"
	if(casting == 0)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 534E2DF0
		/// @DnDParent : 172BCA81
		/// @DnDArgument : "var" "cast_spell"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "1"
		/// @DnDArgument : "max" "60"
		cast_spell = floor(random_range(1, 60 + 1));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 504CD9F2
		/// @DnDParent : 172BCA81
		/// @DnDArgument : "var" "cast_spell"
		/// @DnDArgument : "value" "1"
		if(cast_spell == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 26959649
			/// @DnDParent : 504CD9F2
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "casting"
			casting = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6B3698BD
			/// @DnDParent : 504CD9F2
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_enemy_cast"
			/// @DnDSaveInfo : "spriteind" "8090c685-bb76-4dc1-a9cf-1c735f64c3dc"
			sprite_index = spr_enemy_cast;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0B7D32BC
			/// @DnDParent : 504CD9F2
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_bullet"
			/// @DnDSaveInfo : "objectid" "c45991cd-218a-42aa-8a0a-70f4585c3683"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_bullet);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 14D8097B
			/// @DnDParent : 504CD9F2
			/// @DnDArgument : "steps" "15"
			alarm_set(0, 15);
		}
	}
}