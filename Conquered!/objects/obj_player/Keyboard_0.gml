/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 713DB492
/// @DnDArgument : "var" "sprite_lock"
if(sprite_lock == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 603F9A1F
	/// @DnDParent : 713DB492
	/// @DnDArgument : "spriteind" "spr_player_idle"
	/// @DnDSaveInfo : "spriteind" "ced9adfa-abac-4bf4-b7a8-f77ed16c7b9c"
	sprite_index = spr_player_idle;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5ED52B2D
	/// @DnDParent : 713DB492
	/// @DnDArgument : "speed" "0"
	image_speed = 0;
}