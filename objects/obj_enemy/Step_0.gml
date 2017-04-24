/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 18CC8FCC
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "80d02ab6-5f18-41b6-999f-310531f82510"
var l18CC8FCC_0 = false;
l18CC8FCC_0 = instance_exists(obj_player);
if(l18CC8FCC_0)
{
	

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5E075604
	/// @DnDParent : 18CC8FCC
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	
	{
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6F4646DE
	/// @DnDParent : 18CC8FCC
	/// @DnDArgument : "speed" "spd"
	
	{
		speed = spd;
	}


}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 51848599
/// @DnDArgument : "angle" "direction"

{
	image_angle = direction;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A193075
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7FBFC3F8
	/// @DnDParent : 7A193075
	instance_destroy();


}

