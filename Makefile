TARGET = MarioKartPSP

OBJS = main.o

# PSP firmware
PSP_FW_VERSION = 660

# PRX kullanmiyoruz; normal EBOOT.PBP
BUILD_PRX = 0

# Compiler ayarlari
CFLAGS = -O2 -G0 -Wall -Wextra \
         -fno-strict-aliasing \
         -fsingle-precision-constant

CXXFLAGS = $(CFLAGS)
ASFLAGS = $(CFLAGS)

# PSP kutuphaneleri
LIBS = -lpspgum \
       -lpspgu \
       -lpspge \
       -lpspdisplay \
       -lpspctrl \
       -lpspaudio \
       -lpsppower \
       -lpspdebug \
       -lpspuser \
       -lpspkernel \
       -lm

# EBOOT.PBP ayarlari
PSP_EBOOT_TITLE = Mario Kart PSP
PSP_EBOOT_SFO = PARAM.SFO

# PSPSDK yolu
PSPSDK := $(shell psp-config --pspsdk-path)

# PSP SDK standart build sistemi
include $(PSPSDK)/lib/build.mak
