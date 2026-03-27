powerup = 5;
instance_destroy(other);

var _rock_count = instance_number(obj_rock);

instance_destroy(obj_rock);
global.points += _rock_count;

// Trigger rock respawn
obj_game.alarm[1] = 120;