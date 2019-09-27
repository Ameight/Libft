# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejuana <ejuana@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/09 14:52:16 by ejuana            #+#    #+#              #
#    Updated: 2019/09/27 03:11:40 by ejuana           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= libft.a

CC				= gcc 

CFLAGS			= -Wall -Wextra -Werror

SRC_FC 			=	ft_atoi.c			\
					ft_bzero.c			\
					ft_isalnum.c		\
					ft_isalpha.c		\
					ft_isascii.c		\
					ft_isdigit.c		\
					ft_isprint.c		\
					ft_memccpy.c		\
					ft_memchr.c			\
					ft_memcmp.c			\
					ft_memmove.c		\
					ft_memcpy.c			\
					ft_memset.c			\
					ft_strcat.c			\
					ft_strchr.c			\
					ft_strcmp.c			\
					ft_strcpy.c			\
					ft_strdup.c			\
					ft_strlcat.c		\
					ft_strlen.c			\
					ft_strncat.c		\
					ft_strncmp.c		\
					ft_strncpy.c		\
					ft_strnstr.c		\
					ft_strrchr.c		\
					ft_strstr.c			\
					ft_strncmp.c		\
					ft_tolower.c		\
					ft_toupper.c		

SRC_FC 			+=	ft_memalloc.c		\
					ft_memdel.c			\
					ft_strnew.c			\
					ft_strdel.c			\
					ft_strclr.c			\
					ft_putchar_fd.c		\
					ft_putchar.c		\
					ft_putstr.c			\
					ft_putstr_fd.c		\
					ft_putendl_fd.c		\
					ft_putendl.c		\
					ft_putnbr_fd.c		\
					ft_putnbr.c			\
					ft_itoa.c			\
					ft_striter.c		\
					ft_striteri.c		\
					ft_strmap.c			\
					ft_strmapi.c		\
					ft_strequ.c			\
					ft_strnequ.c		\
					ft_strsub.c			\
					ft_strjoin.c		\
					ft_strtrim.c		\
					ft_strsplit.c		

SRC_FC 			+=	ft_lstnew.c			\
					ft_lstdelone.c		\
					ft_lstdel.c			\
					ft_lstadd.c			\
					ft_lstiter.c		\
					ft_lstmap.c			

SRC_FC			+=	ft_swap_int.c		\
					ft_len_char.c		\
					ft_strwhitespace.c	\
					ft_intlen_base.c	\
					ft_itoa_base.c		\
					ft_strnlen.c		\
					ft_lstclr.c			
					

OBJS			= 	$(SRC_FC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "Libft created!"

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -I. -o $@ 

clean: 
	@rm -rf $(OBJS) 

fclean: clean
	@rm -rf $(NAME)

re: fclean all

norm:
	@norminette
	
.PHONY: all clean fclean re norm
