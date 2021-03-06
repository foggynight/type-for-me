# type-for-me

## Description

Type with perfect accuracy while smashing random keys.

**Note:** The text will not scroll, thus if the target file contains text that
will not fit within the window the program will only function correctly until
the last character that fits within the window has been typed.


## Instructions

### Installation

```sh
make
sudo make install
```

### Usage

```sh
type-for-me FILENAME
```
- `FILENAME`: Name of the file to auto-type

### Controls

Press any key corresponding to a printable character (including backspace and
enter) to print the next character contained within the file to auto-type, press
<S-end> to quit.


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
