//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



CURSES :: 1;
CURSES_H :: 1;

NCURSES_VERSION_MAJOR :: 6;
NCURSES_VERSION_MINOR :: 2;
NCURSES_VERSION_PATCH :: 20200212;

NCURSES_VERSION :: "6.2";

NCURSES_MOUSE_VERSION :: 2;

NCURSES_ENABLE_STDBOOL_H :: 1;

NCURSES_OPAQUE :: 0;
NCURSES_OPAQUE_FORM :: 0;
NCURSES_OPAQUE_MENU :: 0;
NCURSES_OPAQUE_PANEL :: 0;

NCURSES_WATTR_MACROS :: 0;

NCURSES_REENTRANT :: 0;

NCURSES_INTEROP_FUNCS :: 1;

NCURSES_TPARM_VARARGS :: 1;

NCURSES_WCWIDTH_GRAPHICS :: 1;

NCURSES_WIDECHAR :: 0;

TRUE :: 1;

FALSE :: 0;

COLOR_BLACK :: 0;
COLOR_RED :: 1;
COLOR_GREEN :: 2;
COLOR_YELLOW :: 3;
COLOR_BLUE :: 4;
COLOR_MAGENTA :: 5;
COLOR_CYAN :: 6;
COLOR_WHITE :: 7;

ERR :: -1;

OK :: 0;

_SUBWIN :: 0x01;
_ENDLINE :: 0x02;
_FULLWIN :: 0x04;
_SCROLLWIN :: 0x08;
_ISPAD :: 0x10;
_HASMOVED :: 0x20;
_WRAPPED :: 0x40;

_NOCHANGE :: -1;

_NEWINDEX :: -1;

NCURSES_EXT_FUNCS :: 20200212;

NCURSES_SP_FUNCS :: 20200212;

NCURSES_ATTR_SHIFT :: 8;

_XOPEN_CURSES :: 1;

TRACE_DISABLE :: 0x0000;
TRACE_TIMES :: 0x0001;
TRACE_TPUTS :: 0x0002;
TRACE_UPDATE :: 0x0004;
TRACE_MOVE :: 0x0008;
TRACE_CHARPUT :: 0x0010;
TRACE_ORDINARY :: 0x001F;
TRACE_CALLS :: 0x0020;
TRACE_VIRTPUT :: 0x0040;
TRACE_IEVENT :: 0x0080;
TRACE_BITS :: 0x0100;
TRACE_ICALLS :: 0x0200;
TRACE_CCALLS :: 0x0400;
TRACE_DATABASE :: 0x0800;
TRACE_ATTRS :: 0x1000;

TRACE_SHIFT :: 13;

chtype :: u32;
mmask_t :: u32;

NCURSES_BOOL :: u8;

screen :: struct {}
SCREEN :: screen;
WINDOW :: _win_st;

attr_t :: chtype;

ldat :: struct {}

_win_st :: struct {
    _cury:       s16; /* current cursor position */
    _curx:       s16; /* current cursor position */

    _maxy:       s16; /* maximums of x and y, NOT window size */
    _maxx:       s16; /* maximums of x and y, NOT window size */
    _begy:       s16; /* screen coords of upper-left-hand corner */
    _begx:       s16; /* screen coords of upper-left-hand corner */

    _flags:      s16; /* window state flags */

    _attrs:      attr_t; /* current attribute for non-space character */
    _bkgd:       chtype; /* current background char/attribute pair */

    _notimeout:  bool; /* no time out on function-key entry? */
    _clear:      bool; /* consider all data in the window invalid? */
    _leaveok:    bool; /* OK to not reset cursor on exit? */
    _scroll:     bool; /* OK to scroll this window? */
    _idlok:      bool; /* OK to use insert/delete line? */
    _idcok:      bool; /* OK to use insert/delete char? */
    _immed:      bool; /* window in immed mode? (not yet used) */
    _sync:       bool; /* window in sync mode? */
    _use_keypad: bool; /* process function keys into KEY_ symbols? */
    _delay:      s32; /* 0 = nodelay, <0 = blocking, >0 = delay */

    _line:       *ldat; /* the actual line data */

    _regtop:     s16; /* top line of scrolling region */
    _regbottom:  s16; /* bottom line of scrolling region */

    _parx:       s32; /* x coordinate of this window in parent */
    _pary:       s32; /* y coordinate of this window in parent */
    _parent:     *WINDOW; /* pointer to parent if a sub-window */

    /* these are used only if this is a pad */
    pdat :: struct {
        _pad_y:      s16;
        _pad_x:      s16;
        _pad_top:    s16;
        _pad_left:   s16;
        _pad_bottom: s16;
        _pad_right:  s16;
    }

    _pad:        pdat;

    _yoffset:    s16; /* real begy is _begy + _yoffset */
}

