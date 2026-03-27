if keyboard_check(vk_up)
{
        motion_add(image_angle, 0.1);
}

if keyboard_check(vk_left)
{
        image_angle += 3.6;
}

if keyboard_check(vk_right)
{
        image_angle -= 3.6;
}

move_wrap(true, true, 0)


// Always count down the cooldown if it's above 0
if (bullet_cooldown > 0) 
{
    bullet_cooldown -= 1;
}

if (keyboard_check(vk_alt) && bullet_cooldown <= 0)
{
	var _bullet_1 = instance_create_layer(x, y, "Instances", obj_bullet);
	
	if (powerup == 4)
	{
		_bullet_1.image_blend = choose(c_aqua, c_blue, c_red, c_yellow, c_fuchsia, c_green);
	}

	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.6, 1.2));
	
	if (powerup == 1)
	{
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 10
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 10
	}
	
    
    bullet_cooldown = (powerup != 4) ? 10 : 5; 
}