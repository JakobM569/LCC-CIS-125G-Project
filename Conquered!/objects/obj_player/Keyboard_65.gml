/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BADB53A
/// @DnDArgument : "var" "sprite_lock"
if(sprite_lock == 0)
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