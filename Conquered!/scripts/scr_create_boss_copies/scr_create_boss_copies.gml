/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 62198510
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_boss_controller.stage"
obj_boss_controller.stage += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DECA285
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "var" "alarm[2]"
alarm[2] = -1;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2718C672
/// @DnDArgument : "x" "495"
/// @DnDArgument : "y" "211"
x = 495;
y = 211;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 7E40F71F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF666666"
effect_create_above(5, x + 0, y + 0, 0, $FF666666 & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CB540E5
/// @DnDArgument : "var" "jumppoint"
jumppoint = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 287D3AFB
/// @DnDArgument : "xpos" "815"
/// @DnDArgument : "ypos" "243"
/// @DnDArgument : "objectid" "obj_boss_copy"
/// @DnDSaveInfo : "objectid" "9228aee3-9d8d-4b36-98ac-9a2ca8d1e6ab"
instance_create_layer(815, 243, "Instances", obj_boss_copy);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 4F230EFB
/// @DnDArgument : "x" "815"
/// @DnDArgument : "y" "243"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF666666"
effect_create_above(5, 815, 243, 0, $FF666666 & $ffffff);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6CCA8540
/// @DnDArgument : "xpos" "208"
/// @DnDArgument : "ypos" "243"
/// @DnDArgument : "objectid" "obj_boss_copy"
/// @DnDSaveInfo : "objectid" "9228aee3-9d8d-4b36-98ac-9a2ca8d1e6ab"
instance_create_layer(208, 243, "Instances", obj_boss_copy);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 19831DC3
/// @DnDArgument : "x" "208"
/// @DnDArgument : "y" "243"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF666666"
effect_create_above(5, 208, 243, 0, $FF666666 & $ffffff);