/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BADB53A
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 42CD0205
	/// @DnDParent : 3BADB53A
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player"
	/// @DnDSaveInfo : "spriteind" "b4c5ff53-9387-40ac-a26b-979f6c5554e7"
	sprite_index = spr_player;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6D0FE222
	/// @DnDParent : 3BADB53A
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AE915E4
/// @DnDArgument : "var" "stun"
/// @DnDArgument : "value" "1"
if(stun == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1996F929
	/// @DnDParent : 5AE915E4
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_hit"
	/// @DnDSaveInfo : "spriteind" "33c096bb-fec6-4e74-8100-674268602aa1"
	sprite_index = spr_player_hit;
	image_index += 0;
}