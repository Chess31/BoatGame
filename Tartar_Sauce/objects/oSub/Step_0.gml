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