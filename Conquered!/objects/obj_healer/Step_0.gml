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
	/// @DnDArgument : "var" "obj_mage.x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "xpos"
	if(obj_mage.x > xpos)
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
	/// @DnDArgument : "var" "obj_mage.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "xpos"
	if(obj_mage.x < xpos)
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
		/// @DnDArgument : "max" "120"
		cast_spell = floor(random_range(1, 120 + 1));
	
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
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0B7D32BC
			/// @DnDParent : 504CD9F2
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-20"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_heart_cast"
			/// @DnDSaveInfo : "objectid" "0f9945b4-d5f0-4bda-b74e-00d81cbf1a97"
			instance_create_layer(x + 0, y + -20, "Instances", obj_heart_cast);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 14D8097B
			/// @DnDParent : 504CD9F2
			/// @DnDArgument : "steps" "15"
			alarm_set(0, 15);
		}
	}
}