/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09D104AD
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BB4E147
	/// @DnDParent : 09D104AD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "stun"
	stun = 1;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 59F5B406
	/// @DnDParent : 09D104AD
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 74005960
	/// @DnDParent : 09D104AD
	/// @DnDArgument : "steps" "10"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 10);

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 5D64D46C
	/// @DnDParent : 09D104AD
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health == 0)
	{
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 76331842
		/// @DnDParent : 5D64D46C
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "50"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "1"
		/// @DnDArgument : "color" "$FFCCCCCC"
		effect_create_above(5, x + 0, y + 50, 1, $FFCCCCCC & $ffffff);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5F44FFAB
		/// @DnDParent : 5D64D46C
		/// @DnDArgument : "xpos" "-10"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "20"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_heart_drop"
		/// @DnDSaveInfo : "objectid" "646f3a58-eebb-4e7e-9342-0c8c4bd8143b"
		instance_create_layer(x + -10, y + 20, "Instances", obj_heart_drop);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0811A92E
		/// @DnDParent : 5D64D46C
		instance_destroy();
	}
}