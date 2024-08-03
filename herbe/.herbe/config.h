// dark
/* static const char *background_color = "#2f2f2f"; */
/* static const char *border_color = "#606060"; */
/* static const char *font_color = "#afb8c6"; */

// light
static const char *background_color = "#ffffff";
static const char *border_color = "#d3d3d3";
static const char *font_color = "#564c31";

static const char *font_pattern = "noto sans cjk jp:size=15.2:style=light";
static const unsigned line_spacing = 5;
static const unsigned int padding = 40;

static const unsigned int width = 750;
static const unsigned int border_size = 0;
static const unsigned int pos_x = 25;
static const unsigned int pos_y = 65;

enum corners { TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT };
enum corners corner = TOP_RIGHT;

static const unsigned int duration = 8; /* in seconds */

#define DISMISS_BUTTON Button1
#define ACTION_BUTTON Button3
