

right = (keyboard_check(vk_right))

if (right > 0)
{
heading = heading - 1
}

left = (keyboard_check(vk_left))

if (left > 0)
{
heading = heading + 1
}

image_angle = heading

if heading > 360
{
	heading = heading - 360
}

if heading < 0
{
	heading = heading + 360	
}

up = (keyboard_check(vk_up))
down = (keyboard_check(vk_down))

if (up > 0)
{
	motor_power = motor_power + 1
}

if (down > 0)
{
	motor_power = motor_power - 1
}
boat_speed = motor_power * 0.2


show_debug_message(dsin(heading)*boat_speed)

x = x + dcos(heading)*boat_speed


y = y - dsin(heading)*boat_speed


