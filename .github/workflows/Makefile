YMLS := $(shell echo *.yml)

.PHONY: all
all: $(YMLS)

$(YMLS): action_vers.env update_action_vers.sh
	for i in $(YMLS); do \
	  cat $$i | ./update_action_vers.sh > ./tmp.$$$$.out && mv ./tmp.$$$$.out $$i; \
	done

clean:
	rm *.out
