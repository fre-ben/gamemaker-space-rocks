// Respawn rocks
repeat(6) {
    var _side = irandom(3); // 0: Top, 1: Bottom, 2: Left, 3: Right
    var _spawn_x, _spawn_y, _dir;
    var _margin = 100; // How far outside the room they start

    switch (_side) {
        case 0: // Top
            _spawn_x = irandom(room_width);
            _spawn_y = -_margin;
            _dir = 270; // Move Down
            break;
        case 1: // Bottom
            _spawn_x = irandom(room_width);
            _spawn_y = room_height + _margin;
            _dir = 90; // Move Up
            break;
        case 2: // Left
            _spawn_x = -_margin;
            _spawn_y = irandom(room_height);
            _dir = 0; // Move Right
            break;
        case 3: // Right
            _spawn_x = room_width + _margin;
            _spawn_y = irandom(room_height);
            _dir = 180; // Move Left
            break;
    }

    var _rock = instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_rock);
    _rock.direction = _dir + random_range(-20, 20);
	_rock.speed = _rock.speed - 0.6;
    _rock.image_alpha = random_range(0.3, 1);
}