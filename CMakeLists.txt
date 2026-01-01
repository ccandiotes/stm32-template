cmake_minimum_required(VERSION 3.22)

project(stm32f411_template C ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(MCU_FLAGS
    -mcpu=cortex-m4
    -mthumb
    -mfloat-abi=soft
)

add_compile_options(
    ${MCU_FLAGS}
    -O0
    -g3
    -Wall
    -ffunction-sections
    -fdata-sections
)

add_link_options(
    ${MCU_FLAGS}
    -T${CMAKE_SOURCE_DIR}/linker/stm32f411.ld
    -Wl,--gc-sections
)

include_directories(
    Core/Inc
)

file(GLOB_RECURSE SOURCES
    Core/Src/*.c
    startup/*.s
)

add_executable(firmware.elf ${SOURCES})

set_target_properties(firmware.elf PROPERTIES
    LINK_DEPENDS ${CMAKE_SOURCE_DIR}/linker/stm32f411.ld
)
