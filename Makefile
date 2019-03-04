SRCS		=	src/* 
OBJS		= $(SRCS:%.c=%.o)

NAME		=	try_lib.a
HEADERS		=	include/*

all: $(NAME)

$(OBJ): $(FILES)
	gcc -c $(SRCS)
	
$(NAME): $(SRCS) $(HEADERS)
	ar rcs $(NAME) $(OBJ)

.PHONY:
clean: .PHONY
	make 
fclean: clean
	rm -f $(NAME)
re:  fclean all
