/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 208FD6AF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF0000FF"
effect_create_above(3, x + 0, y + 0, 0, $FF0000FF & $ffffff);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 59AEBF4D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FFFFA628"
effect_create_above(3, x + 0, y + 0, 0, $FFFFA628 & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 63D529BF
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 26801598
/// @DnDApplyTo : other
with(other) instance_destroy();