//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



CURSES :: 1;
CURSES_H :: 1;

NCURSES_VERSION_MAJOR :: 6;
NCURSES_VERSION_MINOR :: 3;
NCURSES_VERSION_PATCH :: 20211021;

NCURSES_VERSION :: "6.3";

NCURSES_MOUSE_VERSION :: 2;

NCURSES_ENABLE_STDBOOL_H :: 1;

exit_curses :: (unk0: s32) -> void #foreign libncursesw;

curses_trace :: (unk0: u32) -> u32 #foreign libncursesw;

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

mcprint_sp :: (unk0: *SCREEN, unk1: *u8, unk2: s32) -> s32 #foreign libncursesw;

WA_NORMAL :: A_NORMAL;

has_key_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

has_key :: (unk0: s32) -> s32 #foreign libncursesw;

/* other non-XSI functions */
mcprint :: (unk0: *u8, unk1: s32) -> s32 #foreign libncursesw;

mouseinterval_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

mousemask_sp :: (unk0: *SCREEN, unk1: mmask_t, unk2: *mmask_t) -> mmask_t #foreign libncursesw;

ungetmouse_sp :: (unk0: *SCREEN, unk1: *MEVENT) -> s32 #foreign libncursesw;

getmouse_sp :: (unk0: *SCREEN, unk1: *MEVENT) -> s32 #foreign libncursesw;

has_mouse_sp :: (unk0: *SCREEN) -> bool #foreign libncursesw;

mouse_trafo :: (unk0: *s32, unk1: *s32, unk2: bool) -> bool #foreign libncursesw;

wmouse_trafo :: (unk0: *WINDOW, unk1: *s32, unk2: *s32, unk3: bool) -> bool #foreign libncursesw;

mouseinterval :: (unk0: s32) -> s32 #foreign libncursesw;

wenclose :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> bool #foreign libncursesw;

mousemask :: (unk0: mmask_t, unk1: *mmask_t) -> mmask_t #foreign libncursesw;

ungetmouse :: (unk0: *MEVENT) -> s32 #foreign libncursesw;

getmouse :: (unk0: *MEVENT) -> s32 #foreign libncursesw;

has_mouse :: () -> bool #foreign libncursesw;

COLOR_BLACK :: 0;
COLOR_RED :: 1;
COLOR_GREEN :: 2;
COLOR_YELLOW :: 3;
COLOR_BLUE :: 4;
COLOR_MAGENTA :: 5;
COLOR_CYAN :: 6;
COLOR_WHITE :: 7;

MEVENT :: struct {
    id:     s16; /* ID to distinguish multiple devices */
    x:      s32; /* event coordinates (character-cell) */
    y:      s32; /* event coordinates (character-cell) */
    z:      s32; /* event coordinates (character-cell) */
    bstate: mmask_t; /* button state bits */
}

use_legacy_coding_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

use_default_colors_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

set_tabsize_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

set_escdelay_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

resizeterm_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

resize_term_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

reset_color_pairs_sp :: (unk0: *SCREEN) -> void #foreign libncursesw;

nofilter_sp :: (unk0: *SCREEN) -> void #foreign libncursesw;

keyok_sp :: (unk0: *SCREEN, unk1: s32, unk2: bool) -> s32 #foreign libncursesw;

key_defined_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncursesw;

is_term_resized_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> bool #foreign libncursesw;

init_extended_pair_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32, unk3: s32) -> s32 #foreign libncursesw;

init_extended_color_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> s32 #foreign libncursesw;

free_pair_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

find_pair_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

get_escdelay_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

extended_slk_color_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

extended_pair_content_sp :: (unk0: *SCREEN, unk1: s32, unk2: *s32, unk3: *s32) -> s32 #foreign libncursesw;

extended_color_content_sp :: (unk0: *SCREEN, unk1: s32, unk2: *s32, unk3: *s32, unk4: *s32) -> s32 #foreign libncursesw;

define_key_sp :: (unk0: *SCREEN, unk1: *u8, unk2: s32) -> s32 #foreign libncursesw;

assume_default_colors_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

alloc_pair_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

