# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kjuszko <kjuszko@student.42vienna.com>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/25 15:06:31 by kjuszko           #+#    #+#              #
#    Updated: 2025/05/21 16:41:25 by kjuszko          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_printf.c ft_printf_helper1.c ft_printf_helper2.c

OBJ = $(SRC:.c=.o)

NAME = libftprintf.a

CC = clang

LIBFTDIR = ./libft

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)
#make in LIBFTDIR, copy libft.a to current dir and rename to $(NAME), create archive $(NAME) add OBJs to it
$(NAME): $(OBJ)
	make -C $(LIBFTDIR)
	cp $(LIBFTDIR)/libft.a $(NAME)
	ar -rcs $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	make clean -C $(LIBFTDIR)
	rm -f $(OBJ)

fclean: clean
	make fclean -C $(LIBFTDIR)
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
