TARGET = MarioKartPSP
OBJS = main.o

CFLAGS = -O2 -G0 -Wall -fsingle-precision-constant
LIBS = -lpspgu -lpspge -lpspdisplay -lpspctrl -lpspaudio -lpsppower -lm

BUILD_PRX = 0
PSP_FW_VERSION = 660
EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = Mario Kart PSP

PSPSDK := $(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
