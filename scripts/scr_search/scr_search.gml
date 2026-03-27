function get_objects_by_prefix(_prefix) {
    var _results = [];
    var _len = string_length(_prefix);
    
    // Iterate through all possible object indices
    var _i = 0;
    while (object_exists(_i)) {
        var _name = object_get_name(_i);
        
        // Check if the name starts with our prefix
        if (string_copy(_name, 1, _len) == _prefix) {
            array_push(_results, _i);
        }
        _i++;
    }
    return  _results;
}