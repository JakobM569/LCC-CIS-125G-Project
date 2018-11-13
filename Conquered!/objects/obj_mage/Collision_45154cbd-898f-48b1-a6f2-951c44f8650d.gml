/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E4B3DC1
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19C2E79D
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "stun"
	stun = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 73D37FD3
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "spriteind" "spr_mage_hit"
	/// @DnDSaveInfo : "spriteind" "961dd7c7-6f14-4786-a5d5-7a79fa8c2212"
	sprite_index = spr_mage_hit;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 18A0248A
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7BEABACE
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "steps" "10"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 10);
}