/*
* Curses uses a helper function.  Define our type for this to simplify
* extending it for the sp-funcs feature.
*/
NCURSES_OUTC :: #type (a0: s32) -> s32 #c_call;

/*
* Function prototypes.  This is the complete X/Open Curses list of required
* functions.  Those marked `generated' will have sources generated from the
* macro definitions later in this file, in order to satisfy XPG4.2
* requirements.
*/
addch :: (unk0: chtype) -> s32 #foreign libncurses;
addchnstr :: (unk0: *chtype, unk1: s32) -> s32 #foreign libncurses;
addchstr :: (unk0: *chtype) -> s32 #foreign libncurses;
addnstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncurses;
addstr :: (unk0: *u8) -> s32 #foreign libncurses;
attroff :: (unk0: s32) -> s32 #foreign libncurses;
attron :: (unk0: s32) -> s32 #foreign libncurses;
attrset :: (unk0: s32) -> s32 #foreign libncurses;
attr_get :: (unk0: *attr_t, unk1: *s16, unk2: *void) -> s32 #foreign libncurses;
attr_off :: (unk0: attr_t, unk1: *void) -> s32 #foreign libncurses;
attr_on :: (unk0: attr_t, unk1: *void) -> s32 #foreign libncurses;
attr_set :: (unk0: attr_t, unk1: s16, unk2: *void) -> s32 #foreign libncurses;
baudrate :: () -> s32 #foreign libncurses;
beep :: () -> s32 #foreign libncurses;
bkgd :: (unk0: chtype) -> s32 #foreign libncurses;
bkgdset :: (unk0: chtype) -> void #foreign libncurses;
border :: (unk0: chtype, unk1: chtype, unk2: chtype, unk3: chtype, unk4: chtype, unk5: chtype, unk6: chtype, unk7: chtype) -> s32 #foreign libncurses;
box :: (unk0: *WINDOW, unk1: chtype, unk2: chtype) -> s32 #foreign libncurses;
can_change_color :: () -> bool #foreign libncurses;
cbreak :: () -> s32 #foreign libncurses;
chgat :: (unk0: s32, unk1: attr_t, unk2: s16, unk3: *void) -> s32 #foreign libncurses;
clear :: () -> s32 #foreign libncurses;
clearok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
clrtobot :: () -> s32 #foreign libncurses;
clrtoeol :: () -> s32 #foreign libncurses;
color_content :: (unk0: s16, unk1: *s16, unk2: *s16, unk3: *s16) -> s32 #foreign libncurses;
color_set :: (unk0: s16, unk1: *void) -> s32 #foreign libncurses;
COLOR_PAIR :: (unk0: s32) -> s32 #foreign libncurses;
copywin :: (unk0: *WINDOW, unk1: *WINDOW, unk2: s32, unk3: s32, unk4: s32, unk5: s32, unk6: s32, unk7: s32, unk8: s32) -> s32 #foreign libncurses;
curs_set :: (unk0: s32) -> s32 #foreign libncurses;
def_prog_mode :: () -> s32 #foreign libncurses;
def_shell_mode :: () -> s32 #foreign libncurses;
delay_output :: (unk0: s32) -> s32 #foreign libncurses;
delch :: () -> s32 #foreign libncurses;
delscreen :: (unk0: *SCREEN) -> void #foreign libncurses;
delwin :: (unk0: *WINDOW) -> s32 #foreign libncurses;
deleteln :: () -> s32 #foreign libncurses;
derwin :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncurses;
doupdate :: () -> s32 #foreign libncurses;
dupwin :: (unk0: *WINDOW) -> *WINDOW #foreign libncurses;
echo :: () -> s32 #foreign libncurses;
echochar :: (unk0: chtype) -> s32 #foreign libncurses;
erase :: () -> s32 #foreign libncurses;
endwin :: () -> s32 #foreign libncurses;
erasechar :: () -> u8 #foreign libncurses;
filter :: () -> void #foreign libncurses;
flash :: () -> s32 #foreign libncurses;
flushinp :: () -> s32 #foreign libncurses;
getbkgd :: (unk0: *WINDOW) -> chtype #foreign libncurses;
getch :: () -> s32 #foreign libncurses;
getnstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncurses;
getstr :: (unk0: *u8) -> s32 #foreign libncurses;
getwin :: (unk0: *FILE) -> *WINDOW #foreign libncurses;
halfdelay :: (unk0: s32) -> s32 #foreign libncurses;
has_colors :: () -> bool #foreign libncurses;
has_ic :: () -> bool #foreign libncurses;
has_il :: () -> bool #foreign libncurses;
hline :: (unk0: chtype, unk1: s32) -> s32 #foreign libncurses;
idcok :: (unk0: *WINDOW, unk1: bool) -> void #foreign libncurses;
idlok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
immedok :: (unk0: *WINDOW, unk1: bool) -> void #foreign libncurses;
inch :: () -> chtype #foreign libncurses;
inchnstr :: (unk0: *chtype, unk1: s32) -> s32 #foreign libncurses;
inchstr :: (unk0: *chtype) -> s32 #foreign libncurses;
initscr :: () -> *WINDOW #foreign libncurses;
init_color :: (unk0: s16, unk1: s16, unk2: s16, unk3: s16) -> s32 #foreign libncurses;
init_pair :: (unk0: s16, unk1: s16, unk2: s16) -> s32 #foreign libncurses;
innstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncurses;
insch :: (unk0: chtype) -> s32 #foreign libncurses;
insdelln :: (unk0: s32) -> s32 #foreign libncurses;
insertln :: () -> s32 #foreign libncurses;
insnstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncurses;
insstr :: (unk0: *u8) -> s32 #foreign libncurses;
instr :: (unk0: *u8) -> s32 #foreign libncurses;
intrflush :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
isendwin :: () -> bool #foreign libncurses;
is_linetouched :: (unk0: *WINDOW, unk1: s32) -> bool #foreign libncurses;
is_wintouched :: (unk0: *WINDOW) -> bool #foreign libncurses;
keyname :: (unk0: s32) -> *u8 #foreign libncurses;
keypad :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
killchar :: () -> u8 #foreign libncurses;
leaveok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
longname :: () -> *u8 #foreign libncurses;
meta :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
move :: (unk0: s32, unk1: s32) -> s32 #foreign libncurses;
mvaddch :: (unk0: s32, unk1: s32, unk2: chtype) -> s32 #foreign libncurses;
mvaddchnstr :: (unk0: s32, unk1: s32, unk2: *chtype, unk3: s32) -> s32 #foreign libncurses;
mvaddchstr :: (unk0: s32, unk1: s32, unk2: *chtype) -> s32 #foreign libncurses;
mvaddnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncurses;
mvaddstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncurses;
mvchgat :: (unk0: s32, unk1: s32, unk2: s32, unk3: attr_t, unk4: s16, unk5: *void) -> s32 #foreign libncurses;
mvcur :: (unk0: s32, unk1: s32, unk2: s32, unk3: s32) -> s32 #foreign libncurses;
mvdelch :: (unk0: s32, unk1: s32) -> s32 #foreign libncurses;
mvderwin :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
mvgetch :: (unk0: s32, unk1: s32) -> s32 #foreign libncurses;
mvgetnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncurses;
mvgetstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncurses;
mvhline :: (unk0: s32, unk1: s32, unk2: chtype, unk3: s32) -> s32 #foreign libncurses;
mvinch :: (unk0: s32, unk1: s32) -> chtype #foreign libncurses;
mvinchnstr :: (unk0: s32, unk1: s32, unk2: *chtype, unk3: s32) -> s32 #foreign libncurses;
mvinchstr :: (unk0: s32, unk1: s32, unk2: *chtype) -> s32 #foreign libncurses;
mvinnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncurses;
mvinsch :: (unk0: s32, unk1: s32, unk2: chtype) -> s32 #foreign libncurses;
mvinsnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncurses;
mvinsstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncurses;
mvinstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncurses;
mvprintw :: (unk0: s32, unk1: s32, unk2: *u8, __args: ..Any) -> s32 #foreign libncurses;

