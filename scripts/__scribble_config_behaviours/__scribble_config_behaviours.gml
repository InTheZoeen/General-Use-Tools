/// Scribble's macros, used to customise and control behaviour throughout the library
///
/// N.B. You never need to run this script yourself! All of these macros are handled automatically when Scribble is compiled into your project

#macro SCRIBBLE_HASH_NEWLINE                  false  //Replaces hashes (#) with newlines (ASCII chr10) to emulate GMS1's newline behaviour
#macro SCRIBBLE_FIX_ESCAPED_NEWLINES          false  //Replaces newline literals ("\\n") with an actual newline ("\n")
#macro SCRIBBLE_COLORIZE_SPRITES              true   //Whether to use colourization for sprites. This includes [rainbow] and [cycle]
#macro SCRIBBLE_ADD_SPRITE_ORIGINS            false  //Whether to use sprite origins. Setting this to <false> will vertically centre sprites on the line of text
#macro SCRIBBLE_MISSING_CHARACTER             "?"    //Character to use when another character is missing from a font
#macro SCRIBBLE_BGR_COLOR_HEX_CODES           false  //Set to <true> to use GameMaker's #BBGGRR format for in-line hex code colors. <false> uses the web standard #RRGGBB format
#macro SCRIBBLE_INCLUDED_FILES_SUBDIRECTORY   ""     //The directory to look in for font .yy files, relative to the root folder that Included Files are stored in
#macro SCRIBBLE_BOUNDING_BOX_USES_PAGE        true   //Whether to use text element sizes (false) or page sizes (true) for bounding box calculations
#macro SCRIBBLE_TAB_WIDTH                     4      //Width of a horizontal tab, as a number of spaces
#macro SCRIBBLE_FLEXIBLE_WHITESPACE_WIDTH     true   //Controls if spaces and tabs have a fixed, unchanging size. Setting this to <false> will ensure that spaces are always the same size, which is useful for monospaced fonts
#macro SCRIBBLE_PIN_ALIGNMENT_USES_PAGE_SIZE  false  //Sets whether pin alignments use the size of the page for positioning, or the size of the text element (the bounding box across all pages)
#macro SCRIBBLE_ALLOW_TEXT_GETTER             false  //Set to <true> to enable the .get_text() method on text elements. This will apply to all text elements and carries a performance penalty
#macro SCRIBBLE_ALLOW_GLYPH_DATA_GETTER       false  //Set to <true> to enable the .get_glyph_data() method on text elements (and a few other features too). This will apply to all text elements and carries a performance penalty



#region Advanced Features

#macro SCRIBBLE_TICK_SIZE                      (delta_time / 16666) //Animation tick size per step. The default macro (delta_time / 16666) ensures that animations are smooth and consistent at all framerates
#macro SCRIBBLE_DEFAULT_UNIQUE_ID              "default" //Default value to use for text element unique IDs. This is used when no unique ID is specified
#macro SCRIBBLE_VERBOSE                        false     //Enables verbose console output to aid with debugging
#macro SCRIBBLE_BEZIER_ACCURACY                20        //Controls how accurately text fits Beziér curves. Higher is more accurate but slower
#macro SCRIBBLE_NEWLINES_TRIM_LEFT_SPACE       false     //Whether to trim off empty left-hand space when moving a word to a new line. This can cause issues with spritefonts in some situations
#macro SCRIBBLE_NEWLINES_PAD_LEFT_SPACE        true      //Whether to pad extra space left-hand space when moving a word to a new line
#macro SCRIBBLE_FIT_TO_BOX_ITERATIONS          7         //Number of iterations to fit text when using the .fit_to_box() method. Higher values are slower but more accurate
#macro SCRIBBLE_SAFELY_WRAP_TIME               true      //Whether to wrap the internal time value
#macro SCRIBBLE_IGNORE_PAUSE_BEFORE_PAGEBREAK  true      //Disables [pause] events immediately before pagebreaks, though only if there are no other events between the pause and the pagebreak
#macro SCRIBBLE_INCREMENTAL_FREEZE             true      //Whether text models should freeze their vertex buffers one frame after the text model is created. This leads to increased performance, especially with large amounts of text
#macro SCRIBBLE_SPRITEFONT_IGNORE_ORIGIN       false     //Set to <true> to ignore a sprite origin's contribution to its spritefont glyph x/y offsets
#macro SCRIBBLE_SPRITEFONT_LEGACY_HEIGHT       false     //Version 8 uses GameMaker's native spritefont dimensions. Older versions used the tight bounding box leading to narrower lines. Set this macro to <true> to use the tighter legacy behaviour
#macro SCRIBBLE_MSDF_BORDER_TRIM               0         //

#macro SCRIBBLE_COMMAND_TAG_OPEN          ord("[") //Character used to open a command tag. First 127 ASCII chars only
#macro SCRIBBLE_COMMAND_TAG_CLOSE         ord("]") //Character used to close a command tag. First 127 ASCII chars only
#macro SCRIBBLE_COMMAND_TAG_ARGUMENT      ord(",") //Character used to delimit a command parameter inside a command tag. First 127 ASCII chars only

#macro SCRIBBLE_DRAW_RETURNS_SELF         false    // Whether the .draw() method for text element returns <self>. This defaults to <false> to avoid unintentional misuse
#macro SCRIBBLE_BUILD_RETURNS_SELF        false    // Whether the .build() method for text element returns <self>. This defaults to <false> to avoid unintentional misuse
#macro SCRIBBLE_SHOW_WRAP_BOUNDARY        false    //Controls the drawing of a rectangle that indicates the boundaries of the .wrap(), .fit_to_box(), and .scale_to_box() methods

#endregion



#region Warnings

//Various warning messages. Please do not turn these off unless you have to!
#macro SCRIBBLE_WARNING_LEGACY_TYPEWRITER  true

#endregion
