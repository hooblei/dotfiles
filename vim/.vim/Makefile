
all: setup

setup:
	$(MAKE) -C autoload \
		&& $(MAKE) -C bundle setup

update:
	$(MAKE) -C bundle update

clean:
	$(MAKE) -C bundle clean

.PHONY: all setup update clean

