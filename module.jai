#if OS != .WINDOWS {
  #import "POSIX";
  #load "unix.jai";

  NCURSES_MOUSE_MASK :: (b : u8, m : mmask_t) -> mmask_t {
    return m << ((b - 1) * 6);
  }

  A_UNDERLINE :: 1 << 9;
  A_BLINK :: 1 << 11;
  A_BOLD :: 1 << 12;
}
