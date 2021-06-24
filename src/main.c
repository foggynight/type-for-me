#include <stdio.h>

#include <ncurses.h>

#define KEY_ESC '\033'
#define TEXT_BUFFER_SIZE 2048

int main(int argc, char **argv)
{
	if (argc != 2) {
		fprintf(stderr,
		        "%s: Wrong number of arguments\n"
		        "Usage: %s FILENAME\n",
		        argv[0], argv[0]);
		return 1;
	}

	FILE *text_file = fopen(argv[1], "r");
	if (!text_file) {
		fprintf(stderr, "%s: Failed to open file: %s\n", argv[0], argv[1]);
		return 2;
	}

	initscr();
	noecho();
	raw();

	char text_buffer[TEXT_BUFFER_SIZE];
	while (1) {
		size_t count = fread(text_buffer,
		                     sizeof *text_buffer,
		                     TEXT_BUFFER_SIZE,
		                     text_file);
		for (size_t i = 0; i < count; ++i) {
			if (getch() == KEY_ESC)
				goto quit;
			addch(text_buffer[i]);
		}
		if (count != TEXT_BUFFER_SIZE)
			goto wait;
	}

wait:
	while (getch() != KEY_ESC);

quit:
	fclose(text_file);
	endwin();

	return 0;
}
