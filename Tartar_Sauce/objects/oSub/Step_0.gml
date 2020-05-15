// Treat the 2 key as the turn right control for the submarine.
right = (keyboard_check(ord("2")))

if (right > 0)
{
	heading = heading - 1
    if heading = -1
	{
		heading = 359
	}
}

// Treat the 1 key as the turn left control for the submarine.
left = (keyboard_check(ord("1")))

if (left > 0)
{
	heading = heading + 1
	if heading = 360
	{
		heading = 0
	}
}

// Turn the sprite to match the submarine heading.
image_angle = heading

// Move to boat y
if (oBoat.y > y)
{
	y = y + 1
}
if (oBoat.y < y)
{
	y = y - 1
}

//Move to boat x
if (oBoat.x > x)
{
	x = x + 1
}
if (oBoat.x < x)
{
	x = x - 1
}

// Gameover test

if (place_meeting(x,y, oBoat))
{
	game_restart()
}


// Missile Laucher
var Layer = layer_get_id("Instances")

if (global.charge < 3)
{
	count = count-1
}

if (count < 0) and (global.charge < 3)
{
	global.charge = global.charge + 1
	count = 100
}

if (keyboard_check_pressed(vk_space)) = true and (global.charge > 0)
{
	instance_create_layer(x,y,Layer,oTorpedo)
	global.charge = global.charge - 1
}
