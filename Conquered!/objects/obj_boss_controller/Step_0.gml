/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 134FA071
/// @DnDArgument : "var" "boss_health"
/// @DnDArgument : "value" "stage_health"
if(boss_health == stage_health)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D85EBAA
	/// @DnDParent : 134FA071
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "stage"
	stage += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50DB7F67
	/// @DnDParent : 134FA071
	/// @DnDArgument : "expr" "boss_health-4"
	/// @DnDArgument : "var" "stage_health"
	stage_health = boss_health-4;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 786FDD66
/// @DnDArgument : "var" "boss_health"
if(boss_health == 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0BC2C281
	/// @DnDParent : 786FDD66
	/// @DnDArgument : "function" "show_message"
	/// @DnDArgument : "arg" ""You defeated the boss! Good work!""
	show_message("You defeated the boss! Good work!");

	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 3D8A79CC
	/// @DnDParent : 786FDD66
	game_end();
}