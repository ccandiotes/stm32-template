Prerequisites:
Arm GNU Toolchain (arm-none-eabi-gcc, arm-none-eabi-gdb)
CMake >= 3.22
Ninja 
STM32CubeProgrammer / ST-LINK GDB Server (for debugging)

(To avoid incorrectly building with MSVC especially if you have Visual Studio installed)
Debug build:
cmake --preset debug
cmake --build --preset debug

