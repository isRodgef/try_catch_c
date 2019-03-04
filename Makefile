SRCS		=	src/cexception.c 
OBJS		= $(SRCS:%.c=%.o)

NAME		=	try_lib.a
HEADERS		=	include/cexception.h

all: $(NAME)

$(OBJ):
	gcc -c $(SRCS)
	
$(NAME): $(SRCS) $(HEADERS)
	ar rcs $(NAME) $(OBJ)

.PHONY:
clean: .PHONY
	make 
fclean: clean
	rm -f $(NAME)
re:  fclean all