mvscanw :: (unk0: s32, unk1: s32, unk2: *u8, __args: ..Any) -> s32 #foreign libncurses;

mvvline :: (unk0: s32, unk1: s32, unk2: chtype, unk3: s32) -> s32 #foreign libncurses;
mvwaddch :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype) -> s32 #foreign libncurses;
mvwaddchnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype, unk4: s32) -> s32 #foreign libncurses;
mvwaddchstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype) -> s32 #foreign libncurses;
mvwaddnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncurses;
mvwaddstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncurses;
mvwchgat :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: attr_t, unk5: s16, unk6: *void) -> s32 #foreign libncurses;
mvwdelch :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
mvwgetch :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
mvwgetnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncurses;
mvwgetstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncurses;
mvwhline :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype, unk4: s32) -> s32 #foreign libncurses;
mvwin :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
mvwinch :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> chtype #foreign libncurses;
mvwinchnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype, unk4: s32) -> s32 #foreign libncurses;
mvwinchstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype) -> s32 #foreign libncurses;
mvwinnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncurses;
mvwinsch :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype) -> s32 #foreign libncurses;
mvwinsnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncurses;
mvwinsstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncurses;
mvwinstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncurses;
mvwprintw :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, __args: ..Any) -> s32 #foreign libncurses;

