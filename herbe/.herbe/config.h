// dark
/* static const char *background_color = "#2f343f"; */
/* static const char *border_color = "#666d73"; */
/* static const char *font_color = "#d3dae3"; */

// light
static const char *background_color = "#fffcf1";
static const char *border_color = "#d3d3d3";
static const char *font_color = "#564c31";

static const char *font_pattern = "ibm plex mono:style=medium:size=15.5";
static const unsigned line_spacing = 5;
static const unsigned int padding = 40;

static const unsigned int width = 750;
static const unsigned int border_size = 2;
static const unsigned int pos_x = 25;
static const unsigned int pos_y = 65;

enum corners { TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT };
enum corners corner = TOP_RIGHT;

static const unsigned int duration = 8; /* in seconds */

#define DISMISS_BUTTON Button1
#define ACTION_BUTTON Button3
