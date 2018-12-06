/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 070C2162
/// @DnDArgument : "var" "jumppoint"
if(jumppoint == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F94D761
	/// @DnDParent : 070C2162
	/// @DnDArgument : "var" "random_range(0,100)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "50"
	if(random_range(0,100) > 50)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 72FE1F35
		/// @DnDParent : 1F94D761
		/// @DnDArgument : "x" "208"
		/// @DnDArgument : "y" "243"
		x = 208;
		y = 243;
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 59748A9D
		/// @DnDParent : 1F94D761
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF666666"
		effect_create_above(5, x + 0, y + 0, 0, $FF666666 & $ffffff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06CF1A14
		/// @DnDParent : 1F94D761
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "jumppoint"
		jumppoint = 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 6055C300
		/// @DnDParent : 1F94D761
		exit;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 65603F8A
	/// @DnDParent : 070C2162
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3AEF4E01
		/// @DnDParent : 65603F8A
		/// @DnDArgument : "x" "815"
		/// @DnDArgument : "y" "243"
		x = 815;
		y = 243;
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 15A95FBF
		/// @DnDParent : 65603F8A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "4"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF666666"
		effect_create_above(4, x + 0, y + 0, 0, $FF666666 & $ffffff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6037C2C2
		/// @DnDParent : 65603F8A
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "jumppoint"
		jumppoint = 2;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 6A8AA9AC
		/// @DnDParent : 65603F8A
		exit;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69B8A840
/// @DnDArgument : "var" "jumppoint"
/// @DnDArgument : "value" "1"
if(jumppoint == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DB0313B
	/// @DnDParent : 69B8A840
	/// @DnDArgument : "var" "random_range(0,100)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "50"
	if(random_range(0,100) > 50)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 58674398
		/// @DnDParent : 7DB0313B
		/// @DnDArgument : "x" "495"
		/// @DnDArgument : "y" "211"
		x = 495;
		y = 211;
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 5AFF6692
		/// @DnDParent : 7DB0313B
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF666666"
		effect_create_above(5, x + 0, y + 0, 0, $FF666666 & $ffffff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16812BAE
		/// @DnDParent : 7DB0313B
		/// @DnDArgument : "var" "jumppoint"
		jumppoint = 0;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 73B14998
		/// @DnDParent : 7DB0313B
		exit;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 46D3C466
	/// @DnDParent : 69B8A840
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1E89D494
		/// @DnDParent : 46D3C466
		/// @DnDArgument : "x" "815"
		/// @DnDArgument : "y" "243"
		x = 815;
		y = 243;
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 1894D858
		/// @DnDParent : 46D3C466
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "4"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF666666"
		effect_create_above(4, x + 0, y + 0, 0, $FF666666 & $ffffff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 443CA913
		/// @DnDParent : 46D3C466
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "jumppoint"
		jumppoint = 2;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 272BF5C2
		/// @DnDParent : 46D3C466
		exit;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01A93A64
/// @DnDArgument : "var" "jumppoint"
/// @DnDArgument : "value" "2"
if(jumppoint == 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C31F414
	/// @DnDParent : 01A93A64
	/// @DnDArgument : "var" "random_range(0,100)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "50"
	if(random_range(0,100) > 50)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4D4F8FF6
		/// @DnDParent : 5C31F414
		/// @DnDArgument : "x" "208"
		/// @DnDArgument : "y" "243"
		x = 208;
		y = 243;
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 47826E9E
		/// @DnDParent : 5C31F414
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF666666"
		effect_create_above(5, x + 0, y + 0, 0, $FF666666 & $ffffff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 677C9D1A
		/// @DnDParent : 5C31F414
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "jumppoint"
		jumppoint = 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 28E1B0D3
		/// @DnDParent : 5C31F414
		exit;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 571D9696
	/// @DnDParent : 01A93A64
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6B2EEAA9
		/// @DnDParent : 571D9696
		/// @DnDArgument : "x" "495"
		/// @DnDArgument : "y" "211"
		x = 495;
		y = 211;
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 2117888E
		/// @DnDParent : 571D9696
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "4"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF666666"
		effect_create_above(4, x + 0, y + 0, 0, $FF666666 & $ffffff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1AD55EEF
		/// @DnDParent : 571D9696
		/// @DnDArgument : "var" "jumppoint"
		jumppoint = 0;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5750C286
		/// @DnDParent : 571D9696
		exit;
	}
}