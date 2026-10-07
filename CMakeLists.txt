cmake_minimum_required(VERSION 3.11)

project(MarioKartPSP C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# PSPDEV toolchain ile derleme
if(NOT DEFINED ENV{PSPDEV})
    message(FATAL_ERROR "PSPDEV ortam degiskeni tanimli degil.")
endif()

# Ana executable
add_executable(MarioKartPSP
    main.c
)

# PSP kutuphaneleri
target_link_libraries(MarioKartPSP PRIVATE
    pspgum
    pspgu
    pspge
    pspdisplay
    pspctrl
    pspaudio
    psppower
    pspdebug
    pspuser
    pspkernel
    m
)

# PSP icin compiler ayarlari
target_compile_options(MarioKartPSP PRIVATE
    -O2
    -G0
    -Wall
    -Wextra
    -fno-strict-aliasing
    -fsingle-precision-constant
)

# Buyuk binary sayfa hizalamasi
target_link_options(MarioKartPSP PRIVATE
    -Wl,-zmax-page-size=128
)

# EBOOT.PBP olustur
create_pbp_file(
    TARGET MarioKartPSP
    TITLE "Mario Kart PSP"
    VERSION 01.00
    ICON_PATH NULL
    BACKGROUND_PATH NULL
    PREVIEW_PATH NULL
)
