with (other)
{
	x = other.x 
    y = other.y 
	 
	global.key = true;
	
	ds_list_add(global.saveroom, other.id)
	instance_destroy(other)
}