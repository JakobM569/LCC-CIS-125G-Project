/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 120216E7
/// @DnDArgument : "var" "hat_found"
if(hat_found == 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1049A9C9
	/// @DnDParent : 120216E7
	/// @DnDArgument : "function" "show_message"
	/// @DnDArgument : "arg" ""I can't leave without my hat!""
	show_message("I can't leave without my hat!");

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 23C209F8
	/// @DnDParent : 120216E7
	/// @DnDArgument : "x" "xprevious"
	/// @DnDArgument : "y" "yprevious"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22626DB6
/// @DnDArgument : "var" "hat_found"
/// @DnDArgument : "value" "1"
if(hat_found == 1)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0D968D3A
	/// @DnDParent : 22626DB6
	/// @DnDArgument : "function" "show_message"
	/// @DnDArgument : "arg" ""Thank you for testing my prototype!""
	show_message("Thank you for testing my prototype!");

	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 39AFE16B
	/// @DnDParent : 22626DB6
	game_end();
}