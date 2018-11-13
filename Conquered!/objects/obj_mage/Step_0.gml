/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0C817446
/// @DnDArgument : "obj" "obj_player"
var l0C817446_0 = false;
l0C817446_0 = instance_exists(obj_player);
if(l0C817446_0)
{
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
			/// @DnDArgument : "spriteind" "spr_mage_casting"
			/// @DnDSaveInfo : "spriteind" "9f3aa39b-862f-40e8-b80a-6e2b2dba1c75"
			sprite_index = spr_mage_casting;
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

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 4589F5D3
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health == 0)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 39FDF1C1
	/// @DnDParent : 4589F5D3
	/// @DnDArgument : "x" "50"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "50"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "5"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FFCCCCCC"
	effect_create_above(5, x + 50, y + 50, 1, $FFCCCCCC & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 142AA398
	/// @DnDParent : 4589F5D3
	instance_destroy();
}