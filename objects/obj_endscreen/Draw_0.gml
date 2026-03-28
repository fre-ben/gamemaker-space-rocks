draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_endscreen);

draw_text_colour(x, 210, "You died!", 255, 255, 255, 255, 1);

var _player_points = global.points;

draw_set_font(fnt_menu);
draw_text(x, 350, "Final score: " + string(_player_points));

obj_leaderboard.check_new_score(_player_points);

draw_set_halign(fa_left);
draw_set_valign(fa_top);