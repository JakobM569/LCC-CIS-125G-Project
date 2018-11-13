/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21BE1384
/// @DnDArgument : "var" "can_shoot"
/// @DnDArgument : "value" "1"
if(can_shoot == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6D394749
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_cast"
	/// @DnDSaveInfo : "spriteind" "925d633c-f19b-490f-a58c-c420b26fc530"
	sprite_index = spr_player_cast;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66F87134
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_bullet"
	/// @DnDSaveInfo : "objectid" "0cd111f1-47d0-4822-ac4a-f3e0e67ac4dc"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3082650C
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "var" "can_shoot"
	can_shoot = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 69C7C3CC
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "steps" "5"
	alarm_set(0, 5);
}