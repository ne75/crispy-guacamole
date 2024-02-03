.section ".text.startup"

.global _start
.global _get_stack_pointer
.global _exception_table
.global _enable_interrupts

.equ    CPSR_MODE_USER,         0x10
.equ    CPSR_MODE_FIQ,          0x11
.equ    CPSR_MODE_IRQ,          0x12
.equ    CPSR_MODE_SVR,          0x13
.equ    CPSR_MODE_ABORT,        0x17
.equ    CPSR_MODE_UNDEFINED,    0x1B
.equ    CPSR_MODE_SYSTEM,       0x1F

// See ARM section A2.5 (Program status registers)
.equ    CPSR_IRQ_INHIBIT,       0x80
.equ    CPSR_FIQ_INHIBIT,       0x40
.equ    CPSR_THUMB,             0x20

_start:
    ldr pc, _reset_h
    ldr pc, _undefined_instruction_vector_h
    ldr pc, _software_interrupt_vector_h
    ldr pc, _prefetch_abort_vector_h
    ldr pc, _data_abort_vector_h
    ldr pc, _unused_handler_h
    ldr pc, _interrupt_vector_h
    ldr pc, _fast_interrupt_vector_h

_reset_h:                           .word   _reset_
_undefined_instruction_vector_h:    .word   undefined_instruction_vector
_software_interrupt_vector_h:       .word   software_interrupt_vector
_prefetch_abort_vector_h:           .word   prefetch_abort_vector
_data_abort_vector_h:               .word   data_abort_vector
_unused_handler_h:                  .word   _reset_
_interrupt_vector_h:                .word   irq
_fast_interrupt_vector_h:           .word   fast_interrupt_vector

_reset_:

    mov r0,#0x8000
    MCR p15, 4, r0, c12, c0, 0

    mov sp,#0x8000
    bl      _cstartup

//    mrs r0,cpsr
//    bic r0,r0,#0x1F
//    orr r0,r0,#0x13
//    msr spsr_cxsf,r0
//    add r0,pc,#4
//    msr ELR_hyp,r0
//    eret
//
//    mrc p15, 0, r1, c12, c0, 0 ;@ get vbar
//    mov r0,#0x8000
//    ;@ mov r1,#0x0000
//    ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
//    stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
//    ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
//    stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
//
//    mov r12,#0
//    mcr p15, 0, r12, c7, c10, 1
//    dsb
//    mov r12, #0
//    mcr p15, 0, r12, c7, c5, 0
//    mov r12, #0
//    mcr p15, 0, r12, c7, c5, 6
//    dsb
//    isb
//    smc #0
//
//    mrc p15,0,r2,c1,c0,0
//    bic r2,#0x1000
//    bic r2,#0x0004
//    mcr p15,0,r2,c1,c0,0
//
//
//    mov r0,#0x8000
//    mcr p15, 0, r0, c12, c0, 0
//
//    ;@ mov r0,#0x8000
//    ;@ mov r1,#0x0000
//    ;@ ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
//    ;@ stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
//    ;@ ldmia r0!,{r2,r3,r4,r5,r6,r7,r8,r9}
//    ;@ stmia r1!,{r2,r3,r4,r5,r6,r7,r8,r9}
//
//    ;@ (PSR_IRQ_MODE|PSR_FIQ_DIS|PSR_IRQ_DIS)
//    mov r0,#0xD2
//    msr cpsr_c,r0
//    mov sp,#0x8000
//
//    ;@ (PSR_FIQ_MODE|PSR_FIQ_DIS|PSR_IRQ_DIS)
//    mov r0,#0xD1
//    msr cpsr_c,r0
//    mov sp,#0x4000
//
//    ;@ (PSR_SVC_MODE|PSR_FIQ_DIS|PSR_IRQ_DIS)
//    mov r0,#0xD3
//    msr cpsr_c,r0
//    mov sp,#0x8000000


    // We enter execution in supervisor mode. For more information on
    // processor modes see ARM Section A2.2 (Processor Modes)

//    mov     r0, #0x8000
//    mov     r1, #0x0000
//    ldmia   r0!,{r2, r3, r4, r5, r6, r7, r8, r9}
//    stmia   r1!,{r2, r3, r4, r5, r6, r7, r8, r9}
//    ldmia   r0!,{r2, r3, r4, r5, r6, r7, r8, r9}
//    stmia   r1!,{r2, r3, r4, r5, r6, r7, r8, r9}
//
//    // We're going to use interrupt mode, so setup the interrupt mode
//    // stack pointer which differs to the application stack pointer:
//    mov r0, #(CPSR_MODE_IRQ | CPSR_IRQ_INHIBIT | CPSR_FIQ_INHIBIT )
//     //mov r0, #0xD2
//    msr cpsr_c, r0
//    mov sp, #0x8000
//
//    // Switch back to supervisor mode (our application mode) and
//    // set the stack pointer towards the end of RAM. Remember that the
//    // stack works its way down memory, our heap will work it's way
//    // up memory toward the application stack.
//    //mov r0, #0xD3
//    mov r0, #(CPSR_MODE_SVR | CPSR_IRQ_INHIBIT | CPSR_FIQ_INHIBIT )
//    msr cpsr_c, r0
//
//    // Set the stack pointer at some point in RAM that won't harm us
//    // It's different from the IRQ stack pointer above and no matter
//    // what the GPU/CPU memory split, 64MB is available to the CPU
//    // Keep it within the limits and also keep it aligned to a 32-bit
//    // boundary!
//    mov     sp, #0x8000000
//
//    // The c-startup function which we never return from. This function will
//    // initialise the ro data section (most things that have the const
//    // declaration) and initialise the bss section variables to 0 (generally
//    // known as automatics). It'll then call main, which should never return.
//    bl      _cstartup

    // If main does return for some reason, just catch it and stay here.
_inf_loop:
    b       _inf_loop

// get the CPSR register value
.globl GETCPSR
GETCPSR:
    mrs r0, cpsr
    bx lr

// write to a register (by address)
.globl PUT32
PUT32:
    str r1,[r0]
    bx lr

// read a register (by address)
.globl GET32
GET32:
    ldr r0,[r0]
    bx lr

_get_stack_pointer:
    // Return the stack pointer value
    str     sp, [sp]
    ldr     r0, [sp]

    // Return from the function
    mov     pc, lr

irq:
    bl interrupt_vector
    eret

_enable_interrupts:
    mrs     r0, cpsr
    bic     r0, r0, #0x80
    msr     cpsr_c, r0

    mov     pc, lr
