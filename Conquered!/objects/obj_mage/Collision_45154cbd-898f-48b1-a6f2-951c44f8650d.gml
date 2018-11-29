/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E4B3DC1
/// @DnDArgument : "var" "stun"
if(stun == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19C2E79D
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "stun"
	stun = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 73D37FD3
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "spriteind" "spr_red_enemy_hit"
	/// @DnDSaveInfo : "spriteind" "2f19c064-9062-4096-ad9d-deab7aee7a69"
	sprite_index = spr_red_enemy_hit;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 18A0248A
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7BEABACE
	/// @DnDParent : 6E4B3DC1
	/// @DnDArgument : "steps" "10"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 10);

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 4221136D
	/// @DnDParent : 6E4B3DC1
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health == 0)
	{
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 5205433E
		/// @DnDParent : 4221136D
		/// @DnDArgument : "x" "-10"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "50"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "5"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "1"
		/// @DnDArgument : "color" "$FFCCCCCC"
		effect_create_above(5, x + -10, y + 50, 1, $FFCCCCCC & $ffffff);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0C6F5B58
		/// @DnDParent : 4221136D
		/// @DnDArgument : "xpos" "-10"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "20"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_heart"
		/// @DnDSaveInfo : "objectid" "646f3a58-eebb-4e7e-9342-0c8c4bd8143b"
		instance_create_layer(x + -10, y + 20, "Instances", obj_heart);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 74795735
		/// @DnDParent : 4221136D
		instance_destroy();
	}
}