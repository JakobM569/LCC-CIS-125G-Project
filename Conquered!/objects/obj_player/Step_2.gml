/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 563DD78E
/// @DnDArgument : "var" "sprite_lock"
if(sprite_lock == 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6DBDC96A
	/// @DnDParent : 563DD78E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "20d4b612-2602-49d8-9d78-8535e2970c63"
	var l6DBDC96A_0 = instance_place(x + 0, y + 1, obj_wall);
	if (!(l6DBDC96A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3E939C24
		/// @DnDParent : 6DBDC96A
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_player_jump"
		/// @DnDSaveInfo : "spriteind" "e03b48dc-5e28-42a1-a7f8-ec90039ea3dc"
		sprite_index = spr_player_jump;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 636EDB8B
		/// @DnDParent : 6DBDC96A
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	}
}