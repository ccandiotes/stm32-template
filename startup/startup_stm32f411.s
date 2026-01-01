.syntax unified
.cpu cortex-m4
.thumb

.global Reset_Handler
.extern main

.section .isr_vector, "a", %progbits
.word 0x20020000      /* Top of stack */
.word Reset_Handler

.section .text.Reset_Handler
Reset_Handler:
  bl main
LoopForever:
  b LoopForever
