# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oel-yous <oel-yous@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 10:45:54 by oel-yous          #+#    #+#              #
#    Updated: 2021/02/25 11:30:39 by oel-yous         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

SRC = ft_write.s ft_strlen.s ft_read.s ft_strcpy.s ft_strcmp.s ft_strdup.s

TEST = test

OBJ = $(SRC:.s=.o) 

NA = nasm -f macho64

all: $(NAME)

$(OBJ): $(SRC)
	$(NA) ft_write.s 
	$(NA) ft_strlen.s
	$(NA) ft_read.s
	$(NA) ft_strcpy.s
	$(NA) ft_strcmp.s
	$(NA) ft_strdup.s

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