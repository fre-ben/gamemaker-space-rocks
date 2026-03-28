var _start_x = room_width / 2;
var _start_y = 100; // Distance from the top of the screen

draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(_start_x, _start_y, "--- TOP 5 SCORES ---");

// Loop through the array and draw each entry
for (var i = 0; i < array_length(global.leaderboard); i++) {
    var _entry = global.leaderboard[i];
    
    // Format: "1. AAA - 500"
    var _display_text = string(i + 1) + ". " + string(_entry.name) + " - " + string(_entry.score);
    
    // Space each line out by 30 pixels
    var _y_pos = _start_y + 40 + (i * 30); 
    draw_text(_start_x, _y_pos, _display_text);
}