mvwscanw :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, __args: ..Any) -> s32 #foreign libncurses;

mvwvline :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype, unk4: s32) -> s32 #foreign libncurses;
napms :: (unk0: s32) -> s32 #foreign libncurses;
newpad :: (unk0: s32, unk1: s32) -> *WINDOW #foreign libncurses;
newterm :: (unk0: *u8, unk1: *FILE, unk2: *FILE) -> *SCREEN #foreign libncurses;
newwin :: (unk0: s32, unk1: s32, unk2: s32, unk3: s32) -> *WINDOW #foreign libncurses;
nl :: () -> s32 #foreign libncurses;
nocbreak :: () -> s32 #foreign libncurses;
nodelay :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
noecho :: () -> s32 #foreign libncurses;
nonl :: () -> s32 #foreign libncurses;
noqiflush :: () -> void #foreign libncurses;
noraw :: () -> s32 #foreign libncurses;
notimeout :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
overlay :: (unk0: *WINDOW, unk1: *WINDOW) -> s32 #foreign libncurses;
overwrite :: (unk0: *WINDOW, unk1: *WINDOW) -> s32 #foreign libncurses;
pair_content :: (unk0: s16, unk1: *s16, unk2: *s16) -> s32 #foreign libncurses;
PAIR_NUMBER :: (unk0: s32) -> s32 #foreign libncurses;
pechochar :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncurses;
pnoutrefresh :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32, unk5: s32, unk6: s32) -> s32 #foreign libncurses;
prefresh :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32, unk5: s32, unk6: s32) -> s32 #foreign libncurses;
printw :: (unk0: *u8, __args: ..Any) -> s32 #foreign libncurses;

