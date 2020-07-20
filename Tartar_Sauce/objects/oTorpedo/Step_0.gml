//move forward
x = x + (gotowards*3)

explode = explode + 1

if (explode > 200)
{
	instance_destroy(self)
}