# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marcgar2 <marcgar2@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/18 22:23:23 by marcgar2          #+#    #+#              #
#    Updated: 2025/03/18 22:23:23 by marcgar2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol
CC = gcc
CFLAGS = -Wall -Wextra -Werror 
MLX_DIR = ./minilibx-linux
LIBS = -L$(MLX_DIR) -lmlx -lX11 -lXext 

SRCS = src/main.c src/events.c src/init.c src/math_utils.c src/render.c src/string_utils.c
OBJS = $(SRCS:.c=.o)

all:  $(NAME)


$(NAME): $(OBJS)
	@echo "																 "
	@echo " ███████╗██████╗  █████╗  ██████╗████████╗    ██████╗ ██╗     "
	@echo " ██╔════╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝   ██╔═══██╗██║     "
	@echo " █████╗  ██████╔╝███████║██║        ██║█████╗██║   ██║██║     "
	@echo " ██╔══╝  ██╔══██╗██╔══██║██║        ██║╚════╝██║   ██║██║     "
	@echo " ██║     ██║  ██║██║  ██║╚██████╗   ██║      ╚██████╔╝███████╗"
	@echo " ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═╝       ╚═════╝ ╚══════╝"
	@echo "																 "
	@$(CC) $(CFLAGS) -o $(NAME) $(OBJS) $(LIBS)

%.o: %.c
	@$(CC) $(CFLAGS) -I$(MLX_DIR) -c $< -o $@

clean:
	@rm -f $(OBJS)

fclean: clean

	@rm -f $(NAME)

re: fclean all
