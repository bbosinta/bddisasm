    bits 64
    
    xacquire lock add qword [gs:r15 + r14 * 8 + 0x7FFFFFFF], 0xBDBDBDBD
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90
    
    ; This is invalid, as its more than 15 bytes long.
    db 0x66
    xacquire lock add qword [gs:r15 + r14 * 8 + 0x7FFFFFFF], 0xBDBDBDBD
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90