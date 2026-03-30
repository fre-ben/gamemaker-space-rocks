var _id = async_load[? "id"];

// Check if the dialog that just closed is the one we triggered
if (_id == async_prompt) {
    if (async_load[? "status"]) { // The user clicked "OK"
        var _player_name = async_load[? "result"];
        
        // 1. Add the new score and name to the array
        array_push(global.leaderboard, {name: _shortened_player_name, score: global.temp_score});
        
        // 2. Sort the array from highest score to lowest
        array_sort(global.leaderboard, function(_a, _b) {
            return _b.score - _a.score; // Descending order
        });
        
        // 3. Remove the 6th entry so we only keep the Top 5
        array_resize(global.leaderboard, 5);
        
        // 4. Save the new list to the JSON file
        save_leaderboard();
    }
    
    // Reset the prompt ID so we don't accidentally catch other async events
    async_prompt = -1;
}