keybound_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> *u8 #foreign libncursesw;

vidputs_sp :: (unk0: *SCREEN, unk1: chtype, unk2: NCURSES_OUTC_sp) -> s32 #foreign libncursesw;

vidattr_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncursesw;

use_tioctl_sp :: (unk0: *SCREEN, unk1: bool) -> void #foreign libncursesw;

use_env_sp :: (unk0: *SCREEN, unk1: bool) -> void #foreign libncursesw;

ungetch_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

typeahead_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

termname_sp :: (unk0: *SCREEN) -> *u8 #foreign libncursesw;

termattrs_sp :: (unk0: *SCREEN) -> chtype #foreign libncursesw;

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

NCURSES_EXT_FUNCS :: 20211021;

NCURSES_SP_FUNCS :: 20211021;

start_color_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

NCURSES_ATTR_SHIFT :: 8;

A_NORMAL :: 1 - 1;

slk_touch_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

slk_set_sp :: (unk0: *SCREEN, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncursesw;

slk_restore_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

slk_refresh_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

slk_noutrefresh_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

slk_label_sp :: (unk0: *SCREEN, unk1: s32) -> *u8 #foreign libncursesw;

slk_init_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

slk_color_sp :: (unk0: *SCREEN, unk1: s16) -> s32 #foreign libncursesw;

slk_clear_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

slk_attr_set_sp :: (unk0: *SCREEN, unk1: attr_t, unk2: s16, unk3: *void) -> s32 #foreign libncursesw;

slk_attr_sp :: (unk0: *SCREEN) -> attr_t #foreign libncursesw;

slk_attrset_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncursesw;

slk_attron_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncursesw;

slk_attroff_sp :: (unk0: *SCREEN, unk1: chtype) -> s32 #foreign libncursesw;

scr_set_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncursesw;

scr_restore_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncursesw;

scr_init_sp :: (unk0: *SCREEN, unk1: *u8) -> s32 #foreign libncursesw;

savetty_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

ripoffline_sp :: (unk0: *SCREEN, unk1: s32, unk2: #type (a0: *WINDOW, a1: s32) -> s32 #c_call) -> s32 #foreign libncursesw;

resetty_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

reset_shell_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

reset_prog_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

raw_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

qiflush_sp :: (unk0: *SCREEN) -> void #foreign libncursesw;

pair_content_sp :: (unk0: *SCREEN, unk1: s16, unk2: *s16, unk3: *s16) -> s32 #foreign libncursesw;

noraw_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

noqiflush_sp :: (unk0: *SCREEN) -> void #foreign libncursesw;

nonl_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

noecho_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

nocbreak_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

nl_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

newwin_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncursesw;

newterm_sp :: (unk0: *SCREEN, unk1: *u8, unk2: *FILE, unk3: *FILE) -> *SCREEN #foreign libncursesw;

newpad_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32) -> *WINDOW #foreign libncursesw;

napms_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

mvcur_sp :: (unk0: *SCREEN, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> s32 #foreign libncursesw;

longname_sp :: (unk0: *SCREEN) -> *u8 #foreign libncursesw;

killchar_sp :: (unk0: *SCREEN) -> u8 #foreign libncursesw;

keyname_sp :: (unk0: *SCREEN, unk1: s32) -> *u8 #foreign libncursesw;

isendwin_sp :: (unk0: *SCREEN) -> bool #foreign libncursesw;

intrflush_sp :: (unk0: *SCREEN, unk1: *WINDOW, unk2: bool) -> s32 #foreign libncursesw;

init_pair_sp :: (unk0: *SCREEN, unk1: s16, unk2: s16, unk3: s16) -> s32 #foreign libncursesw;

init_color_sp :: (unk0: *SCREEN, unk1: s16, unk2: s16, unk3: s16, unk4: s16) -> s32 #foreign libncursesw;

has_il_sp :: (unk0: *SCREEN) -> bool #foreign libncursesw;

has_ic_sp :: (unk0: *SCREEN) -> bool #foreign libncursesw;

has_colors_sp :: (unk0: *SCREEN) -> bool #foreign libncursesw;

halfdelay_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

getwin_sp :: (unk0: *SCREEN, unk1: *FILE) -> *WINDOW #foreign libncursesw;

flushinp_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

flash_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

filter_sp :: (unk0: *SCREEN) -> void #foreign libncursesw;

erasechar_sp :: (unk0: *SCREEN) -> u8 #foreign libncursesw;

endwin_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

echo_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

doupdate_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

delay_output_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

def_shell_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

def_prog_mode_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

color_content_sp :: (unk0: *SCREEN, unk1: s16, unk2: *s16, unk3: *s16, unk4: *s16) -> s32 #foreign libncursesw;

curs_set_sp :: (unk0: *SCREEN, unk1: s32) -> s32 #foreign libncursesw;

cbreak_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

can_change_color_sp :: (unk0: *SCREEN) -> bool #foreign libncursesw;

beep_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

baudrate_sp :: (unk0: *SCREEN) -> s32 #foreign libncursesw;

new_prescr :: () -> *SCREEN #foreign libncursesw;

NCURSES_OUTC_sp :: #type (a0: *SCREEN, a1: s32) -> s32 #c_call;

wgetscrreg :: (unk0: *WINDOW, unk1: *s32, unk2: *s32) -> s32 #foreign libncursesw;

wgetdelay :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

is_syncok :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_subwin :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_scrollok :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_pad :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_notimeout :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_nodelay :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_leaveok :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_keypad :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_immedok :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_idlok :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_idcok :: (unk0: *WINDOW) -> bool #foreign libncursesw;

is_cleared :: (unk0: *WINDOW) -> bool #foreign libncursesw;

/*
* These extensions provide access to information stored in the WINDOW even
* when NCURSES_OPAQUE is set:
*/
wgetparent :: (unk0: *WINDOW) -> *WINDOW #foreign libncursesw;

nofilter :: () -> void #foreign libncursesw;

wresize :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

use_window :: (unk0: *WINDOW, unk1: NCURSES_WINDOW_CB, unk2: *void) -> s32 #foreign libncursesw;

use_screen :: (unk0: *SCREEN, unk1: NCURSES_SCREEN_CB, unk2: *void) -> s32 #foreign libncursesw;

use_legacy_coding :: (unk0: s32) -> s32 #foreign libncursesw;

use_extended_names :: (unk0: bool) -> s32 #foreign libncursesw;

use_default_colors :: () -> s32 #foreign libncursesw;

set_tabsize :: (unk0: s32) -> s32 #foreign libncursesw;

set_escdelay :: (unk0: s32) -> s32 #foreign libncursesw;

resizeterm :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;

resize_term :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;

reset_color_pairs :: () -> void #foreign libncursesw;

keyok :: (unk0: s32, unk1: bool) -> s32 #foreign libncursesw;

key_defined :: (unk0: *u8) -> s32 #foreign libncursesw;

init_extended_pair :: (unk0: s32, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

init_extended_color :: (unk0: s32, unk1: s32, unk2: s32, unk3: s32) -> s32 #foreign libncursesw;

get_escdelay :: () -> s32 #foreign libncursesw;

free_pair :: (unk0: s32) -> s32 #foreign libncursesw;

find_pair :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;

extended_slk_color :: (unk0: s32) -> s32 #foreign libncursesw;

extended_pair_content :: (unk0: s32, unk1: *s32, unk2: *s32) -> s32 #foreign libncursesw;

extended_color_content :: (unk0: s32, unk1: *s32, unk2: *s32, unk3: *s32) -> s32 #foreign libncursesw;

define_key :: (unk0: *u8, unk1: s32) -> s32 #foreign libncursesw;

assume_default_colors :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;

alloc_pair :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;

curses_version :: () -> *u8 #foreign libncursesw;

keybound :: (unk0: s32, unk1: s32) -> *u8 #foreign libncursesw;

is_term_resized :: (unk0: s32, unk1: s32) -> bool #foreign libncursesw;

NCURSES_SCREEN_CB :: #type (a0: *SCREEN, a1: *void) -> s32 #c_call;

NCURSES_WINDOW_CB :: #type (a0: *WINDOW, a1: *void) -> s32 #c_call;

getpary :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

getparx :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

_XOPEN_CURSES :: 1;

getmaxy :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

getmaxx :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

getbegy :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

getbegx :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

getcury :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

getcurx :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

/*
* These functions are not in X/Open, but we use them in macro definitions:
*/
getattrs :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

tiparm :: (unk0: *u8, __args: ..Any) -> *u8 #foreign libncursesw;

tparm :: (unk0: *u8, __args: ..Any) -> *u8 #foreign libncursesw;

putp :: (unk0: *u8) -> s32 #foreign libncursesw;

tigetstr :: (unk0: *u8) -> *u8 #foreign libncursesw;

tigetnum :: (unk0: *u8) -> s32 #foreign libncursesw;

/*
* These are also declared in <term.h>:
*/
tigetflag :: (unk0: *u8) -> s32 #foreign libncursesw;

wvline :: (unk0: *WINDOW, unk1: chtype, unk2: s32) -> s32 #foreign libncursesw;

wtouchln :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32) -> s32 #foreign libncursesw;

wtimeout :: (unk0: *WINDOW, unk1: s32) -> void #foreign libncursesw;

wsyncup :: (unk0: *WINDOW) -> void #foreign libncursesw;

wsyncdown :: (unk0: *WINDOW) -> void #foreign libncursesw;

wstandend :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

wstandout :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

wsetscrreg :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

wscrl :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncursesw;

wscanw :: (unk0: *WINDOW, unk1: *u8, __args: ..Any) -> s32 #foreign libncursesw;

wrefresh :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

wredrawln :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

wprintw :: (unk0: *WINDOW, unk1: *u8, __args: ..Any) -> s32 #foreign libncursesw;

wnoutrefresh :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

wmove :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;

winstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncursesw;

winsstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncursesw;

winsnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncursesw;

winsertln :: (unk0: *WINDOW) -> s32 #foreign libncursesw;

winsdelln :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncursesw;

winsch :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncursesw;

winnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncursesw;

winchstr :: (unk0: *WINDOW, unk1: *chtype) -> s32 #foreign libncursesw;

winchnstr :: (unk0: *WINDOW, unk1: *chtype, unk2: s32) -> s32 #foreign libncursesw;

winch :: (unk0: *WINDOW) -> chtype #foreign libncursesw;

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
TRACE_MAXIMUM :: (1 << TRACE_SHIFT) - 1;

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
addch :: (unk0: chtype) -> s32 #foreign libncursesw;
addchnstr :: (unk0: *chtype, unk1: s32) -> s32 #foreign libncursesw;
addchstr :: (unk0: *chtype) -> s32 #foreign libncursesw;
addnstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncursesw;
addstr :: (unk0: *u8) -> s32 #foreign libncursesw;
attroff :: (unk0: s32) -> s32 #foreign libncursesw;
attron :: (unk0: s32) -> s32 #foreign libncursesw;
attrset :: (unk0: s32) -> s32 #foreign libncursesw;
attr_get :: (unk0: *attr_t, unk1: *s16, unk2: *void) -> s32 #foreign libncursesw;
attr_off :: (unk0: attr_t, unk1: *void) -> s32 #foreign libncursesw;
attr_on :: (unk0: attr_t, unk1: *void) -> s32 #foreign libncursesw;
attr_set :: (unk0: attr_t, unk1: s16, unk2: *void) -> s32 #foreign libncursesw;
baudrate :: () -> s32 #foreign libncursesw;
beep :: () -> s32 #foreign libncursesw;
bkgd :: (unk0: chtype) -> s32 #foreign libncursesw;
bkgdset :: (unk0: chtype) -> void #foreign libncursesw;
border :: (unk0: chtype, unk1: chtype, unk2: chtype, unk3: chtype, unk4: chtype, unk5: chtype, unk6: chtype, unk7: chtype) -> s32 #foreign libncursesw;
box :: (unk0: *WINDOW, unk1: chtype, unk2: chtype) -> s32 #foreign libncursesw;
can_change_color :: () -> bool #foreign libncursesw;
cbreak :: () -> s32 #foreign libncursesw;
chgat :: (unk0: s32, unk1: attr_t, unk2: s16, unk3: *void) -> s32 #foreign libncursesw;
clear :: () -> s32 #foreign libncursesw;
clearok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
clrtobot :: () -> s32 #foreign libncursesw;
clrtoeol :: () -> s32 #foreign libncursesw;
color_content :: (unk0: s16, unk1: *s16, unk2: *s16, unk3: *s16) -> s32 #foreign libncursesw;
color_set :: (unk0: s16, unk1: *void) -> s32 #foreign libncursesw;
COLOR_PAIR :: (unk0: s32) -> s32 #foreign libncursesw;
copywin :: (unk0: *WINDOW, unk1: *WINDOW, unk2: s32, unk3: s32, unk4: s32, unk5: s32, unk6: s32, unk7: s32, unk8: s32) -> s32 #foreign libncursesw;
curs_set :: (unk0: s32) -> s32 #foreign libncursesw;
def_prog_mode :: () -> s32 #foreign libncursesw;
def_shell_mode :: () -> s32 #foreign libncursesw;
delay_output :: (unk0: s32) -> s32 #foreign libncursesw;
delch :: () -> s32 #foreign libncursesw;
delscreen :: (unk0: *SCREEN) -> void #foreign libncursesw;
delwin :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
deleteln :: () -> s32 #foreign libncursesw;
derwin :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncursesw;
doupdate :: () -> s32 #foreign libncursesw;
dupwin :: (unk0: *WINDOW) -> *WINDOW #foreign libncursesw;
echo :: () -> s32 #foreign libncursesw;
echochar :: (unk0: chtype) -> s32 #foreign libncursesw;
erase :: () -> s32 #foreign libncursesw;
endwin :: () -> s32 #foreign libncursesw;
erasechar :: () -> u8 #foreign libncursesw;
filter :: () -> void #foreign libncursesw;
flash :: () -> s32 #foreign libncursesw;
flushinp :: () -> s32 #foreign libncursesw;
getbkgd :: (unk0: *WINDOW) -> chtype #foreign libncursesw;
getch :: () -> s32 #foreign libncursesw;
getnstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncursesw;
getstr :: (unk0: *u8) -> s32 #foreign libncursesw;
getwin :: (unk0: *FILE) -> *WINDOW #foreign libncursesw;
halfdelay :: (unk0: s32) -> s32 #foreign libncursesw;
has_colors :: () -> bool #foreign libncursesw;
has_ic :: () -> bool #foreign libncursesw;
has_il :: () -> bool #foreign libncursesw;
hline :: (unk0: chtype, unk1: s32) -> s32 #foreign libncursesw;
idcok :: (unk0: *WINDOW, unk1: bool) -> void #foreign libncursesw;
idlok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
immedok :: (unk0: *WINDOW, unk1: bool) -> void #foreign libncursesw;
inch :: () -> chtype #foreign libncursesw;
inchnstr :: (unk0: *chtype, unk1: s32) -> s32 #foreign libncursesw;
inchstr :: (unk0: *chtype) -> s32 #foreign libncursesw;
initscr :: () -> *WINDOW #foreign libncursesw;
init_color :: (unk0: s16, unk1: s16, unk2: s16, unk3: s16) -> s32 #foreign libncursesw;
init_pair :: (unk0: s16, unk1: s16, unk2: s16) -> s32 #foreign libncursesw;
innstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncursesw;
insch :: (unk0: chtype) -> s32 #foreign libncursesw;
insdelln :: (unk0: s32) -> s32 #foreign libncursesw;
insertln :: () -> s32 #foreign libncursesw;
insnstr :: (unk0: *u8, unk1: s32) -> s32 #foreign libncursesw;
insstr :: (unk0: *u8) -> s32 #foreign libncursesw;
instr :: (unk0: *u8) -> s32 #foreign libncursesw;
intrflush :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
isendwin :: () -> bool #foreign libncursesw;
is_linetouched :: (unk0: *WINDOW, unk1: s32) -> bool #foreign libncursesw;
is_wintouched :: (unk0: *WINDOW) -> bool #foreign libncursesw;
keyname :: (unk0: s32) -> *u8 #foreign libncursesw;
keypad :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
killchar :: () -> u8 #foreign libncursesw;
leaveok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
longname :: () -> *u8 #foreign libncursesw;
meta :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
move :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;
mvaddch :: (unk0: s32, unk1: s32, unk2: chtype) -> s32 #foreign libncursesw;
mvaddchnstr :: (unk0: s32, unk1: s32, unk2: *chtype, unk3: s32) -> s32 #foreign libncursesw;
mvaddchstr :: (unk0: s32, unk1: s32, unk2: *chtype) -> s32 #foreign libncursesw;
mvaddnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncursesw;
mvaddstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncursesw;
mvchgat :: (unk0: s32, unk1: s32, unk2: s32, unk3: attr_t, unk4: s16, unk5: *void) -> s32 #foreign libncursesw;
mvcur :: (unk0: s32, unk1: s32, unk2: s32, unk3: s32) -> s32 #foreign libncursesw;
mvdelch :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;
mvderwin :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;
mvgetch :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;
mvgetnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncursesw;
mvgetstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncursesw;
mvhline :: (unk0: s32, unk1: s32, unk2: chtype, unk3: s32) -> s32 #foreign libncursesw;
mvinch :: (unk0: s32, unk1: s32) -> chtype #foreign libncursesw;
mvinchnstr :: (unk0: s32, unk1: s32, unk2: *chtype, unk3: s32) -> s32 #foreign libncursesw;
mvinchstr :: (unk0: s32, unk1: s32, unk2: *chtype) -> s32 #foreign libncursesw;
mvinnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncursesw;
mvinsch :: (unk0: s32, unk1: s32, unk2: chtype) -> s32 #foreign libncursesw;
mvinsnstr :: (unk0: s32, unk1: s32, unk2: *u8, unk3: s32) -> s32 #foreign libncursesw;
mvinsstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncursesw;
mvinstr :: (unk0: s32, unk1: s32, unk2: *u8) -> s32 #foreign libncursesw;
mvprintw :: (unk0: s32, unk1: s32, unk2: *u8, __args: ..Any) -> s32 #foreign libncursesw;

mvscanw :: (unk0: s32, unk1: s32, unk2: *u8, __args: ..Any) -> s32 #foreign libncursesw;

mvvline :: (unk0: s32, unk1: s32, unk2: chtype, unk3: s32) -> s32 #foreign libncursesw;
mvwaddch :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype) -> s32 #foreign libncursesw;
mvwaddchnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype, unk4: s32) -> s32 #foreign libncursesw;
mvwaddchstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype) -> s32 #foreign libncursesw;
mvwaddnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncursesw;
mvwaddstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncursesw;
mvwchgat :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: attr_t, unk5: s16, unk6: *void) -> s32 #foreign libncursesw;
mvwdelch :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;
mvwgetch :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;
mvwgetnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncursesw;
mvwgetstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncursesw;
mvwhline :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype, unk4: s32) -> s32 #foreign libncursesw;
mvwin :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;
mvwinch :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> chtype #foreign libncursesw;
mvwinchnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype, unk4: s32) -> s32 #foreign libncursesw;
mvwinchstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *chtype) -> s32 #foreign libncursesw;
mvwinnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncursesw;
mvwinsch :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype) -> s32 #foreign libncursesw;
mvwinsnstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, unk4: s32) -> s32 #foreign libncursesw;
mvwinsstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncursesw;
mvwinstr :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8) -> s32 #foreign libncursesw;
mvwprintw :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, __args: ..Any) -> s32 #foreign libncursesw;

