draw_text_transformed(900, 10, global.points, 0.4, 0.4, 0);

var _m = floor(timer / 60);
var _s = floor(timer mod 60);

// Add a "0" if seconds are less than 10
var _s_padding = (_s < 10) ? "0" : ""; 

draw_text_transformed(10, 10, string(_m) + ":" + _s_padding + string(_s), 0.4, 0.4, 0);