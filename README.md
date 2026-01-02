STM32F411 VS Code + CMake Template (ST-LINK V3)

This repository is a minimal, reproducible STM32F411 firmware template using:

 • VS Code (not STM32CubeIDE)
 • CMake + Ninja
 • ARM GNU Toolchain
 • Cortex-Debug
 • ST-LINK V3 (required)

It is intended as a clean starting point for bare-metal or HAL-based STM32 projects without IDE lock-in.

Target Hardware

  • MCU: STM32F411 (tested on STM32F411CE / Black Pill–style boards)
  • Debugger: ST-LINK V3SET (V3 required)
  • Debug Interface: SWD
  • Clock: Default Black Pill clocking (HSE optional)

⚠️ ST-LINK V2 is NOT supported
Older ST-LINK V2 firmware is incompatible with the current ST-LINK GDB server used by Cortex-Debug.

Toolchain Requirements
Required Software. Install all of the following:

Tool	                                Purpose
ARM GNU Toolchain	                    Compiler + GDB
CMake ≥ 3.22	                        Build system
Ninja	                                Build generator
VS Code	                              Editor / debugger
STM32CubeProgrammer	                  Required by ST-LINK GDB server
STM32CubeIDE	                        Used only to obtain ST-LINK GDB server

ARM GNU Toolchain

Download and install from Arm:

  https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads

Ensure the following are on PATH:
  • arm-none-eabi-gcc
  • arm-none-eabi-gdb

STM32CubeProgrammer (REQUIRED)

Install STM32CubeProgrammer even if you do not use the GUI. The ST-LINK GDB server will not start without it.
  Download: https://www.st.com/en/development-tools/stm32cubeprog.html

STM32CubeIDE is required only to obtain the ST-LINK GDB server binary. After installation, locate:
  STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server*/tools/bin/ST-LINK_gdbserver.exe

Required Environment Variables (IMPORTANT)

These must be set at the system level (not just in PowerShell):


Point this to the ST-LINK GDB server executable:
STLINK_GDBSERVER_PATH
  E:\ST\STM32CubeIDE_2.0.0\STM32CubeIDE\plugins\com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server.win32_x.x.x\tools\bin\ST-LINK_gdbserver.exe

Point this to the CubeProgrammer bin directory:
STM32CUBE_PROGRAMMER_PATH
  E:\Program Files\STMicroelectronics\STM32Cube\STM32CubeProgrammer\bin
✅ This avoids hardcoding paths in launch.json
✅ Survives drive/folder changes
❌ Cortex-Debug will not auto-detect this correctly on Windows

VS Code Extensions

  Install these extensions:
  Cortex-Debug (Marus25)
  CMake Tools
  C/C++ (Microsoft)
  (Optional) clangd (if using compile_commands.json)