putwin :: (unk0: *WINDOW, unk1: *FILE) -> s32 #foreign libncurses;
qiflush :: () -> void #foreign libncurses;
raw :: () -> s32 #foreign libncurses;
redrawwin :: (unk0: *WINDOW) -> s32 #foreign libncurses;
refresh :: () -> s32 #foreign libncurses;
resetty :: () -> s32 #foreign libncurses;
reset_prog_mode :: () -> s32 #foreign libncurses;
reset_shell_mode :: () -> s32 #foreign libncurses;
ripoffline :: (unk0: s32, unk1: #type (a0: *WINDOW, a1: s32) -> s32 #c_call) -> s32 #foreign libncurses;
savetty :: () -> s32 #foreign libncurses;
scanw :: (unk0: *u8, __args: ..Any) -> s32 #foreign libncurses;

scr_dump :: (unk0: *u8) -> s32 #foreign libncurses;
scr_init :: (unk0: *u8) -> s32 #foreign libncurses;
scrl :: (unk0: s32) -> s32 #foreign libncurses;
scroll :: (unk0: *WINDOW) -> s32 #foreign libncurses;
scrollok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
scr_restore :: (unk0: *u8) -> s32 #foreign libncurses;
scr_set :: (unk0: *u8) -> s32 #foreign libncurses;
setscrreg :: (unk0: s32, unk1: s32) -> s32 #foreign libncurses;
set_term :: (unk0: *SCREEN) -> *SCREEN #foreign libncurses;
slk_attroff :: (unk0: chtype) -> s32 #foreign libncurses;

slk_attron :: (unk0: chtype) -> s32 #foreign libncurses;

slk_attrset :: (unk0: chtype) -> s32 #foreign libncurses;
slk_attr :: () -> attr_t #foreign libncurses;
slk_attr_set :: (unk0: attr_t, unk1: s16, unk2: *void) -> s32 #foreign libncurses;
slk_clear :: () -> s32 #foreign libncurses;
slk_color :: (unk0: s16) -> s32 #foreign libncurses;
slk_init :: (unk0: s32) -> s32 #foreign libncurses;
slk_label :: (unk0: s32) -> *u8 #foreign libncurses;
slk_noutrefresh :: () -> s32 #foreign libncurses;
slk_refresh :: () -> s32 #foreign libncurses;
slk_restore :: () -> s32 #foreign libncurses;
slk_set :: (unk0: s32, unk1: *u8, unk2: s32) -> s32 #foreign libncurses;
slk_touch :: () -> s32 #foreign libncurses;
standout :: () -> s32 #foreign libncurses;
standend :: () -> s32 #foreign libncurses;
start_color :: () -> s32 #foreign libncurses;
subpad :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncurses;
subwin :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncurses;
syncok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncurses;
termattrs :: () -> chtype #foreign libncurses;
termname :: () -> *u8 #foreign libncurses;
timeout :: (unk0: s32) -> void #foreign libncurses;
touchline :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
touchwin :: (unk0: *WINDOW) -> s32 #foreign libncurses;
typeahead :: (unk0: s32) -> s32 #foreign libncurses;
ungetch :: (unk0: s32) -> s32 #foreign libncurses;
untouchwin :: (unk0: *WINDOW) -> s32 #foreign libncurses;
use_env :: (unk0: bool) -> void #foreign libncurses;
use_tioctl :: (unk0: bool) -> void #foreign libncurses;
vidattr :: (unk0: chtype) -> s32 #foreign libncurses;
vidputs :: (unk0: chtype, unk1: NCURSES_OUTC) -> s32 #foreign libncurses;
vline :: (unk0: chtype, unk1: s32) -> s32 #foreign libncurses;

waddch :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncurses;
waddchnstr :: (unk0: *WINDOW, unk1: *chtype, unk2: s32) -> s32 #foreign libncurses;
waddchstr :: (unk0: *WINDOW, unk1: *chtype) -> s32 #foreign libncurses;
waddnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncurses;
waddstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncurses;
wattron :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncurses;
wattroff :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncurses;
wattrset :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncurses;
wattr_get :: (unk0: *WINDOW, unk1: *attr_t, unk2: *s16, unk3: *void) -> s32 #foreign libncurses;
wattr_on :: (unk0: *WINDOW, unk1: attr_t, unk2: *void) -> s32 #foreign libncurses;
wattr_off :: (unk0: *WINDOW, unk1: attr_t, unk2: *void) -> s32 #foreign libncurses;
wattr_set :: (unk0: *WINDOW, unk1: attr_t, unk2: s16, unk3: *void) -> s32 #foreign libncurses;
wbkgd :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncurses;
wbkgdset :: (unk0: *WINDOW, unk1: chtype) -> void #foreign libncurses;
wborder :: (unk0: *WINDOW, unk1: chtype, unk2: chtype, unk3: chtype, unk4: chtype, unk5: chtype, unk6: chtype, unk7: chtype, unk8: chtype) -> s32 #foreign libncurses;
wchgat :: (unk0: *WINDOW, unk1: s32, unk2: attr_t, unk3: s16, unk4: *void) -> s32 #foreign libncurses;
wclear :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wclrtobot :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wclrtoeol :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wcolor_set :: (unk0: *WINDOW, unk1: s16, unk2: *void) -> s32 #foreign libncurses;
wcursyncup :: (unk0: *WINDOW) -> void #foreign libncurses;
wdelch :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wdeleteln :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wechochar :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncurses;
werase :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wgetch :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wgetnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncurses;
wgetstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncurses;
whline :: (unk0: *WINDOW, unk1: chtype, unk2: s32) -> s32 #foreign libncurses;
winch :: (unk0: *WINDOW) -> chtype #foreign libncurses;
winchnstr :: (unk0: *WINDOW, unk1: *chtype, unk2: s32) -> s32 #foreign libncurses;
winchstr :: (unk0: *WINDOW, unk1: *chtype) -> s32 #foreign libncurses;
winnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncurses;
winsch :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncurses;
winsdelln :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncurses;
winsertln :: (unk0: *WINDOW) -> s32 #foreign libncurses;
winsnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncurses;
winsstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncurses;
winstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncurses;
wmove :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
wnoutrefresh :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wprintw :: (unk0: *WINDOW, unk1: *u8, __args: ..Any) -> s32 #foreign libncurses;

wredrawln :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
wrefresh :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wscanw :: (unk0: *WINDOW, unk1: *u8, __args: ..Any) -> s32 #foreign libncurses;

wscrl :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncurses;
wsetscrreg :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
wstandout :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wstandend :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wsyncdown :: (unk0: *WINDOW) -> void #foreign libncurses;
wsyncup :: (unk0: *WINDOW) -> void #foreign libncurses;
wtimeout :: (unk0: *WINDOW, unk1: s32) -> void #foreign libncurses;
wtouchln :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32) -> s32 #foreign libncurses;
wvline :: (unk0: *WINDOW, unk1: chtype, unk2: s32) -> s32 #foreign libncurses;

