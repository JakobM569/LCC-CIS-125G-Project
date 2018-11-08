/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4F537909
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "20d4b612-2602-49d8-9d78-8535e2970c63"
var l4F537909_0 = instance_place(x + 0, y + 1, obj_wall);
if ((l4F537909_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16801A57
	/// @DnDParent : 4F537909
	/// @DnDArgument : "expr" "jump_speed"
	/// @DnDArgument : "var" "vsp"
	vsp = jump_speed;
}