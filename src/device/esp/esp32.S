// Only calling it call_start_cpu0 for consistency with ESP-IDF.
.section .text.call_start_cpu0
1:
    .long _stack_top
.global call_start_cpu0
call_start_cpu0:
    l32r a1, 1b
    j main

.section .text.tinygo_scanCurrentStack
.global tinygo_scanCurrentStack
tinygo_scanCurrentStack:
    // TODO: save callee saved registers on the stack
    j tinygo_scanstack
