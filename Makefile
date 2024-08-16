obj-m := btusb.o btintel.o btrtl.o

KERNEL_DIR ?= /usr/src/linux-headers-$(shell uname -r)

# (C)hange to kernel directory, M is a variable pointing to output directory not a flag of make. 
all:
	make -C $(KERNEL_DIR) \
		M=$(PWD) modules

clean:
	make -C $(KERNEL_DIR) \
		M=$(PWD) clean

.PHONY: clean 
