cmake_minimum_required(VERSION 3.11...4.0)
project(MarioKartPSP C)

add_executable(MarioKartPSP main.c)
target_compile_options(MarioKartPSP PRIVATE -O2 -G0 -Wall -fsingle-precision-constant)
target_link_libraries(MarioKartPSP PRIVATE
    pspgu pspge pspdisplay pspctrl pspaudio psppower m
)

create_pbp_file(
    TARGET MarioKartPSP
    TITLE "Mario Kart PSP"
    VERSION 01.00
    ICON_PATH NULL
    BACKGROUND_PATH NULL
    PREVIEW_PATH NULL
)
