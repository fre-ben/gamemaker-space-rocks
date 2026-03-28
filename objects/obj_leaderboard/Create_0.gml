// The array that will hold our top 5 structs
global.leaderboard = [];

// Function to generate a default scoreboard
function reset_leaderboard() {
    global.leaderboard = [
        {name: "AAA", score: 0},
        {name: "BBB", score: 0},
        {name: "CCC", score: 0},
        {name: "DDD", score: 0},
        {name: "EEE", score: 0}
    ];
}

// Function to save the current leaderboard to a file
function save_leaderboard() {
    var _json = json_stringify(global.leaderboard);
    var _file = file_text_open_write("leaderboard.json");
    file_text_write_string(_file, _json);
    file_text_close(_file);
}

// Function to load the leaderboard from a file
function load_leaderboard() {
    if (file_exists("leaderboard.json")) {
        var _file = file_text_open_read("leaderboard.json");
        var _json = file_text_read_string(_file);
        file_text_close(_file);
        
        // Parse the JSON back into our array
        global.leaderboard = json_parse(_json);
    } else {
        // If no file exists, create default scores and save them
        reset_leaderboard();
        save_leaderboard();
    }
}


function check_new_score(_player_score) {
    // Check against the lowest score on the board (the 5th entry, index 4)
    var _lowest_score = global.leaderboard[4].score;
    
    if (_player_score > _lowest_score && has_asked_for_name == false) {
        // Trigger the built-in GameMaker popup to ask for a name
        // We store the player's score temporarily so we can save it after they type their name
        global.temp_score = _player_score; 
        async_prompt = get_string_async("New High Score! Enter your initials:", "AAA");
        
        has_asked_for_name = true;
    }
}

// Call the load function immediately when the object is created
load_leaderboard();

// Variable to keep track of our async text prompt
async_prompt = -1;
has_asked_for_name = false;