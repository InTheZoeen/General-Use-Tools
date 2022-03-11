/// @param font

function __scribble_font_add_from_project(_font)
{
    if (SCRIBBLE_VERBOSE) __scribble_trace("Adding \"", font_get_name(_font), "\" as standard font");
    
    var _name = font_get_name(_font);
    
    if (global.__scribble_default_font == undefined)
    {
        if (SCRIBBLE_VERBOSE) __scribble_trace("Setting default font to \"" + string(_name) + "\"");
        global.__scribble_default_font = _name;
    }
    
    var _global_glyph_bidi_map = global.__scribble_glyph_data.bidi_map;
    
    //Get font info from the runtime
    var _font_info = font_get_info(_font);
    var _info_glyphs_dict = _font_info.glyphs;
    
    //
    var _info_glyph_names = variable_struct_get_names(_info_glyphs_dict);
    var _size = array_length(_info_glyph_names);
    
    //
    var _info_glyphs_array = array_create(array_length(_info_glyph_names));
    var _i = 0;
    repeat(_size)
    {
        var _glyph = _info_glyph_names[_i];
        var _struct = _info_glyphs_dict[$ _glyph];
        _info_glyphs_array[@ _i] = _struct;
        ++_i;
    }
    
    if (SCRIBBLE_VERBOSE) __scribble_trace("Processing font \"" + _name + "\"");
    
    var _asset       = asset_get_index(_name);
    var _texture     = font_get_texture(_asset);
    var _texture_uvs = font_get_uvs(_asset);
    
    var _texture_tw = texture_get_texel_width(_texture);
    var _texture_th = texture_get_texel_height(_texture);
    var _texture_w  = (_texture_uvs[2] - _texture_uvs[0])/_texture_tw; //texture_get_width(_texture);
    var _texture_h  = (_texture_uvs[3] - _texture_uvs[1])/_texture_th; //texture_get_height(_texture);

    if (SCRIBBLE_VERBOSE)
    {
        __scribble_trace("  \"" + _name +"\""
                         + ", asset = " + string(_asset)
                         + ", texture = " + string(_texture)
                         + ", size = " + string(_texture_w) + " x " + string(_texture_h)
                         + ", texel = " + string_format(_texture_tw, 1, 10) + " x " + string_format(_texture_th, 1, 10)
                         + ", uvs = " + string_format(_texture_uvs[0], 1, 10) + "," + string_format(_texture_uvs[1], 1, 10)
                         + " -> " + string_format(_texture_uvs[2], 1, 10) + "," + string_format(_texture_uvs[3], 1, 10));
    }
    
    var _font_data = new __scribble_class_font(_name, _size, false);
    var _font_glyphs_map      = _font_data.glyphs_map;
    var _font_glyph_data_grid = _font_data.glyph_data_grid;
    
    var _i = 0;
    repeat(_size)
    {
        var _glyph_dict = _info_glyphs_array[_i];
        
        var _ord  = _glyph_dict.char;
        var _char = chr(_ord);
        
        if ((_ord >= 0x4E00) && (_ord <= 0x9FFF)) //CJK Unified ideographs block
        {
            var _bidi = __SCRIBBLE_BIDI.ISOLATED;
        }
        else
        {
            var _bidi = _global_glyph_bidi_map[? _ord];
            if (_bidi == undefined) _bidi = __SCRIBBLE_BIDI.L2R;
        }
        
        var _x = _glyph_dict.x;
        var _y = _glyph_dict.y;
        var _w = _glyph_dict.w;
        var _h = _glyph_dict.h;
        
        var _u0 = _x*_texture_tw;
        var _v0 = _y*_texture_th;
        var _u1 = _u0 + _w*_texture_tw;
        var _v1 = _v0 + _h*_texture_th;
        
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.CHARACTER   ] = _char;
        
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.ORD         ] = _ord;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.BIDI        ] = _bidi;
        
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.X_OFFSET    ] = _glyph_dict.offset;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.Y_OFFSET    ] = 0;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.WIDTH       ] = _w;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.HEIGHT      ] = _h;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.FONT_HEIGHT ] = _h;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.SEPARATION  ] = _glyph_dict.shift;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.LEFT_OFFSET ] = -_glyph_dict.offset;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.FONT_SCALE  ] = 1;
                                                              
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.TEXTURE     ] = _texture;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.U0          ] = _u0;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.V0          ] = _v0;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.U1          ] = _u1;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.V1          ] = _v1;
        
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.MSDF_PXRANGE] = undefined;
        _font_glyph_data_grid[# _i, SCRIBBLE_GLYPH.BILINEAR    ] = undefined;
        
        
        _font_glyphs_map[? _ord] = _i;
        
        ++_i;
    }
    
    _font_data.calculate_font_height();
    
    //Check to see if this texture has been resized during compile
    var _GM_scaling = _font_glyph_data_grid[# _font_glyphs_map[? 32], SCRIBBLE_GLYPH.HEIGHT] / _font_info.size;
    if (_GM_scaling < 1)
    {
        __scribble_trace("Warning! Font \"", _name, "\" may have been scaled during compilation (font size = ", _font_info.size, ", space height = ", _font_glyph_data_grid[# _font_glyphs_map[? 32], SCRIBBLE_GLYPH.HEIGHT], ", scaling factor = ", _GM_scaling, ")");
        
        //FIXME - This seems to be inaccurate if the font is scaled down a long way - 20201-11-11  IDE v2.3.6.595  Runtime v2.3.6.464
        //        Good test vector is fnt_noto_chinese with a 2K texture page
        scribble_font_scale(_name, 1/_GM_scaling);
    }
}