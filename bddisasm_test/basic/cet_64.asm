    bits 64
    
    db 0xF3, 0x0F, 0x01, 0x28               ; RSTORSSP  qword ptr [rax]
    db 0xF3, 0x0F, 0x01, 0xEA               ; SAVEPREVSSP
    db 0xF3, 0x0F, 0x01, 0xE8               ; SETSSBSY
    db 0xF3, 0x0F, 0x1E, 0xC8               ; RDSSPD    eax
    db 0xF3, 0x48, 0x0F, 0x1E, 0xC8         ; RDSSPQ    rax
    db 0xF3, 0x0F, 0x1E, 0xFA               ; ENDBR32
    db 0xF3, 0x0F, 0x1E, 0xFB               ; ENDBR64
    db 0x66, 0x0F, 0x38, 0xF5, 0x00         ; WRUSSD    dword ptr [rax], eax
    db 0x66, 0x48, 0x0F, 0x38, 0xF5, 0x00   ; WRUSSQ    dword ptr [rax], rax
    db 0x0F, 0x38, 0xF6, 0x00               ; WRSSD    dword ptr [rax], eax
    db 0x48, 0x0F, 0x38, 0xF6, 0x00         ; WRSSQ    dword ptr [rax], rax