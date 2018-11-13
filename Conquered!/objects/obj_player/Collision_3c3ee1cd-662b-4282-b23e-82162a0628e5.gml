/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19CDF894
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06410633
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "stun"
	stun = 1;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 34B33FC1
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1F8CA8EE
	/// @DnDParent : 19CDF894
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 30);
}