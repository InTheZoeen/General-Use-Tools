/// @param newFontName

function scribble_super_create(_name)
{
    //Ensure we're initialised
    __scribble_system();
    
    var _font_data = new __scribble_class_font(_name);
    _font_data.superfont = true;
}