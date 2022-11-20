# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yodahani <yodahani@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/29 13:59:47 by yodahani          #+#    #+#              #
#    Updated: 2022/11/05 11:15:48 by yodahani         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Werror -Wextra 
SRC = ft_printf.c ft_putnbr.c ft_putstr.c ft_putbase.c
NAME=  libftprintf.a
OBJ = ${SRC:.c=.o}

all :  ${NAME}

${NAME} : ${OBJ}
	ar -rcs ${NAME} ${OBJ}
clean:
	rm -f ${OBJ}
fclean: clean
	rm -f ${NAME}
re : fclean all
