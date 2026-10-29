CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_strchr.c
SRCCB = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
OBJ = $(SRCC:.c=.o)
OBJB = $(SRCCB:.c=.o)
NAME = libft.a
INCLUDE = includes/libft.h

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -Iincludes -c $(SRCC)
	ar rcs $@ $^

bonus:
	$(CC) $(CFLAGS) -Iincludes -c $(SRCC) $(SRCCB)
	ar rcs $(NAME) $(OBJ) $(OBJB)

clean:
	rm -f $(OBJ) $(OBJB)

fclean: clean
	rm -f $(NAME)

re: fclean all

compL:
	$(CC) $(CFLAGS) main.c -L. -lft -Iincludes -o a.out

.PHONY: all clean fclean re bonus compL
