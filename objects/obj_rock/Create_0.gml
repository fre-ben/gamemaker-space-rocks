var _points = 0;

// Access points from game object and store them in scoped variable
if (global.points) {
    _points = global.points;
}

var _increase_intervall = 75;
var _base_speed = random_range(0.3, 1);
var _bonus_speed = floor(_points / _increase_intervall) * 1.4; // Increase rock speed every x points

speed = _base_speed + _bonus_speed;
direction = random(360);
image_angle = random(360);

rotation_speed = random_range(0.2, 1);
rotation_direction = choose(0, 1);