/*
* These are also declared in <term.h>:
*/
tigetflag :: (unk0: *u8) -> s32 #foreign libncurses;
tigetnum :: (unk0: *u8) -> s32 #foreign libncurses;
tigetstr :: (unk0: *u8) -> *u8 #foreign libncurses;
putp :: (unk0: *u8) -> s32 #foreign libncurses;

tparm :: (unk0: *u8, __args: ..Any) -> *u8 #foreign libncurses;

tiparm :: (unk0: *u8, __args: ..Any) -> *u8 #foreign libncurses;

/*
* These functions are not in X/Open, but we use them in macro definitions:
*/
getattrs :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getcurx :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getcury :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getbegx :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getbegy :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getmaxx :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getmaxy :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getparx :: (unk0: *WINDOW) -> s32 #foreign libncurses;
getpary :: (unk0: *WINDOW) -> s32 #foreign libncurses;

NCURSES_WINDOW_CB :: #type (a0: *WINDOW, a1: *void) -> s32 #c_call;
NCURSES_SCREEN_CB :: #type (a0: *SCREEN, a1: *void) -> s32 #c_call;
is_term_resized :: (unk0: s32, unk1: s32) -> bool #foreign libncurses;
keybound :: (unk0: s32, unk1: s32) -> *u8 #foreign libncurses;
curses_version :: () -> *u8 #foreign libncurses;

assume_default_colors :: (unk0: s32, unk1: s32) -> s32 #foreign libncurses;
define_key :: (unk0: *u8, unk1: s32) -> s32 #foreign libncurses;

get_escdelay :: () -> s32 #foreign libncurses;

key_defined :: (unk0: *u8) -> s32 #foreign libncurses;
keyok :: (unk0: s32, unk1: bool) -> s32 #foreign libncurses;

resize_term :: (unk0: s32, unk1: s32) -> s32 #foreign libncurses;
resizeterm :: (unk0: s32, unk1: s32) -> s32 #foreign libncurses;
set_escdelay :: (unk0: s32) -> s32 #foreign libncurses;
set_tabsize :: (unk0: s32) -> s32 #foreign libncurses;
use_default_colors :: () -> s32 #foreign libncurses;
use_extended_names :: (unk0: bool) -> s32 #foreign libncurses;
use_legacy_coding :: (unk0: s32) -> s32 #foreign libncurses;
use_screen :: (unk0: *SCREEN, unk1: NCURSES_SCREEN_CB, unk2: *void) -> s32 #foreign libncurses;
use_window :: (unk0: *WINDOW, unk1: NCURSES_WINDOW_CB, unk2: *void) -> s32 #foreign libncurses;
wresize :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
nofilter :: () -> void #foreign libncurses;

