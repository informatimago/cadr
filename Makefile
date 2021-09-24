all: cadr

disk.img:disk.img.xz
	xz -d < disk.img.xz > disk.img

cadr_6.bin:cadr.bin.tar
	tar -xvf cadr.bin.tar

cadr:disk.img cadr_6.bin src/usim
	mv src/usim cadr

src/usim:src/*.c
	make -C src
