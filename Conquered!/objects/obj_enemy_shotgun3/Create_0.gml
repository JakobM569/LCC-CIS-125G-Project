/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6FC2BF95
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0478130E
/// @DnDArgument : "x" "obj_player.x+20"
/// @DnDArgument : "y" "obj_player.y"
direction = point_direction(x, y, obj_player.x+20, obj_player.y);