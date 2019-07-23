%macro jmp_next 0
    mov eax, [esp+32]
    add eax, 2
    mov [esp+32], eax
%endmacro

global isr0:function
global isr1:function
global isr2:function
global isr3:function
global isr4:function
global isr5:function
global isr6:function
global isr7:function
global isr8:function
global isr10:function
global isr11:function
global isr12:function
global isr13:function
global isr14:function
global isr16:function
global isr17:function
global isr18:function
global isr19:function
global isr20:function
global isr30:function

extern isr_handler

; TODO: exception: 8, 10, 11, 12, 13, 14, 17 and 30 push error code! This value must be pulled from the stack!

isr0:
    pushad
    push 0
    call isr_handler
    add esp, 4    
    jmp_next
    popad
    iret

isr1:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr2:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr3:
    pushad
    push 1
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr4:
    pushad
    push 1
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr5:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr6:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr7:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr8:
    pushad
    push 2
    call isr_handler
    add esp, 4 
    popad
    iret

isr10:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr11:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr12:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr13:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr14:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr16:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr17:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr18:
    pushad
    push 2
    call isr_handler
    add esp, 4 
    popad
    iret

isr19:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr20:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret

isr30:
    pushad
    push 0
    call isr_handler
    add esp, 4 
    jmp_next
    popad
    iret