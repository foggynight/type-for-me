# type-for-me

Type with perfect precision while smashing random keys.

The text will not scroll, thus if the target file contains text that will not
fit within the window the program will only function correctly until the last
character that fits within the window has been typed.


## Instructions

### Installation

With Make:
```sh
make
sudo make install
```

With GCC:
```sh
gcc -o type-for-me -O3 -I./src src/* -lncurses
sudo cp type-for-me /usr/local/bin
```

### Usage

```sh
./type-for-me FILENAME
```
- `FILENAME`: Name of the file to auto-type

### Controls

Press any key corresponding to a printable character (including backspace and
enter) to print the next character contained within the file to auto-type, press
escape to quit.


## Dependencies

- ncurses


## License

Copyright (C) 2021 Robert Coffey

This is free software: you can redistribute it and/or modify it under the terms
of the GNU General Public License version 2 as published by the Free Software
Foundation.

You should have received a copy of the GNU General Public License version 2
along with this software. If not, see
[GPLv2 license](https://www.gnu.org/licenses/gpl-2.0).
