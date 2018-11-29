/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0EB94140
/// @DnDArgument : "key" "vk_down"
var l0EB94140_0;
l0EB94140_0 = keyboard_check(vk_down);
if (l0EB94140_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 18D8AD84
	/// @DnDParent : 0EB94140
	/// @DnDArgument : "direction" "270"
	direction = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 74356E7C
	/// @DnDParent : 0EB94140
	/// @DnDArgument : "speed" "5"
	speed = 5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 008EBFCC
/// @DnDArgument : "key" "vk_up"
var l008EBFCC_0;
l008EBFCC_0 = keyboard_check(vk_up);
if (l008EBFCC_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 0023D95D
	/// @DnDParent : 008EBFCC
	/// @DnDArgument : "direction" "90"
	direction = 90;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5A98E5E2
	/// @DnDParent : 008EBFCC
	/// @DnDArgument : "speed" "5"
	speed = 5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5B2B5453
/// @DnDArgument : "key" "vk_right"
var l5B2B5453_0;
l5B2B5453_0 = keyboard_check(vk_right);
if (l5B2B5453_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3F738800
	/// @DnDParent : 5B2B5453
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3A92AFCF
	/// @DnDParent : 5B2B5453
	/// @DnDArgument : "speed" "5"
	speed = 5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7A930387
/// @DnDArgument : "key" "vk_left"
var l7A930387_0;
l7A930387_0 = keyboard_check(vk_left);
if (l7A930387_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 026FBC2A
	/// @DnDParent : 7A930387
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 15AC42FD
	/// @DnDParent : 7A930387
	/// @DnDArgument : "speed" "5"
	speed = 5;
}