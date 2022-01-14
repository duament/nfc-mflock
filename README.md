# nfc-mflock
A simple utility to lock block0 of UFUID cards.

    Usage: nfc-mflock [OPTIONS] [LOCK COMMAND]
    Options:
            -h      Help. Print this message.
            -q      Quiet mode. Suppress output of READER and CARD data (improves timing).

            You can specify LOCK COMMAND (2 HEX bytes), usually 'e000' or 'e100', or leave blank for default 'e100'.

            This utility will lock block0 permanently.

            *** Note: this utility only works with special Mifare 1K cards (Chinese clones) aka UFUID.

## build

Dependency: [libnfc](https://github.com/nfc-tools/libnfc)
```
make
```

## note

`nfc-mflock.c` is based on `nfc-mfsetuid.c` from [libnfc](https://github.com/nfc-tools/libnfc)/examples.

`nfc-utils.c` and `nfc-utils.h` is copied from [libnfc](https://github.com/nfc-tools/libnfc)/utils.
