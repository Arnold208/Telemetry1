armasm -g --cpu=cortex-a8.no_neon --apcs=interwork tx_initialize_low_level.s
armcc -c -g --cpu=cortex-a8.no_neon -I../../../../common/inc -I../inc sample_threadx.c
armlink -d -o sample_threadx.axf --elf --map --ro-base=0x00000000 --first tx_initialize_low_level.o(Init) --datacompressor=off --inline --info=inline --callgraph --list sample_threadx.map tx_initialize_low_level.o sample_threadx.o tx.a

