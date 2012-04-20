ob=$(wildcard *.c)
obj=$(ob:.c=.o)
abc=hello world
edit:$(obj)
	@echo $(abc);echo $(ob);echo $(obj);\
	cc -Wall -o edit $(obj) -lm;\
	rm *.o
#
#%.d:%.c
#	@set -e;rm -f $@;\
#	gcc -MM $< >$@.e;\
#	sed 's,\($*\)\.o,\1.o $@,g'<$@.e>$@;\
#	rm -f $@.e
#include $(obj:.o=.d)
clean:
	@-rm edit *.d
