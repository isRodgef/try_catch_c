SRCS		=	src/* 

NAME		=	try_lib
HEADERS		=	include/*

all: $(NAME)
	
$(NAME): $(SRCS) $(HEADERS)
	gcc $(SRCS) -o $(NAME)

.PHONY:
clean: .PHONY
	make 
fclean: clean
	rm -f $(NAME)
re:  fclean all
