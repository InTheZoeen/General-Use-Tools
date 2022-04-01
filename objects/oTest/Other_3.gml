ini_open("settings.ini");
ini_write_real("toggles","audToggle",global.audToggle);
ini_write_real("toggles","globalTimer",global.globalTimer);
ini_close();