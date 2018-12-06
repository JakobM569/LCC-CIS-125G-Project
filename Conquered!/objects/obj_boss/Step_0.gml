/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36E96932
/// @DnDArgument : "var" "obj_boss_controller.stage"
if(obj_boss_controller.stage == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 175185E4
	/// @DnDParent : 36E96932
	/// @DnDArgument : "var" "can_shoot"
	if(can_shoot == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F2B5DCF
		/// @DnDParent : 175185E4
		/// @DnDArgument : "var" "stun"
		if(stun == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 16840592
			/// @DnDParent : 2F2B5DCF
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_bullet"
			/// @DnDSaveInfo : "objectid" "c45991cd-218a-42aa-8a0a-70f4585c3683"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61835AC9
			/// @DnDInput : 2
			/// @DnDParent : 2F2B5DCF
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "var" "can_shoot"
			/// @DnDArgument : "var_1" "casting"
			can_shoot = 1;
			casting = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 503E3792
			/// @DnDInput : 2
			/// @DnDParent : 2F2B5DCF
			/// @DnDArgument : "steps" "random_range(10,60)"
			/// @DnDArgument : "steps_1" "15"
			/// @DnDArgument : "alarm_1" "1"
			alarm_set(0, random_range(10,60));
			alarm_set(1, 15);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13F69EE1
/// @DnDArgument : "var" "obj_boss_controller.stage"
/// @DnDArgument : "value" "1"
if(obj_boss_controller.stage == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2252207D
	/// @DnDParent : 13F69EE1
	/// @DnDArgument : "var" "can_shoot"
	if(can_shoot == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F892B5D
		/// @DnDParent : 2252207D
		/// @DnDArgument : "var" "stun"
		if(stun == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0C7E9C66
			/// @DnDParent : 4F892B5D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_bullet"
			/// @DnDSaveInfo : "objectid" "c45991cd-218a-42aa-8a0a-70f4585c3683"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37657B6D
			/// @DnDInput : 2
			/// @DnDParent : 4F892B5D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "var" "can_shoot"
			/// @DnDArgument : "var_1" "casting"
			can_shoot = 1;
			casting = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 2E486D5D
			/// @DnDInput : 2
			/// @DnDParent : 4F892B5D
			/// @DnDArgument : "steps" "random_range(10,60)"
			/// @DnDArgument : "steps_1" "15"
			/// @DnDArgument : "alarm_1" "1"
			alarm_set(0, random_range(10,60));
			alarm_set(1, 15);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75DC18D4
	/// @DnDParent : 13F69EE1
	/// @DnDArgument : "var" "alarm[2]"
	/// @DnDArgument : "value" "-1"
	if(alarm[2] == -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 59E608D2
		/// @DnDParent : 75DC18D4
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "2"
		alarm_set(2, 60);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09A4E119
/// @DnDArgument : "var" "obj_boss_controller.stage"
/// @DnDArgument : "value" "2"
if(obj_boss_controller.stage == 2)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 44544206
	/// @DnDParent : 09A4E119
	/// @DnDArgument : "script" "scr_create_boss_copies"
	/// @DnDSaveInfo : "script" "3e8e0f70-bba1-40f8-b6bf-9128df94a486"
	script_execute(scr_create_boss_copies);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DDC041D
/// @DnDArgument : "var" "obj_boss_controller.stage"
/// @DnDArgument : "value" "3"
if(obj_boss_controller.stage == 3)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E61F849
	/// @DnDParent : 3DDC041D
	/// @DnDArgument : "var" "can_shoot"
	if(can_shoot == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 437E7642
		/// @DnDParent : 3E61F849
		/// @DnDArgument : "var" "stun"
		if(stun == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 209053DE
			/// @DnDParent : 437E7642
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_bullet"
			/// @DnDSaveInfo : "objectid" "c45991cd-218a-42aa-8a0a-70f4585c3683"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A56035B
			/// @DnDInput : 2
			/// @DnDParent : 437E7642
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "var" "can_shoot"
			/// @DnDArgument : "var_1" "casting"
			can_shoot = 1;
			casting = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 152BC95E
			/// @DnDInput : 2
			/// @DnDParent : 437E7642
			/// @DnDArgument : "steps" "random_range(10,60)"
			/// @DnDArgument : "steps_1" "15"
			/// @DnDArgument : "alarm_1" "1"
			alarm_set(0, random_range(10,60));
			alarm_set(1, 15);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A458451
/// @DnDArgument : "var" "obj_boss_controller.stage"
/// @DnDArgument : "value" "4"
if(obj_boss_controller.stage == 4)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 755E230B
	/// @DnDApplyTo : 9228aee3-9d8d-4b36-98ac-9a2ca8d1e6ab
	/// @DnDParent : 0A458451
	with(obj_boss_copy) instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62D71997
	/// @DnDParent : 0A458451
	/// @DnDArgument : "var" "can_shoot"
	if(can_shoot == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56D784E0
		/// @DnDParent : 62D71997
		/// @DnDArgument : "var" "stun"
		if(stun == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 49B14F44
			/// @DnDParent : 56D784E0
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_shotgun1"
			/// @DnDSaveInfo : "objectid" "af8acb65-123b-4e11-9583-37b9e6e53e26"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_shotgun1);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7CD92A25
			/// @DnDParent : 56D784E0
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_shotgun2"
			/// @DnDSaveInfo : "objectid" "a3b55e95-4fe7-4218-9287-a30a63bc92cb"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_shotgun2);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1F7E9158
			/// @DnDParent : 56D784E0
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_shotgun3"
			/// @DnDSaveInfo : "objectid" "8a20547b-b28e-47c6-83c5-c075a03a45e9"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_shotgun3);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0FE2559E
			/// @DnDInput : 2
			/// @DnDParent : 56D784E0
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "var" "can_shoot"
			/// @DnDArgument : "var_1" "casting"
			can_shoot = 1;
			casting = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 22516A63
			/// @DnDInput : 2
			/// @DnDParent : 56D784E0
			/// @DnDArgument : "steps" "random_range(10,60)"
			/// @DnDArgument : "steps_1" "15"
			/// @DnDArgument : "alarm_1" "1"
			alarm_set(0, random_range(10,60));
			alarm_set(1, 15);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EECAA95
	/// @DnDParent : 0A458451
	/// @DnDArgument : "var" "alarm[2]"
	/// @DnDArgument : "value" "-1"
	if(alarm[2] == -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5CD5FFCC
		/// @DnDParent : 0EECAA95
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "2"
		alarm_set(2, 60);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 705E5370
/// @DnDArgument : "var" "obj_boss_controller.stage"
/// @DnDArgument : "value" "5"
if(obj_boss_controller.stage == 5)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6604295C
	/// @DnDParent : 705E5370
	/// @DnDArgument : "script" "scr_create_boss_copies"
	/// @DnDSaveInfo : "script" "3e8e0f70-bba1-40f8-b6bf-9128df94a486"
	script_execute(scr_create_boss_copies);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FB6DA6A
/// @DnDArgument : "var" "obj_boss_controller.stage"
/// @DnDArgument : "value" "6"
if(obj_boss_controller.stage == 6)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 101F57AD
	/// @DnDParent : 2FB6DA6A
	/// @DnDArgument : "var" "can_shoot"
	if(can_shoot == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AADE772
		/// @DnDParent : 101F57AD
		/// @DnDArgument : "var" "stun"
		if(stun == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6B34B62F
			/// @DnDParent : 0AADE772
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_shotgun1"
			/// @DnDSaveInfo : "objectid" "af8acb65-123b-4e11-9583-37b9e6e53e26"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_shotgun1);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4B768A30
			/// @DnDParent : 0AADE772
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_shotgun2"
			/// @DnDSaveInfo : "objectid" "a3b55e95-4fe7-4218-9287-a30a63bc92cb"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_shotgun2);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 28B7FE6C
			/// @DnDParent : 0AADE772
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_enemy_shotgun3"
			/// @DnDSaveInfo : "objectid" "8a20547b-b28e-47c6-83c5-c075a03a45e9"
			instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_shotgun3);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0DB94D55
			/// @DnDInput : 2
			/// @DnDParent : 0AADE772
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "var" "can_shoot"
			/// @DnDArgument : "var_1" "casting"
			can_shoot = 1;
			casting = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4AFDC3BE
			/// @DnDInput : 2
			/// @DnDParent : 0AADE772
			/// @DnDArgument : "steps" "random_range(10,60)"
			/// @DnDArgument : "steps_1" "15"
			/// @DnDArgument : "alarm_1" "1"
			alarm_set(0, random_range(10,60));
			alarm_set(1, 15);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44045A9C
/// @DnDArgument : "var" "obj_player. x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "x"
if(obj_player. x < x)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0EB0A64E
	/// @DnDParent : 44045A9C
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 020BDC3C
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 76F5E3DF
	/// @DnDParent : 020BDC3C
	image_xscale = 1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D5F8583
/// @DnDArgument : "var" "casting"
/// @DnDArgument : "value" "1"
if(casting == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1C4A747E
	/// @DnDParent : 4D5F8583
	/// @DnDArgument : "spriteind" "spr_boss_cast"
	/// @DnDSaveInfo : "spriteind" "a4ca0cb6-bdb5-4182-8351-55dd55d29587"
	sprite_index = spr_boss_cast;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 15B2EBDD
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4244896D
	/// @DnDParent : 15B2EBDD
	/// @DnDArgument : "spriteind" "spr_boss_idle"
	/// @DnDSaveInfo : "spriteind" "b6a95332-98ee-4b9b-9f61-7ace4ef607b5"
	sprite_index = spr_boss_idle;
	image_index = 0;
}