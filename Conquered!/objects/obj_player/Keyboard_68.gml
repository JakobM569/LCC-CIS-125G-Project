/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 426FB4C7
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 485A4F39
	/// @DnDParent : 426FB4C7
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player"
	/// @DnDSaveInfo : "spriteind" "b4c5ff53-9387-40ac-a26b-979f6c5554e7"
	sprite_index = spr_player;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5E6BDFBD
	/// @DnDParent : 426FB4C7
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 711AD3D8
/// @DnDArgument : "var" "stun"
/// @DnDArgument : "value" "1"
if(stun == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0448856A
	/// @DnDParent : 711AD3D8
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_hit"
	/// @DnDSaveInfo : "spriteind" "33c096bb-fec6-4e74-8100-674268602aa1"
	sprite_index = spr_player_hit;
	image_index += 0;
}