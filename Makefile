NAME=maze

CC=gcc
RM=rm -rf
CFLAGS=-g -Wall -Werror -Wextra -pedantic
SDL_FLAGS=-I/usr/local/include/SDL2 -L/usr/lib/x86_64-linux-gnu -lSDL2 -lm

SRC=./src/create_maze.c ./src/create_world.c ./src/dist_checks.c ./src/draw.c ./src/event_handlers.c ./src/free_stuff.c ./src/init_instance.c ./src/main_maze.c ./src/movement.c ./src/win.c
OBJ=$(SRC:.c=.o)

all: $(OBJ)
	$(CC) $(OBJ) -o $(NAME) $(SDL_FLAGS)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all