mvwscanw :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: *u8, __args: ..Any) -> s32 #foreign libncursesw;

mvwvline :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: chtype, unk4: s32) -> s32 #foreign libncursesw;
napms :: (unk0: s32) -> s32 #foreign libncursesw;
newpad :: (unk0: s32, unk1: s32) -> *WINDOW #foreign libncursesw;
newterm :: (unk0: *u8, unk1: *FILE, unk2: *FILE) -> *SCREEN #foreign libncursesw;
newwin :: (unk0: s32, unk1: s32, unk2: s32, unk3: s32) -> *WINDOW #foreign libncursesw;
nl :: () -> s32 #foreign libncursesw;
nocbreak :: () -> s32 #foreign libncursesw;
nodelay :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
noecho :: () -> s32 #foreign libncursesw;
nonl :: () -> s32 #foreign libncursesw;
noqiflush :: () -> void #foreign libncursesw;
noraw :: () -> s32 #foreign libncursesw;
notimeout :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
overlay :: (unk0: *WINDOW, unk1: *WINDOW) -> s32 #foreign libncursesw;
overwrite :: (unk0: *WINDOW, unk1: *WINDOW) -> s32 #foreign libncursesw;
pair_content :: (unk0: s16, unk1: *s16, unk2: *s16) -> s32 #foreign libncursesw;
PAIR_NUMBER :: (unk0: s32) -> s32 #foreign libncursesw;
pechochar :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncursesw;
pnoutrefresh :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32, unk5: s32, unk6: s32) -> s32 #foreign libncursesw;
prefresh :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32, unk5: s32, unk6: s32) -> s32 #foreign libncursesw;
printw :: (unk0: *u8, __args: ..Any) -> s32 #foreign libncursesw;

