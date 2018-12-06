/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21367D55
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D21F328
	/// @DnDParent : 21367D55
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "stun"
	stun = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45A0867C
	/// @DnDParent : 21367D55
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_boss_controller.boss_health"
	obj_boss_controller.boss_health += -1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3CEAB401
	/// @DnDParent : 21367D55
	/// @DnDArgument : "steps" "20"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 20);
}