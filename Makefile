SRCS		=	src/cexception.c 
OBJS		= 	$(SRCS:%.c=%.o)

NAME		=	try_lib.a
HEADERS		=	include/cexception.h

all: $(NAME)

$(OBJS):
	gcc -o src/cexception.o -I ./include/  -c src/cexecption.c

$(NAME): $(OBJS) $(HEADERS)
	ar rcs $(NAME) $(OBJS)

.PHONY:
clean: .PHONY
	make 
fclean: clean
	rm -f $(NAME)
re:  fclean all
