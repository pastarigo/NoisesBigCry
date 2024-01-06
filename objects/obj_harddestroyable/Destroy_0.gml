repeat 6
	with (instance_create(x + 32, y + 32, obj_debris))
		image_blend = c_dkgray
ds_list_add(global.saveroom, id);
