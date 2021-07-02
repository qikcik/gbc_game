rm ./obj/*
rm ./game.gbc
rm ./game.map
rm ./game.noi


..\..\!toolchain\gbdk_win\bin\lcc -Wa-l -Wl-m -Wl-j -c -o ./obj/main.o ./src/main.c

..\..\!toolchain\gbdk_win\bin\lcc -Wa-l -Wl-m -Wl-j -Wf-ba0 -c -o ./obj/bank_0.o ./src/bank_0.c
..\..\!toolchain\gbdk_win\bin\lcc -Wa-l -Wl-m -Wl-j -Wf-ba1 -c -o ./obj/bank_1.o ./src/bank_1.c
..\..\!toolchain\gbdk_win\bin\lcc -Wa-l -Wl-m -Wl-j -Wf-ba2 -c -o ./obj/bank_2.o ./src/bank_2.c
..\..\!toolchain\gbdk_win\bin\lcc -Wa-l -Wl-m -Wl-j -Wf-ba3 -c -o ./obj/bank_3.o ./src/bank_3.c
 
..\..\!toolchain\gbdk_win\bin\lcc -Wa-l -Wl-m -Wl-j  -Wm-yc -Wl-yt2 -Wl-yo4 -Wl-ya4 -o game.gbc ./obj/main.o ./src/bank_0.c ./src/bank_1.c ./src/bank_2.c ./src/bank_3.c