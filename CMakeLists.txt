cmake_minimum_required(VERSION 3.22)

# STM32 template placeholder
project(stm32_template C CXX ASM)

message(STATUS "This is a template placeholder CMakeLists.txt")
message(STATUS "Next: add STM32F411 toolchain, linker script, startup, and sources")

# Create a dummy target so CMake config succeeds even before firmware sources exist.
add_library(stm32_template_placeholder INTERFACE)
