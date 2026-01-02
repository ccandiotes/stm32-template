ST-LINK GDB Server + STM32CubeProgrammer Template

This template uses Cortex-Debug with the ST-LINK GDB Server (recommended on Windows).

The ST-LINK GDB Server requires access to STM32CubeProgrammer support files.
Cortex-Debug automatically passes this path using the -cp argument.

To avoid duplicate arguments and ensure reliable startup, the CubeProgrammer path must be provided via an environment variable.

Set the following user environment variable once on your system:
Name STM32CUBEPRG_PATH	
Value E:\ST\STM32CubeProgrammer\bin
**Adjust the path according to your STM32CubeProgrammer installation location 

Prerequisites:
Arm GNU Toolchain (arm-none-eabi-gcc, arm-none-eabi-gdb)
CMake >= 3.22
Ninja 
STM32CubeProgrammer / ST-LINK GDB Server (for debugging)

📝 Recommendation (template users)
If you clone this template on a new machine:
1) Install:
  STM32CubeProgrammer
  Arm GNU Toolchain
  Ninja
2) Set STM32CUBEPRG_PATH
3) To avoid incorrectly building with MSVC (especially if you have Visual Studio installed)
Build with:
  cmake --preset debug
  cmake --build --preset debug
4) Debug with F5
