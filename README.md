# jai-ncurses

Jai bindings for [ncurses](https://invisible-island.net/ncurses/announce.html).

## Build

You will need `ncurses` and `tinfo` installed (on Ubuntu packages `libncursesw5-dev` and `libtinfo-dev`).

```
git submodule update --init
```

Build the bindings with:

```
jai generate.jai
```

