/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 23D4ABB5
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 13974C34
/// @DnDArgument : "x1" "camera_get_view_x(view_camera[0])"
/// @DnDArgument : "y1" "camera_get_view_y(view_camera[0])"
/// @DnDArgument : "x2" "camera_get_view_x(view_camera[0]) + 150"
/// @DnDArgument : "y2" "camera_get_view_y(view_camera[0]) + 20"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFFF0000"
/// @DnDArgument : "maxcol" "$FF0000FF"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + 150, camera_get_view_y(view_camera[0]) + 20, __dnd_health, $FFFFFFFF, $FFFF0000 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));