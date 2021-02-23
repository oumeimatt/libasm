# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oel-yous <oel-yous@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 10:45:54 by oel-yous          #+#    #+#              #
#    Updated: 2021/02/23 11:09:07 by oel-yous         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

SRC = ft_strcpy.s

TEST = test

OBJ = $(SRC:.s=.o)

NA = nasm -f macho64

all: $(NAME)

$(OBJ): $(OBJ)
	$(NA) $(SRC)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME) $(TEST)

re: fclean all

test:$(NAME)
	$(CC) $(CFLAGS) -L. -lasm -o $(TEST) main.c
	./$(TEST) < Makefile