/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F28799D
/// @DnDInput : 2
/// @DnDArgument : "expr" "keyboard_check(ord("A"))"
/// @DnDArgument : "expr_1" "keyboard_check(ord("D"))"
/// @DnDArgument : "var" "key_left"
/// @DnDArgument : "var_1" "key_right"
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2515E7EF
/// @DnDArgument : "expr" "key_right-key_left"
/// @DnDArgument : "var" "dir"
dir = key_right-key_left;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CDA54F6
/// @DnDArgument : "var" "sprite_lock"
if(sprite_lock == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 391B3CD6
	/// @DnDParent : 1CDA54F6
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "op" "1"
	if(dir < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 6E1AF207
		/// @DnDParent : 391B3CD6
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E310721
	/// @DnDParent : 1CDA54F6
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "op" "2"
	if(dir > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 4DB62E47
		/// @DnDParent : 5E310721
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42B43CB8
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6025AD23
	/// @DnDParent : 42B43CB8
	/// @DnDArgument : "expr" "run_speed*dir"
	/// @DnDArgument : "var" "hsp"
	hsp = run_speed*dir;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 194840C2
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "20d4b612-2602-49d8-9d78-8535e2970c63"
var l194840C2_0 = instance_place(x + hsp, y + 0, obj_wall);
if ((l194840C2_0 > 0))
{
	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 20843742
	/// @DnDParent : 194840C2
	/// @DnDArgument : "var" "place_meeting(x+sign(hsp),y,obj_wall)"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "1"
	while (!(place_meeting(x+sign(hsp),y,obj_wall) == 1)) {
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 22B806BA
		/// @DnDParent : 20843742
		/// @DnDArgument : "x" "sign(hsp)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += sign(hsp);
		y += 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E09209F
	/// @DnDParent : 194840C2
	/// @DnDArgument : "var" "hsp"
	hsp = 0;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 738BE6C1
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += hsp;
y += 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6695E063
/// @DnDArgument : "var" "vsp"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "grav_max"
if(!(vsp >= grav_max))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01B9C4AC
	/// @DnDParent : 6695E063
	/// @DnDArgument : "expr" "grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vsp"
	vsp += grav;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2A661AF7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vsp"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "20d4b612-2602-49d8-9d78-8535e2970c63"
var l2A661AF7_0 = instance_place(x + 0, y + vsp, obj_wall);
if ((l2A661AF7_0 > 0))
{
	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 4164A97C
	/// @DnDParent : 2A661AF7
	/// @DnDArgument : "var" "place_meeting(x,y+sign(vsp),obj_wall)"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "1"
	while (!(place_meeting(x,y+sign(vsp),obj_wall) == 1)) {
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 03FF1AA1
		/// @DnDParent : 4164A97C
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(vsp)"
		/// @DnDArgument : "y_relative" "1"
		x += 0;
		y += sign(vsp);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0059F46D
	/// @DnDParent : 2A661AF7
	/// @DnDArgument : "var" "vsp"
	vsp = 0;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 53B9A03E
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vsp"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += vsp;