/*
* These extensions provide access to information stored in the WINDOW even
* when NCURSES_OPAQUE is set:
*/
wgetparent :: (unk0: *WINDOW) -> *WINDOW #foreign libncurses;
is_cleared :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_idcok :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_idlok :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_immedok :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_keypad :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_leaveok :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_nodelay :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_notimeout :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_pad :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_scrollok :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_subwin :: (unk0: *WINDOW) -> bool #foreign libncurses;
is_syncok :: (unk0: *WINDOW) -> bool #foreign libncurses;
wgetdelay :: (unk0: *WINDOW) -> s32 #foreign libncurses;
wgetscrreg :: (unk0: *WINDOW, unk1: *s32, unk2: *s32) -> s32 #foreign libncurses;

NCURSES_OUTC_sp :: #type (a0: *SCREEN, a1: s32) -> s32 #c_call;

new_prescr :: () -> *SCREEN #foreign libncurses;

baudrate_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
beep_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
can_change_color_sp :: (unk0: *SCREEN) -> bool #foreign libncurses;
cbreak_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
curs_set_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
color_content_sp :: (unk0: *SCREEN, unk1: s16, unk2: *s16, unk3: *s16, unk4: *s16) -> s32 #foreign libncurses;
def_prog_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
def_shell_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
delay_output_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
doupdate_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
echo_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
endwin_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
erasechar_sp :: (unk0: *SCREEN) -> u8 #foreign libncurses;
filter_sp :: (unk0: *SCREEN) -> void #foreign libncurses;
flash_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
flushinp_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
getwin_sp :: (unk0: *SCREEN, unk1: *FILE) -> *WINDOW #foreign libncurses;
halfdelay_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
has_colors_sp :: (unk0: *SCREEN) -> bool #foreign libncurses;
has_ic_sp :: (unk0: *SCREEN) -> bool #foreign libncurses;
has_il_sp :: (unk0: *SCREEN) -> bool #foreign libncurses;
init_color_sp :: (unk0: *SCREEN, unk1: s16, unk2: s16, unk3: s16, unk4: s16) -> s32 #foreign libncurses;
init_pair_sp :: (unk0: *SCREEN, unk1: s16, unk2: s16, unk3: s16) -> s32 #foreign libncurses;
intrflush_sp :: (unk0: *SCREEN, unk1: *WINDOW, unk2: bool) -> s32 #foreign libncurses;
isendwin_sp :: (unk0: *SCREEN) -> bool #foreign libncurses;
keyname_sp :: (unk0: *SCREEN, unk1: s32) -> *u8 #foreign libncurses;
killchar_sp :: (unk0: *SCREEN) -> u8 #foreign libncurses;
longname_sp :: (unk0: *SCREEN) -> *u8 #foreign libncurses;
mvcur_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> s32 #foreign libncurses;
napms_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
newpad_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> *WINDOW #foreign libncurses;
newterm_sp :: (unk0: *SCREEN, unk1: *u8, unk2: *FILE, unk3: *FILE) -> *SCREEN #foreign libncurses;
newwin_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncurses;
nl_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
nocbreak_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
noecho_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
nonl_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
noqiflush_sp :: (unk0: *SCREEN) -> void #foreign libncurses;
noraw_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
pair_content_sp :: (unk0: *SCREEN, unk1: s16, unk2: *s16, unk3: *s16) -> s32 #foreign libncurses;
qiflush_sp :: (unk0: *SCREEN) -> void #foreign libncurses;
raw_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
reset_prog_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
reset_shell_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
resetty_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
ripoffline_sp :: (unk0: *SCREEN, unk1: s32, unk2: #type (a0: *WINDOW, a1: s32) -> s32 #c_call) -> s32 #foreign libncurses;
savetty_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
scr_init_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncurses;
scr_restore_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncurses;
scr_set_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncurses;
slk_attroff_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncurses;
slk_attron_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncurses;
slk_attrset_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncurses;
slk_attr_sp :: (unk0: *SCREEN) -> attr_t #foreign libncurses;
slk_attr_set_sp :: (unk0: *SCREEN, unk1: attr_t, unk2: s16, unk3: *void) -> s32 #foreign libncurses;
slk_clear_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
slk_color_sp :: (unk0: *SCREEN, unk1: s16) -> s32 #foreign libncurses;
slk_init_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
slk_label_sp :: (unk0: *SCREEN, unk1: s32) -> *u8 #foreign libncurses;
slk_noutrefresh_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
slk_refresh_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
slk_restore_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
slk_set_sp :: (unk0: *SCREEN, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncurses;
slk_touch_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
start_color_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
termattrs_sp :: (unk0: *SCREEN) -> chtype #foreign libncurses;
termname_sp :: (unk0: *SCREEN) -> *u8 #foreign libncurses;
typeahead_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
ungetch_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
use_env_sp :: (unk0: *SCREEN, unk1: bool) -> void #foreign libncurses;
use_tioctl_sp :: (unk0: *SCREEN, unk1: bool) -> void #foreign libncurses;
vidattr_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncurses;
vidputs_sp :: (unk0: *SCREEN, unk1: chtype, unk2: NCURSES_OUTC_sp) -> s32 #foreign libncurses;

keybound_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> *u8 #foreign libncurses;

assume_default_colors_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
define_key_sp :: (unk0: *SCREEN, unk1: *u8, unk2: s32) -> s32 #foreign libncurses;

get_escdelay_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;

is_term_resized_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> bool #foreign libncurses;
key_defined_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncurses;
keyok_sp :: (unk0: *SCREEN, unk1: s32, unk2: bool) -> s32 #foreign libncurses;
nofilter_sp :: (unk0: *SCREEN) -> void #foreign libncurses;

resize_term_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
resizeterm_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncurses;
set_escdelay_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
set_tabsize_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
use_default_colors_sp :: (unk0: *SCREEN) -> s32 #foreign libncurses;
use_legacy_coding_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;

MEVENT :: struct {
    id:     s16; /* ID to distinguish multiple devices */
    x:      s32; /* event coordinates (character-cell) */
    y:      s32; /* event coordinates (character-cell) */
    z:      s32; /* event coordinates (character-cell) */
    bstate: mmask_t; /* button state bits */
}

has_mouse :: () -> bool #foreign libncurses;
getmouse :: (unk0: *MEVENT) -> s32 #foreign libncurses;
ungetmouse :: (unk0: *MEVENT) -> s32 #foreign libncurses;
mousemask :: (unk0: mmask_t, unk1: *mmask_t) -> mmask_t #foreign libncurses;
wenclose :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> bool #foreign libncurses;
mouseinterval :: (unk0: s32) -> s32 #foreign libncurses;
wmouse_trafo :: (unk0: *WINDOW, unk1: *s32, unk2: *s32, unk3: bool) -> bool #foreign libncurses;
mouse_trafo :: (unk0: *s32, unk1: *s32, unk2: bool) -> bool #foreign libncurses;

has_mouse_sp :: (unk0: *SCREEN) -> bool #foreign libncurses;
getmouse_sp :: (unk0: *SCREEN, unk1: *MEVENT) -> s32 #foreign libncurses;
ungetmouse_sp :: (unk0: *SCREEN, unk1: *MEVENT) -> s32 #foreign libncurses;
mousemask_sp :: (unk0: *SCREEN, unk1: mmask_t, unk2: *mmask_t) -> mmask_t #foreign libncurses;
mouseinterval_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;

/* other non-XSI functions */
mcprint :: (unk0: *u8, unk1: s32) -> s32 #foreign libncurses;
has_key :: (unk0: s32) -> s32 #foreign libncurses;

has_key_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncurses;
mcprint_sp :: (unk0: *SCREEN, unk1: *u8, unk2: s32) -> s32 #foreign libncurses;

curses_trace :: (unk0: u32) -> u32 #foreign libncurses;

exit_curses :: (unk0: s32) -> void #foreign libncurses;

#scope_file

libncurses :: #foreign_system_library "libncurses";
