live_auto_call

if (dieBuffer > 0)
	dieBuffer--
else
{
	if (upBuffer > 0)
	{
		gravity = -0.1
		y -= 8
		upBuffer--
	}
	else
		gravity = 1
		
	if (y < -CAMH + 500)
	{
		instance_destroy()
		trace("deleted dieshake by camera")
	}
	x += rangeX
}