SRCS	=	ft_strlen.s ft_write.s ft_strcmp.s ft_list_size_bonus.s

OBJS	=	$(SRCS:.s=.o)

NAME	=	libasm.a

FLAGS	=	-Wall -Werror -Wextra

TEST	=	test

%.o:		%.s
			nasm -felf64 $<

all:		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
			rm $(OBJS)

fclean:		clean
			rm $(NAME)

re:			fclean all

test:
			gcc $(FLAGS) -o $(TEST) main.c -lasm -L.
			./$(TEST)