putwin :: (unk0: *WINDOW, unk1: *FILE) -> s32 #foreign libncursesw;
qiflush :: () -> void #foreign libncursesw;
raw :: () -> s32 #foreign libncursesw;
redrawwin :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
refresh :: () -> s32 #foreign libncursesw;
resetty :: () -> s32 #foreign libncursesw;
reset_prog_mode :: () -> s32 #foreign libncursesw;
reset_shell_mode :: () -> s32 #foreign libncursesw;
ripoffline :: (unk0: s32, unk1: #type (a0: *WINDOW, a1: s32) -> s32 #c_call) -> s32 #foreign libncursesw;
savetty :: () -> s32 #foreign libncursesw;
scanw :: (unk0: *u8, __args: ..Any) -> s32 #foreign libncursesw;

scr_dump :: (unk0: *u8) -> s32 #foreign libncursesw;
scr_init :: (unk0: *u8) -> s32 #foreign libncursesw;
scrl :: (unk0: s32) -> s32 #foreign libncursesw;
scroll :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
scrollok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
scr_restore :: (unk0: *u8) -> s32 #foreign libncursesw;
scr_set :: (unk0: *u8) -> s32 #foreign libncursesw;
setscrreg :: (unk0: s32, unk1: s32) -> s32 #foreign libncursesw;
set_term :: (unk0: *SCREEN) -> *SCREEN #foreign libncursesw;
slk_attroff :: (unk0: chtype) -> s32 #foreign libncursesw;
slk_attr_off :: (unk0: attr_t, unk1: *void) -> s32 #foreign libncursesw;
slk_attron :: (unk0: chtype) -> s32 #foreign libncursesw;
slk_attr_on :: (unk0: attr_t, unk1: *void) -> s32 #foreign libncursesw;
slk_attrset :: (unk0: chtype) -> s32 #foreign libncursesw;
slk_attr :: () -> attr_t #foreign libncursesw;
slk_attr_set :: (unk0: attr_t, unk1: s16, unk2: *void) -> s32 #foreign libncursesw;
slk_clear :: () -> s32 #foreign libncursesw;
slk_color :: (unk0: s16) -> s32 #foreign libncursesw;
slk_init :: (unk0: s32) -> s32 #foreign libncursesw;
slk_label :: (unk0: s32) -> *u8 #foreign libncursesw;
slk_noutrefresh :: () -> s32 #foreign libncursesw;
slk_refresh :: () -> s32 #foreign libncursesw;
slk_restore :: () -> s32 #foreign libncursesw;
slk_set :: (unk0: s32, unk1: *u8, unk2: s32) -> s32 #foreign libncursesw;
slk_touch :: () -> s32 #foreign libncursesw;
standout :: () -> s32 #foreign libncursesw;
standend :: () -> s32 #foreign libncursesw;
start_color :: () -> s32 #foreign libncursesw;
subpad :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncursesw;
subwin :: (unk0: *WINDOW, unk1: s32, unk2: s32, unk3: s32, unk4: s32) -> *WINDOW #foreign libncursesw;
syncok :: (unk0: *WINDOW, unk1: bool) -> s32 #foreign libncursesw;
termattrs :: () -> chtype #foreign libncursesw;
termname :: () -> *u8 #foreign libncursesw;
timeout :: (unk0: s32) -> void #foreign libncursesw;
touchline :: (unk0: *WINDOW, unk1: s32, unk2: s32) -> s32 #foreign libncursesw;
touchwin :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
typeahead :: (unk0: s32) -> s32 #foreign libncursesw;
ungetch :: (unk0: s32) -> s32 #foreign libncursesw;
untouchwin :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
use_env :: (unk0: bool) -> void #foreign libncursesw;
use_tioctl :: (unk0: bool) -> void #foreign libncursesw;
vidattr :: (unk0: chtype) -> s32 #foreign libncursesw;
vidputs :: (unk0: chtype, unk1: NCURSES_OUTC) -> s32 #foreign libncursesw;
vline :: (unk0: chtype, unk1: s32) -> s32 #foreign libncursesw;

waddch :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncursesw;
waddchnstr :: (unk0: *WINDOW, unk1: *chtype, unk2: s32) -> s32 #foreign libncursesw;
waddchstr :: (unk0: *WINDOW, unk1: *chtype) -> s32 #foreign libncursesw;
waddnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncursesw;
waddstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncursesw;
wattron :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncursesw;
wattroff :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncursesw;
wattrset :: (unk0: *WINDOW, unk1: s32) -> s32 #foreign libncursesw;
wattr_get :: (unk0: *WINDOW, unk1: *attr_t, unk2: *s16, unk3: *void) -> s32 #foreign libncursesw;
wattr_on :: (unk0: *WINDOW, unk1: attr_t, unk2: *void) -> s32 #foreign libncursesw;
wattr_off :: (unk0: *WINDOW, unk1: attr_t, unk2: *void) -> s32 #foreign libncursesw;
wattr_set :: (unk0: *WINDOW, unk1: attr_t, unk2: s16, unk3: *void) -> s32 #foreign libncursesw;
wbkgd :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncursesw;
wbkgdset :: (unk0: *WINDOW, unk1: chtype) -> void #foreign libncursesw;
wborder :: (unk0: *WINDOW, unk1: chtype, unk2: chtype, unk3: chtype, unk4: chtype, unk5: chtype, unk6: chtype, unk7: chtype, unk8: chtype) -> s32 #foreign libncursesw;
wchgat :: (unk0: *WINDOW, unk1: s32, unk2: attr_t, unk3: s16, unk4: *void) -> s32 #foreign libncursesw;
wclear :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
wclrtobot :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
wclrtoeol :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
wcolor_set :: (unk0: *WINDOW, unk1: s16, unk2: *void) -> s32 #foreign libncursesw;
wcursyncup :: (unk0: *WINDOW) -> void #foreign libncursesw;
wdelch :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
wdeleteln :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
wechochar :: (unk0: *WINDOW, unk1: chtype) -> s32 #foreign libncursesw;
werase :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
wgetch :: (unk0: *WINDOW) -> s32 #foreign libncursesw;
wgetnstr :: (unk0: *WINDOW, unk1: *u8, unk2: s32) -> s32 #foreign libncursesw;
wgetstr :: (unk0: *WINDOW, unk1: *u8) -> s32 #foreign libncursesw;
whline :: (unk0: *WINDOW, unk1: chtype, unk2: s32) -> s32 #foreign libncursesw;

#scope_file

libncursesw :: #foreign_system_library "libncursesw";
libtinfo :: #foreign_system_library "libtinfo";
