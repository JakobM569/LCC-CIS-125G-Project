/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 7F9D1201
/// @DnDArgument : "x1" "obj_boss.x-70"
/// @DnDArgument : "y1" "obj_boss.y+40"
/// @DnDArgument : "x2" "obj_boss.x+70"
/// @DnDArgument : "y2" "obj_boss.y+45"
/// @DnDArgument : "value" "boss_health/20*100"
/// @DnDArgument : "backcol" "$FF1A1A1A"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(obj_boss.x-70, obj_boss.y+40, obj_boss.x+70, obj_boss.y+45, boss_health/20*100, $FF1A1A1A & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF1A1A1A>>24) != 0), (($FFFFFFFF>>24) != 0));