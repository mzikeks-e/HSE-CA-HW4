; Disassembly of file: main.obj
; Wed Dec  1 03:08:14 2021
; Type: ELF64
; Syntax: NASM
; Instruction set: AVX, x64



global Quotient
global OutStorehouse
global Random
global GenerateContent
global Init
global Clear
global InRiddle
global InRndRiddle
global InSaying
global InRndSaying
global InAphorism
global InRndAphorism
global InStorehouse
global InRndStorehouse
global InContainer
global InRndContainer
global OutContainer
global ProcessingV22
global PrintError
global main
global PUNCTUATION_SYMBOLS

extern strlen                                           ; near
extern fprintf                                          ; near
extern fwrite                                           ; near
extern rand                                             ; near
extern malloc                                           ; near
extern fgetc                                            ; near
extern puts                                             ; near
extern printf                                           ; near
extern strcmp                                           ; near
extern fopen                                            ; near
extern fgets                                            ; near
extern atoi                                             ; near
extern fclose                                           ; near
extern time                                             ; near
extern srand                                            ; near


SECTION .text                            ; section number 1, code

Quotient:; Function begin
        endbr64                                         ; 0000 _ F3: 0F 1E. FA
        push    rbp                                     ; 0004 _ 55
        mov     rbp, rsp                                ; 0005 _ 48: 89. E5
        push    rbx                                     ; 0008 _ 53
        sub     rsp, 40                                 ; 0009 _ 48: 83. EC, 28
        mov     qword [rbp-28H], rdi                    ; 000D _ 48: 89. 7D, D8
        mov     dword [rbp-14H], 0                      ; 0011 _ C7. 45, EC, 00000000
        mov     dword [rbp-18H], 0                      ; 0018 _ C7. 45, E8, 00000000
        jmp     ?_006                                   ; 001F _ EB, 45

?_001:  mov     dword [rbp-1CH], 0                      ; 0021 _ C7. 45, E4, 00000000
        jmp     ?_004                                   ; 0028 _ EB, 31

?_002:  mov     rdx, qword [rbp-28H]                    ; 002A _ 48: 8B. 55, D8
        mov     eax, dword [rbp-18H]                    ; 002E _ 8B. 45, E8
        cdqe                                            ; 0031 _ 48: 98
        movzx   edx, byte [rdx+rax+4H]                  ; 0033 _ 0F B6. 54 02, 04
        mov     eax, dword [rbp-1CH]                    ; 0038 _ 8B. 45, E4
        cdqe                                            ; 003B _ 48: 98
        lea     rcx, [rel PUNCTUATION_SYMBOLS]          ; 003D _ 48: 8D. 0D, 00000000(rel)
        movzx   eax, byte [rax+rcx]                     ; 0044 _ 0F B6. 04 08
        movsx   dx, dl                                  ; 0048 _ 66: 0F BE. D2
        cbw                                             ; 004C _ 66: 98
        cmp     dx, ax                                  ; 004E _ 66: 39. C2
        jnz     ?_003                                   ; 0051 _ 75, 05
        inc     dword [rbp-14H]                         ; 0053 _ FF. 45, EC
        jmp     ?_005                                   ; 0056 _ EB, 0B

?_003:  inc     dword [rbp-1CH]                         ; 0058 _ FF. 45, E4
?_004:  mov     eax, dword [rbp-1CH]                    ; 005B _ 8B. 45, E4
        cmp     eax, 7                                  ; 005E _ 83. F8, 07
        jbe     ?_002                                   ; 0061 _ 76, C7
?_005:  inc     dword [rbp-18H]                         ; 0063 _ FF. 45, E8
?_006:  mov     eax, dword [rbp-18H]                    ; 0066 _ 8B. 45, E8
        movsxd  rbx, eax                                ; 0069 _ 48: 63. D8
        mov     rax, qword [rbp-28H]                    ; 006C _ 48: 8B. 45, D8
        add     rax, 4                                  ; 0070 _ 48: 83. C0, 04
        mov     rdi, rax                                ; 0074 _ 48: 89. C7
        call    strlen                                  ; 0077 _ E8, 00000000(rel)
        cmp     rbx, rax                                ; 007C _ 48: 39. C3
        jc      ?_001                                   ; 007F _ 72, A0
        vcvtsi2sd xmm1, xmm1, dword [rbp-14H]           ; 0081 _ C5 F3: 2A. 4D, EC
        vmovsd  qword [rbp-30H], xmm1                   ; 0086 _ C5 FB: 11. 4D, D0
        mov     rax, qword [rbp-28H]                    ; 008B _ 48: 8B. 45, D8
        add     rax, 4                                  ; 008F _ 48: 83. C0, 04
        mov     rdi, rax                                ; 0093 _ 48: 89. C7
        call    strlen                                  ; 0096 _ E8, 00000000(rel)
        test    rax, rax                                ; 009B _ 48: 85. C0
        js      ?_007                                   ; 009E _ 78, 07
        vcvtsi2sd xmm0, xmm0, rax                       ; 00A0 _ C4 E1 FB: 2A. C0
        jmp     ?_008                                   ; 00A5 _ EB, 15

?_007:  mov     rdx, rax                                ; 00A7 _ 48: 89. C2
        shr     rdx, 1                                  ; 00AA _ 48: D1. EA
        and     eax, 01H                                ; 00AD _ 83. E0, 01
        or      rdx, rax                                ; 00B0 _ 48: 09. C2
        vcvtsi2sd xmm0, xmm0, rdx                       ; 00B3 _ C4 E1 FB: 2A. C2
        vaddsd  xmm0, xmm0, xmm0                        ; 00B8 _ C5 FB: 58. C0
?_008:  vmovsd  xmm2, qword [rbp-30H]                   ; 00BC _ C5 FB: 10. 55, D0
        vdivsd  xmm0, xmm2, xmm0                        ; 00C1 _ C5 EB: 5E. C0
        add     rsp, 40                                 ; 00C5 _ 48: 83. C4, 28
        pop     rbx                                     ; 00C9 _ 5B
        pop     rbp                                     ; 00CA _ 5D
        ret                                             ; 00CB _ C3
; Quotient End of function

OutStorehouse:; Function begin
        endbr64                                         ; 00CC _ F3: 0F 1E. FA
        push    rbp                                     ; 00D0 _ 55
        mov     rbp, rsp                                ; 00D1 _ 48: 89. E5
        sub     rsp, 16                                 ; 00D4 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 00D8 _ 48: 89. 7D, F8
        mov     qword [rbp-10H], rsi                    ; 00DC _ 48: 89. 75, F0
        mov     rax, qword [rbp-8H]                     ; 00E0 _ 48: 8B. 45, F8
        mov     eax, dword [rax]                        ; 00E4 _ 8B. 00
        cmp     eax, 2                                  ; 00E6 _ 83. F8, 02
        je      ?_011                                   ; 00E9 _ 0F 84, 0000008C
        cmp     eax, 2                                  ; 00EF _ 83. F8, 02
        jg      ?_012                                   ; 00F2 _ 0F 8F, 000000BC
        test    eax, eax                                ; 00F8 _ 85. C0
        jz      ?_009                                   ; 00FA _ 74, 0A
        cmp     eax, 1                                  ; 00FC _ 83. F8, 01
        jz      ?_010                                   ; 00FF _ 74, 41
        jmp     ?_012                                   ; 0101 _ E9, 000000AE

?_009:  mov     rax, qword [rbp-8H]                     ; 0106 _ 48: 8B. 45, F8
        mov     rdi, rax                                ; 010A _ 48: 89. C7
        call    Quotient                                ; 010D _ E8, FFFFFEEE
        mov     rax, qword [rbp-8H]                     ; 0112 _ 48: 8B. 45, F8
        lea     rcx, [rax+1004H]                        ; 0116 _ 48: 8D. 88, 00001004
        mov     rax, qword [rbp-8H]                     ; 011D _ 48: 8B. 45, F8
        lea     rdx, [rax+4H]                           ; 0121 _ 48: 8D. 50, 04
        mov     rax, qword [rbp-10H]                    ; 0125 _ 48: 8B. 45, F0
        lea     rsi, [rel ?_054]                        ; 0129 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0130 _ 48: 89. C7
        mov     eax, 1                                  ; 0133 _ B8, 00000001
        call    fprintf                                 ; 0138 _ E8, 00000000(rel)
        jmp     ?_013                                   ; 013D _ E9, 00000090

?_010:  mov     rax, qword [rbp-8H]                     ; 0142 _ 48: 8B. 45, F8
        mov     rdi, rax                                ; 0146 _ 48: 89. C7
        call    Quotient                                ; 0149 _ E8, FFFFFEB2
        mov     rax, qword [rbp-8H]                     ; 014E _ 48: 8B. 45, F8
        lea     rcx, [rax+1404H]                        ; 0152 _ 48: 8D. 88, 00001404
        mov     rax, qword [rbp-8H]                     ; 0159 _ 48: 8B. 45, F8
        lea     rdx, [rax+4H]                           ; 015D _ 48: 8D. 50, 04
        mov     rax, qword [rbp-10H]                    ; 0161 _ 48: 8B. 45, F0
        lea     rsi, [rel ?_055]                        ; 0165 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 016C _ 48: 89. C7
        mov     eax, 1                                  ; 016F _ B8, 00000001
        call    fprintf                                 ; 0174 _ E8, 00000000(rel)
        jmp     ?_013                                   ; 0179 _ EB, 57

?_011:  mov     rax, qword [rbp-8H]                     ; 017B _ 48: 8B. 45, F8
        mov     rdi, rax                                ; 017F _ 48: 89. C7
        call    Quotient                                ; 0182 _ E8, FFFFFE79
        mov     rax, qword [rbp-8H]                     ; 0187 _ 48: 8B. 45, F8
        lea     rcx, [rax+4H]                           ; 018B _ 48: 8D. 48, 04
        mov     rax, qword [rbp-8H]                     ; 018F _ 48: 8B. 45, F8
        lea     rdx, [rax+1604H]                        ; 0193 _ 48: 8D. 90, 00001604
        mov     rax, qword [rbp-10H]                    ; 019A _ 48: 8B. 45, F0
        lea     rsi, [rel ?_056]                        ; 019E _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 01A5 _ 48: 89. C7
        mov     eax, 1                                  ; 01A8 _ B8, 00000001
        call    fprintf                                 ; 01AD _ E8, 00000000(rel)
        jmp     ?_013                                   ; 01B2 _ EB, 1E

?_012:  mov     rax, qword [rbp-10H]                    ; 01B4 _ 48: 8B. 45, F0
        mov     rcx, rax                                ; 01B8 _ 48: 89. C1
        mov     edx, 31                                 ; 01BB _ BA, 0000001F
        mov     esi, 1                                  ; 01C0 _ BE, 00000001
        lea     rdi, [rel ?_057]                        ; 01C5 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 01CC _ E8, 00000000(rel)
        nop                                             ; 01D1 _ 90
?_013:  nop                                             ; 01D2 _ 90
        leave                                           ; 01D3 _ C9
        ret                                             ; 01D4 _ C3
; OutStorehouse End of function

Random: ; Function begin
        endbr64                                         ; 01D5 _ F3: 0F 1E. FA
        push    rbp                                     ; 01D9 _ 55
        mov     rbp, rsp                                ; 01DA _ 48: 89. E5
        sub     rsp, 16                                 ; 01DD _ 48: 83. EC, 10
        mov     dword [rbp-4H], edi                     ; 01E1 _ 89. 7D, FC
        call    rand                                    ; 01E4 _ E8, 00000000(rel)
        cdq                                             ; 01E9 _ 99
        idiv    dword [rbp-4H]                          ; 01EA _ F7. 7D, FC
        mov     eax, edx                                ; 01ED _ 89. D0
        leave                                           ; 01EF _ C9
        ret                                             ; 01F0 _ C3
; Random End of function

GenerateContent:; Function begin
        endbr64                                         ; 01F1 _ F3: 0F 1E. FA
        push    rbp                                     ; 01F5 _ 55
        mov     rbp, rsp                                ; 01F6 _ 48: 89. E5
        sub     rsp, 32                                 ; 01F9 _ 48: 83. EC, 20
        mov     dword [rbp-14H], edi                    ; 01FD _ 89. 7D, EC
        mov     qword [rbp-20H], rsi                    ; 0200 _ 48: 89. 75, E0
        mov     dword [rbp-4H], 0                       ; 0204 _ C7. 45, FC, 00000000
        jmp     ?_015                                   ; 020B _ EB, 3E

?_014:  call    rand                                    ; 020D _ E8, 00000000(rel)
        movsxd  rdx, eax                                ; 0212 _ 48: 63. D0
        imul    rdx, rdx, 738919105                     ; 0215 _ 48: 69. D2, 2C0B02C1
        shr     rdx, 32                                 ; 021C _ 48: C1. EA, 20
        mov     ecx, edx                                ; 0220 _ 89. D1
        sar     ecx, 4                                  ; 0222 _ C1. F9, 04
        cdq                                             ; 0225 _ 99
        sub     ecx, edx                                ; 0226 _ 29. D1
        mov     edx, ecx                                ; 0228 _ 89. CA
        imul    edx, edx, 93                            ; 022A _ 6B. D2, 5D
        sub     eax, edx                                ; 022D _ 29. D0
        mov     edx, eax                                ; 022F _ 89. C2
        mov     eax, edx                                ; 0231 _ 89. D0
        add     eax, 32                                 ; 0233 _ 83. C0, 20
        mov     ecx, eax                                ; 0236 _ 89. C1
        mov     eax, dword [rbp-4H]                     ; 0238 _ 8B. 45, FC
        cdqe                                            ; 023B _ 48: 98
        mov     rdx, qword [rbp-20H]                    ; 023D _ 48: 8B. 55, E0
        add     rax, rdx                                ; 0241 _ 48: 01. D0
        mov     edx, ecx                                ; 0244 _ 89. CA
        mov     byte [rax], dl                          ; 0246 _ 88. 10
        inc     dword [rbp-4H]                          ; 0248 _ FF. 45, FC
?_015:  mov     eax, dword [rbp-4H]                     ; 024B _ 8B. 45, FC
        cmp     eax, dword [rbp-14H]                    ; 024E _ 3B. 45, EC
        jl      ?_014                                   ; 0251 _ 7C, BA
        mov     eax, dword [rbp-14H]                    ; 0253 _ 8B. 45, EC
        cdqe                                            ; 0256 _ 48: 98
        mov     rdx, qword [rbp-20H]                    ; 0258 _ 48: 8B. 55, E0
        add     rax, rdx                                ; 025C _ 48: 01. D0
        mov     byte [rax], 0                           ; 025F _ C6. 00, 00
        nop                                             ; 0262 _ 90
        leave                                           ; 0263 _ C9
        ret                                             ; 0264 _ C3
; GenerateContent End of function

Init:   ; Function begin
        endbr64                                         ; 0265 _ F3: 0F 1E. FA
        push    rbp                                     ; 0269 _ 55
        mov     rbp, rsp                                ; 026A _ 48: 89. E5
        sub     rsp, 16                                 ; 026D _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 0271 _ 48: 89. 7D, F8
        mov     dword [rbp-0CH], esi                    ; 0275 _ 89. 75, F4
        mov     rax, qword [rbp-8H]                     ; 0278 _ 48: 8B. 45, F8
        mov     dword [rax+4H], 0                       ; 027C _ C7. 40, 04, 00000000
        mov     eax, dword [rbp-0CH]                    ; 0283 _ 8B. 45, F4
        lea     edx, [rax+1H]                           ; 0286 _ 8D. 50, 01
        mov     rax, qword [rbp-8H]                     ; 0289 _ 48: 8B. 45, F8
        mov     dword [rax], edx                        ; 028D _ 89. 10
        mov     eax, dword [rbp-0CH]                    ; 028F _ 8B. 45, F4
        cdqe                                            ; 0292 _ 48: 98
        imul    rax, rax, 6148                          ; 0294 _ 48: 69. C0, 00001804
        mov     rdi, rax                                ; 029B _ 48: 89. C7
        call    malloc                                  ; 029E _ E8, 00000000(rel)
        mov     rdx, rax                                ; 02A3 _ 48: 89. C2
        mov     rax, qword [rbp-8H]                     ; 02A6 _ 48: 8B. 45, F8
        mov     qword [rax+8H], rdx                     ; 02AA _ 48: 89. 50, 08
        nop                                             ; 02AE _ 90
        leave                                           ; 02AF _ C9
        ret                                             ; 02B0 _ C3
; Init End of function

Clear:  ; Function begin
        endbr64                                         ; 02B1 _ F3: 0F 1E. FA
        push    rbp                                     ; 02B5 _ 55
        mov     rbp, rsp                                ; 02B6 _ 48: 89. E5
        mov     qword [rbp-8H], rdi                     ; 02B9 _ 48: 89. 7D, F8
        mov     rax, qword [rbp-8H]                     ; 02BD _ 48: 8B. 45, F8
        mov     dword [rax+4H], 0                       ; 02C1 _ C7. 40, 04, 00000000
        nop                                             ; 02C8 _ 90
        pop     rbp                                     ; 02C9 _ 5D
        ret                                             ; 02CA _ C3
; Clear End of function

InRiddle:; Function begin
        endbr64                                         ; 02CB _ F3: 0F 1E. FA
        push    rbp                                     ; 02CF _ 55
        mov     rbp, rsp                                ; 02D0 _ 48: 89. E5
        sub     rsp, 32                                 ; 02D3 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 02D7 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 02DB _ 48: 89. 75, E0
        mov     dword [rbp-4H], 0                       ; 02DF _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 02E6 _ EB, 16

?_016:  mov     eax, dword [rbp-4H]                     ; 02E8 _ 8B. 45, FC
        lea     edx, [rax+1H]                           ; 02EB _ 8D. 50, 01
        mov     dword [rbp-4H], edx                     ; 02EE _ 89. 55, FC
        mov     rdx, qword [rbp-18H]                    ; 02F1 _ 48: 8B. 55, E8
        cdqe                                            ; 02F5 _ 48: 98
        movzx   ecx, byte [rbp-5H]                      ; 02F7 _ 0F B6. 4D, FB
        mov     byte [rdx+rax], cl                      ; 02FB _ 88. 0C 02
?_017:  mov     rax, qword [rbp-20H]                    ; 02FE _ 48: 8B. 45, E0
        mov     rdi, rax                                ; 0302 _ 48: 89. C7
        call    fgetc                                   ; 0305 _ E8, 00000000(rel)
        mov     byte [rbp-5H], al                       ; 030A _ 88. 45, FB
        movsx   ax, byte [rbp-5H]                       ; 030D _ 66: 0F BE. 45, FB
        cmp     ax, 10                                  ; 0312 _ 66: 83. F8, 0A
        jz      ?_018                                   ; 0316 _ 74, 0B
        movsx   ax, byte [rbp-5H]                       ; 0318 _ 66: 0F BE. 45, FB
        cmp     ax, -1                                  ; 031D _ 66: 83. F8, FF
        jnz     ?_016                                   ; 0321 _ 75, C5
?_018:  mov     rdx, qword [rbp-18H]                    ; 0323 _ 48: 8B. 55, E8
        mov     eax, dword [rbp-4H]                     ; 0327 _ 8B. 45, FC
        cdqe                                            ; 032A _ 48: 98
        mov     byte [rdx+rax], 0                       ; 032C _ C6. 04 02, 00
        nop                                             ; 0330 _ 90
        leave                                           ; 0331 _ C9
        ret                                             ; 0332 _ C3
; InRiddle End of function

InRndRiddle:; Function begin
        endbr64                                         ; 0333 _ F3: 0F 1E. FA
        push    rbp                                     ; 0337 _ 55
        mov     rbp, rsp                                ; 0338 _ 48: 89. E5
        push    rbx                                     ; 033B _ 53
        sub     rsp, 24                                 ; 033C _ 48: 83. EC, 18
        mov     qword [rbp-18H], rdi                    ; 0340 _ 48: 89. 7D, E8
        mov     rbx, qword [rbp-18H]                    ; 0344 _ 48: 8B. 5D, E8
        mov     edi, 10                                 ; 0348 _ BF, 0000000A
        call    Random                                  ; 034D _ E8, FFFFFE83
        mov     rsi, rbx                                ; 0352 _ 48: 89. DE
        mov     edi, eax                                ; 0355 _ 89. C7
        call    GenerateContent                         ; 0357 _ E8, FFFFFE95
        nop                                             ; 035C _ 90
        add     rsp, 24                                 ; 035D _ 48: 83. C4, 18
        pop     rbx                                     ; 0361 _ 5B
        pop     rbp                                     ; 0362 _ 5D
        ret                                             ; 0363 _ C3
; InRndRiddle End of function

InSaying:; Function begin
        endbr64                                         ; 0364 _ F3: 0F 1E. FA
        push    rbp                                     ; 0368 _ 55
        mov     rbp, rsp                                ; 0369 _ 48: 89. E5
        sub     rsp, 32                                 ; 036C _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0370 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 0374 _ 48: 89. 75, E0
        mov     dword [rbp-4H], 0                       ; 0378 _ C7. 45, FC, 00000000
        jmp     ?_020                                   ; 037F _ EB, 16

?_019:  mov     eax, dword [rbp-4H]                     ; 0381 _ 8B. 45, FC
        lea     edx, [rax+1H]                           ; 0384 _ 8D. 50, 01
        mov     dword [rbp-4H], edx                     ; 0387 _ 89. 55, FC
        mov     rdx, qword [rbp-18H]                    ; 038A _ 48: 8B. 55, E8
        cdqe                                            ; 038E _ 48: 98
        movzx   ecx, byte [rbp-5H]                      ; 0390 _ 0F B6. 4D, FB
        mov     byte [rdx+rax], cl                      ; 0394 _ 88. 0C 02
?_020:  mov     rax, qword [rbp-20H]                    ; 0397 _ 48: 8B. 45, E0
        mov     rdi, rax                                ; 039B _ 48: 89. C7
        call    fgetc                                   ; 039E _ E8, 00000000(rel)
        mov     byte [rbp-5H], al                       ; 03A3 _ 88. 45, FB
        movsx   ax, byte [rbp-5H]                       ; 03A6 _ 66: 0F BE. 45, FB
        cmp     ax, 10                                  ; 03AB _ 66: 83. F8, 0A
        jz      ?_021                                   ; 03AF _ 74, 0B
        movsx   ax, byte [rbp-5H]                       ; 03B1 _ 66: 0F BE. 45, FB
        cmp     ax, -1                                  ; 03B6 _ 66: 83. F8, FF
        jnz     ?_019                                   ; 03BA _ 75, C5
?_021:  mov     rdx, qword [rbp-18H]                    ; 03BC _ 48: 8B. 55, E8
        mov     eax, dword [rbp-4H]                     ; 03C0 _ 8B. 45, FC
        cdqe                                            ; 03C3 _ 48: 98
        mov     byte [rdx+rax], 0                       ; 03C5 _ C6. 04 02, 00
        nop                                             ; 03C9 _ 90
        leave                                           ; 03CA _ C9
        ret                                             ; 03CB _ C3
; InSaying End of function

InRndSaying:; Function begin
        endbr64                                         ; 03CC _ F3: 0F 1E. FA
        push    rbp                                     ; 03D0 _ 55
        mov     rbp, rsp                                ; 03D1 _ 48: 89. E5
        push    rbx                                     ; 03D4 _ 53
        sub     rsp, 24                                 ; 03D5 _ 48: 83. EC, 18
        mov     qword [rbp-18H], rdi                    ; 03D9 _ 48: 89. 7D, E8
        mov     rbx, qword [rbp-18H]                    ; 03DD _ 48: 8B. 5D, E8
        mov     edi, 10                                 ; 03E1 _ BF, 0000000A
        call    Random                                  ; 03E6 _ E8, FFFFFDEA
        mov     rsi, rbx                                ; 03EB _ 48: 89. DE
        mov     edi, eax                                ; 03EE _ 89. C7
        call    GenerateContent                         ; 03F0 _ E8, FFFFFDFC
        nop                                             ; 03F5 _ 90
        add     rsp, 24                                 ; 03F6 _ 48: 83. C4, 18
        pop     rbx                                     ; 03FA _ 5B
        pop     rbp                                     ; 03FB _ 5D
        ret                                             ; 03FC _ C3
; InRndSaying End of function

InAphorism:; Function begin
        endbr64                                         ; 03FD _ F3: 0F 1E. FA
        push    rbp                                     ; 0401 _ 55
        mov     rbp, rsp                                ; 0402 _ 48: 89. E5
        sub     rsp, 32                                 ; 0405 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0409 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 040D _ 48: 89. 75, E0
        mov     dword [rbp-4H], 0                       ; 0411 _ C7. 45, FC, 00000000
        jmp     ?_023                                   ; 0418 _ EB, 16

?_022:  mov     eax, dword [rbp-4H]                     ; 041A _ 8B. 45, FC
        lea     edx, [rax+1H]                           ; 041D _ 8D. 50, 01
        mov     dword [rbp-4H], edx                     ; 0420 _ 89. 55, FC
        mov     rdx, qword [rbp-18H]                    ; 0423 _ 48: 8B. 55, E8
        cdqe                                            ; 0427 _ 48: 98
        movzx   ecx, byte [rbp-5H]                      ; 0429 _ 0F B6. 4D, FB
        mov     byte [rdx+rax], cl                      ; 042D _ 88. 0C 02
?_023:  mov     rax, qword [rbp-20H]                    ; 0430 _ 48: 8B. 45, E0
        mov     rdi, rax                                ; 0434 _ 48: 89. C7
        call    fgetc                                   ; 0437 _ E8, 00000000(rel)
        mov     byte [rbp-5H], al                       ; 043C _ 88. 45, FB
        movsx   ax, byte [rbp-5H]                       ; 043F _ 66: 0F BE. 45, FB
        cmp     ax, 10                                  ; 0444 _ 66: 83. F8, 0A
        jz      ?_024                                   ; 0448 _ 74, 0B
        movsx   ax, byte [rbp-5H]                       ; 044A _ 66: 0F BE. 45, FB
        cmp     ax, -1                                  ; 044F _ 66: 83. F8, FF
        jnz     ?_022                                   ; 0453 _ 75, C5
?_024:  mov     rdx, qword [rbp-18H]                    ; 0455 _ 48: 8B. 55, E8
        mov     eax, dword [rbp-4H]                     ; 0459 _ 8B. 45, FC
        cdqe                                            ; 045C _ 48: 98
        mov     byte [rdx+rax], 0                       ; 045E _ C6. 04 02, 00
        nop                                             ; 0462 _ 90
        leave                                           ; 0463 _ C9
        ret                                             ; 0464 _ C3
; InAphorism End of function

InRndAphorism:; Function begin
        endbr64                                         ; 0465 _ F3: 0F 1E. FA
        push    rbp                                     ; 0469 _ 55
        mov     rbp, rsp                                ; 046A _ 48: 89. E5
        push    rbx                                     ; 046D _ 53
        sub     rsp, 24                                 ; 046E _ 48: 83. EC, 18
        mov     qword [rbp-18H], rdi                    ; 0472 _ 48: 89. 7D, E8
        mov     rbx, qword [rbp-18H]                    ; 0476 _ 48: 8B. 5D, E8
        mov     edi, 15                                 ; 047A _ BF, 0000000F
        call    Random                                  ; 047F _ E8, FFFFFD51
        mov     rsi, rbx                                ; 0484 _ 48: 89. DE
        mov     edi, eax                                ; 0487 _ 89. C7
        call    GenerateContent                         ; 0489 _ E8, FFFFFD63
        nop                                             ; 048E _ 90
        add     rsp, 24                                 ; 048F _ 48: 83. C4, 18
        pop     rbx                                     ; 0493 _ 5B
        pop     rbp                                     ; 0494 _ 5D
        ret                                             ; 0495 _ C3
; InRndAphorism End of function

InStorehouse:; Function begin
        endbr64                                         ; 0496 _ F3: 0F 1E. FA
        push    rbp                                     ; 049A _ 55
        mov     rbp, rsp                                ; 049B _ 48: 89. E5
        sub     rsp, 48                                 ; 049E _ 48: 83. EC, 30
        mov     qword [rbp-18H], rdi                    ; 04A2 _ 48: 89. 7D, E8
        mov     eax, esi                                ; 04A6 _ 89. F0
        mov     qword [rbp-28H], rdx                    ; 04A8 _ 48: 89. 55, D8
        mov     byte [rbp-1CH], al                      ; 04AC _ 88. 45, E4
        mov     rax, qword [rbp-18H]                    ; 04AF _ 48: 8B. 45, E8
        mov     rdi, rax                                ; 04B3 _ 48: 89. C7
        call    fgetc                                   ; 04B6 _ E8, 00000000(rel)
        mov     byte [rbp-5H], al                       ; 04BB _ 88. 45, FB
        mov     dword [rbp-4H], 0                       ; 04BE _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 04C5 _ EB, 17

?_025:  mov     eax, dword [rbp-4H]                     ; 04C7 _ 8B. 45, FC
        lea     edx, [rax+1H]                           ; 04CA _ 8D. 50, 01
        mov     dword [rbp-4H], edx                     ; 04CD _ 89. 55, FC
        mov     rdx, qword [rbp-28H]                    ; 04D0 _ 48: 8B. 55, D8
        cdqe                                            ; 04D4 _ 48: 98
        movzx   ecx, byte [rbp-5H]                      ; 04D6 _ 0F B6. 4D, FB
        mov     byte [rdx+rax+4H], cl                   ; 04DA _ 88. 4C 02, 04
?_026:  mov     rax, qword [rbp-18H]                    ; 04DE _ 48: 8B. 45, E8
        mov     rdi, rax                                ; 04E2 _ 48: 89. C7
        call    fgetc                                   ; 04E5 _ E8, 00000000(rel)
        mov     byte [rbp-5H], al                       ; 04EA _ 88. 45, FB
        movsx   ax, byte [rbp-5H]                       ; 04ED _ 66: 0F BE. 45, FB
        cmp     ax, 32                                  ; 04F2 _ 66: 83. F8, 20
        jnz     ?_025                                   ; 04F6 _ 75, CF
        mov     rdx, qword [rbp-28H]                    ; 04F8 _ 48: 8B. 55, D8
        mov     eax, dword [rbp-4H]                     ; 04FC _ 8B. 45, FC
        cdqe                                            ; 04FF _ 48: 98
        mov     byte [rdx+rax+4H], 0                    ; 0501 _ C6. 44 02, 04, 00
        movsx   ax, byte [rbp-1CH]                      ; 0506 _ 66: 0F BE. 45, E4
        cmp     ax, 48                                  ; 050B _ 66: 83. F8, 30
        jnz     ?_027                                   ; 050F _ 75, 25
        mov     rax, qword [rbp-28H]                    ; 0511 _ 48: 8B. 45, D8
        mov     dword [rax], 0                          ; 0515 _ C7. 00, 00000000
        mov     rax, qword [rbp-28H]                    ; 051B _ 48: 8B. 45, D8
        add     rax, 4100                               ; 051F _ 48: 05, 00001004
        mov     rdx, qword [rbp-18H]                    ; 0525 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0529 _ 48: 89. D6
        mov     rdi, rax                                ; 052C _ 48: 89. C7
        call    InRiddle                                ; 052F _ E8, FFFFFD97
        jmp     ?_029                                   ; 0534 _ EB, 53

?_027:  movsx   ax, byte [rbp-1CH]                      ; 0536 _ 66: 0F BE. 45, E4
        cmp     ax, 49                                  ; 053B _ 66: 83. F8, 31
        jnz     ?_028                                   ; 053F _ 75, 25
        mov     rax, qword [rbp-28H]                    ; 0541 _ 48: 8B. 45, D8
        mov     dword [rax], 1                          ; 0545 _ C7. 00, 00000001
        mov     rax, qword [rbp-28H]                    ; 054B _ 48: 8B. 45, D8
        add     rax, 5124                               ; 054F _ 48: 05, 00001404
        mov     rdx, qword [rbp-18H]                    ; 0555 _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 0559 _ 48: 89. D6
        mov     rdi, rax                                ; 055C _ 48: 89. C7
        call    InAphorism                              ; 055F _ E8, FFFFFE99
        jmp     ?_029                                   ; 0564 _ EB, 23

?_028:  mov     rax, qword [rbp-28H]                    ; 0566 _ 48: 8B. 45, D8
        mov     dword [rax], 2                          ; 056A _ C7. 00, 00000002
        mov     rax, qword [rbp-28H]                    ; 0570 _ 48: 8B. 45, D8
        add     rax, 5636                               ; 0574 _ 48: 05, 00001604
        mov     rdx, qword [rbp-18H]                    ; 057A _ 48: 8B. 55, E8
        mov     rsi, rdx                                ; 057E _ 48: 89. D6
        mov     rdi, rax                                ; 0581 _ 48: 89. C7
        call    InSaying                                ; 0584 _ E8, FFFFFDDB
?_029:  nop                                             ; 0589 _ 90
        leave                                           ; 058A _ C9
        ret                                             ; 058B _ C3
; InStorehouse End of function

InRndStorehouse:; Function begin
        endbr64                                         ; 058C _ F3: 0F 1E. FA
        push    rbp                                     ; 0590 _ 55
        mov     rbp, rsp                                ; 0591 _ 48: 89. E5
        push    rbx                                     ; 0594 _ 53
        sub     rsp, 40                                 ; 0595 _ 48: 83. EC, 28
        mov     qword [rbp-28H], rdi                    ; 0599 _ 48: 89. 7D, D8
        call    rand                                    ; 059D _ E8, 00000000(rel)
        mov     edx, eax                                ; 05A2 _ 89. C2
        movsxd  rax, edx                                ; 05A4 _ 48: 63. C2
        imul    rax, rax, 1431655766                    ; 05A7 _ 48: 69. C0, 55555556
        shr     rax, 32                                 ; 05AE _ 48: C1. E8, 20
        mov     rcx, rax                                ; 05B2 _ 48: 89. C1
        mov     eax, edx                                ; 05B5 _ 89. D0
        sar     eax, 31                                 ; 05B7 _ C1. F8, 1F
        mov     esi, ecx                                ; 05BA _ 89. CE
        sub     esi, eax                                ; 05BC _ 29. C6
        mov     eax, esi                                ; 05BE _ 89. F0
        mov     dword [rbp-14H], eax                    ; 05C0 _ 89. 45, EC
        mov     ecx, dword [rbp-14H]                    ; 05C3 _ 8B. 4D, EC
        mov     eax, ecx                                ; 05C6 _ 89. C8
        add     eax, eax                                ; 05C8 _ 01. C0
        add     eax, ecx                                ; 05CA _ 01. C8
        sub     edx, eax                                ; 05CC _ 29. C2
        mov     eax, edx                                ; 05CE _ 89. D0
        mov     dword [rbp-14H], eax                    ; 05D0 _ 89. 45, EC
        mov     rax, qword [rbp-28H]                    ; 05D3 _ 48: 8B. 45, D8
        lea     rbx, [rax+4H]                           ; 05D7 _ 48: 8D. 58, 04
        call    rand                                    ; 05DB _ E8, 00000000(rel)
        mov     edx, eax                                ; 05E0 _ 89. C2
        movsxd  rax, edx                                ; 05E2 _ 48: 63. C2
        imul    rax, rax, 1374389535                    ; 05E5 _ 48: 69. C0, 51EB851F
        shr     rax, 32                                 ; 05EC _ 48: C1. E8, 20
        mov     ecx, eax                                ; 05F0 _ 89. C1
        sar     ecx, 4                                  ; 05F2 _ C1. F9, 04
        mov     eax, edx                                ; 05F5 _ 89. D0
        sar     eax, 31                                 ; 05F7 _ C1. F8, 1F
        sub     ecx, eax                                ; 05FA _ 29. C1
        mov     eax, ecx                                ; 05FC _ 89. C8
        imul    eax, eax, 50                            ; 05FE _ 6B. C0, 32
        sub     edx, eax                                ; 0601 _ 29. C2
        mov     eax, edx                                ; 0603 _ 89. D0
        mov     rsi, rbx                                ; 0605 _ 48: 89. DE
        mov     edi, eax                                ; 0608 _ 89. C7
        call    GenerateContent                         ; 060A _ E8, FFFFFBE2
        cmp     dword [rbp-14H], 0                      ; 060F _ 83. 7D, EC, 00
        jnz     ?_030                                   ; 0613 _ 75, 1E
        mov     rax, qword [rbp-28H]                    ; 0615 _ 48: 8B. 45, D8
        mov     dword [rax], 0                          ; 0619 _ C7. 00, 00000000
        mov     rax, qword [rbp-28H]                    ; 061F _ 48: 8B. 45, D8
        add     rax, 4100                               ; 0623 _ 48: 05, 00001004
        mov     rdi, rax                                ; 0629 _ 48: 89. C7
        call    InRndRiddle                             ; 062C _ E8, FFFFFD02
        jmp     ?_032                                   ; 0631 _ EB, 40

?_030:  cmp     dword [rbp-14H], 1                      ; 0633 _ 83. 7D, EC, 01
        jnz     ?_031                                   ; 0637 _ 75, 1E
        mov     rax, qword [rbp-28H]                    ; 0639 _ 48: 8B. 45, D8
        mov     dword [rax], 1                          ; 063D _ C7. 00, 00000001
        mov     rax, qword [rbp-28H]                    ; 0643 _ 48: 8B. 45, D8
        add     rax, 5124                               ; 0647 _ 48: 05, 00001404
        mov     rdi, rax                                ; 064D _ 48: 89. C7
        call    InRndAphorism                           ; 0650 _ E8, FFFFFE10
        jmp     ?_032                                   ; 0655 _ EB, 1C

?_031:  mov     rax, qword [rbp-28H]                    ; 0657 _ 48: 8B. 45, D8
        mov     dword [rax], 2                          ; 065B _ C7. 00, 00000002
        mov     rax, qword [rbp-28H]                    ; 0661 _ 48: 8B. 45, D8
        add     rax, 5636                               ; 0665 _ 48: 05, 00001604
        mov     rdi, rax                                ; 066B _ 48: 89. C7
        call    InRndSaying                             ; 066E _ E8, FFFFFD59
?_032:  nop                                             ; 0673 _ 90
        add     rsp, 40                                 ; 0674 _ 48: 83. C4, 28
        pop     rbx                                     ; 0678 _ 5B
        pop     rbp                                     ; 0679 _ 5D
        ret                                             ; 067A _ C3
; InRndStorehouse End of function

InContainer:; Function begin
        endbr64                                         ; 067B _ F3: 0F 1E. FA
        push    rbp                                     ; 067F _ 55
        mov     rbp, rsp                                ; 0680 _ 48: 89. E5
        sub     rsp, 32                                 ; 0683 _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0687 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 068B _ 48: 89. 75, E0
        jmp     ?_034                                   ; 068F _ EB, 3E

?_033:  mov     rax, qword [rbp-18H]                    ; 0691 _ 48: 8B. 45, E8
        mov     rdx, qword [rax+8H]                     ; 0695 _ 48: 8B. 50, 08
        mov     rax, qword [rbp-18H]                    ; 0699 _ 48: 8B. 45, E8
        mov     eax, dword [rax+4H]                     ; 069D _ 8B. 40, 04
        cdqe                                            ; 06A0 _ 48: 98
        imul    rax, rax, 6148                          ; 06A2 _ 48: 69. C0, 00001804
        add     rdx, rax                                ; 06A9 _ 48: 01. C2
        movsx   eax, byte [rbp-1H]                      ; 06AC _ 0F BE. 45, FF
        mov     rcx, qword [rbp-20H]                    ; 06B0 _ 48: 8B. 4D, E0
        mov     esi, eax                                ; 06B4 _ 89. C6
        mov     rdi, rcx                                ; 06B6 _ 48: 89. CF
        call    InStorehouse                            ; 06B9 _ E8, FFFFFDD8
        mov     rax, qword [rbp-18H]                    ; 06BE _ 48: 8B. 45, E8
        mov     eax, dword [rax+4H]                     ; 06C2 _ 8B. 40, 04
        lea     edx, [rax+1H]                           ; 06C5 _ 8D. 50, 01
        mov     rax, qword [rbp-18H]                    ; 06C8 _ 48: 8B. 45, E8
        mov     dword [rax+4H], edx                     ; 06CC _ 89. 50, 04
?_034:  mov     rax, qword [rbp-20H]                    ; 06CF _ 48: 8B. 45, E0
        mov     rdi, rax                                ; 06D3 _ 48: 89. C7
        call    fgetc                                   ; 06D6 _ E8, 00000000(rel)
        mov     byte [rbp-1H], al                       ; 06DB _ 88. 45, FF
        movsx   ax, byte [rbp-1H]                       ; 06DE _ 66: 0F BE. 45, FF
        cmp     ax, -1                                  ; 06E3 _ 66: 83. F8, FF
        jnz     ?_033                                   ; 06E7 _ 75, A8
        nop                                             ; 06E9 _ 90
        nop                                             ; 06EA _ 90
        leave                                           ; 06EB _ C9
        ret                                             ; 06EC _ C3
; InContainer End of function

InRndContainer:; Function begin
        endbr64                                         ; 06ED _ F3: 0F 1E. FA
        push    rbp                                     ; 06F1 _ 55
        mov     rbp, rsp                                ; 06F2 _ 48: 89. E5
        sub     rsp, 16                                 ; 06F5 _ 48: 83. EC, 10
        mov     qword [rbp-8H], rdi                     ; 06F9 _ 48: 89. 7D, F8
        mov     dword [rbp-0CH], esi                    ; 06FD _ 89. 75, F4
        jmp     ?_036                                   ; 0700 _ EB, 34

?_035:  mov     rax, qword [rbp-8H]                     ; 0702 _ 48: 8B. 45, F8
        mov     rdx, qword [rax+8H]                     ; 0706 _ 48: 8B. 50, 08
        mov     rax, qword [rbp-8H]                     ; 070A _ 48: 8B. 45, F8
        mov     eax, dword [rax+4H]                     ; 070E _ 8B. 40, 04
        cdqe                                            ; 0711 _ 48: 98
        imul    rax, rax, 6148                          ; 0713 _ 48: 69. C0, 00001804
        add     rax, rdx                                ; 071A _ 48: 01. D0
        mov     rdi, rax                                ; 071D _ 48: 89. C7
        call    InRndStorehouse                         ; 0720 _ E8, FFFFFE67
        mov     rax, qword [rbp-8H]                     ; 0725 _ 48: 8B. 45, F8
        mov     eax, dword [rax+4H]                     ; 0729 _ 8B. 40, 04
        lea     edx, [rax+1H]                           ; 072C _ 8D. 50, 01
        mov     rax, qword [rbp-8H]                     ; 072F _ 48: 8B. 45, F8
        mov     dword [rax+4H], edx                     ; 0733 _ 89. 50, 04
?_036:  mov     rax, qword [rbp-8H]                     ; 0736 _ 48: 8B. 45, F8
        mov     eax, dword [rax+4H]                     ; 073A _ 8B. 40, 04
        cmp     dword [rbp-0CH], eax                    ; 073D _ 39. 45, F4
        jg      ?_035                                   ; 0740 _ 7F, C0
        nop                                             ; 0742 _ 90
        nop                                             ; 0743 _ 90
        leave                                           ; 0744 _ C9
        ret                                             ; 0745 _ C3
; InRndContainer End of function

OutContainer:; Function begin
        endbr64                                         ; 0746 _ F3: 0F 1E. FA
        push    rbp                                     ; 074A _ 55
        mov     rbp, rsp                                ; 074B _ 48: 89. E5
        sub     rsp, 32                                 ; 074E _ 48: 83. EC, 20
        mov     qword [rbp-18H], rdi                    ; 0752 _ 48: 89. 7D, E8
        mov     qword [rbp-20H], rsi                    ; 0756 _ 48: 89. 75, E0
        mov     rax, qword [rbp-18H]                    ; 075A _ 48: 8B. 45, E8
        mov     edx, dword [rax+4H]                     ; 075E _ 8B. 50, 04
        mov     rax, qword [rbp-20H]                    ; 0761 _ 48: 8B. 45, E0
        lea     rsi, [rel ?_058]                        ; 0765 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 076C _ 48: 89. C7
        mov     eax, 0                                  ; 076F _ B8, 00000000
        call    fprintf                                 ; 0774 _ E8, 00000000(rel)
        mov     dword [rbp-4H], 0                       ; 0779 _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 0780 _ EB, 29

?_037:  mov     rax, qword [rbp-18H]                    ; 0782 _ 48: 8B. 45, E8
        mov     rdx, qword [rax+8H]                     ; 0786 _ 48: 8B. 50, 08
        mov     eax, dword [rbp-4H]                     ; 078A _ 8B. 45, FC
        cdqe                                            ; 078D _ 48: 98
        imul    rax, rax, 6148                          ; 078F _ 48: 69. C0, 00001804
        add     rax, rdx                                ; 0796 _ 48: 01. D0
        mov     rdx, qword [rbp-20H]                    ; 0799 _ 48: 8B. 55, E0
        mov     rsi, rdx                                ; 079D _ 48: 89. D6
        mov     rdi, rax                                ; 07A0 _ 48: 89. C7
        call    OutStorehouse                           ; 07A3 _ E8, FFFFF924
        inc     dword [rbp-4H]                          ; 07A8 _ FF. 45, FC
?_038:  mov     rax, qword [rbp-18H]                    ; 07AB _ 48: 8B. 45, E8
        mov     eax, dword [rax+4H]                     ; 07AF _ 8B. 40, 04
        cmp     dword [rbp-4H], eax                     ; 07B2 _ 39. 45, FC
        jl      ?_037                                   ; 07B5 _ 7C, CB
        nop                                             ; 07B7 _ 90
        nop                                             ; 07B8 _ 90
        leave                                           ; 07B9 _ C9
        ret                                             ; 07BA _ C3
; OutContainer End of function

ProcessingV22:; Function begin
        endbr64                                         ; 07BB _ F3: 0F 1E. FA
        push    rbp                                     ; 07BF _ 55
        mov     rbp, rsp                                ; 07C0 _ 48: 89. E5
        sub     rsp, 48                                 ; 07C3 _ 48: 83. EC, 30
        mov     qword [rbp-28H], rdi                    ; 07C7 _ 48: 89. 7D, D8
        mov     qword [rbp-30H], rsi                    ; 07CB _ 48: 89. 75, D0
        vxorpd  xmm0, xmm0, xmm0                        ; 07CF _ C5 F9: 57. C0
        vmovsd  qword [rbp-8H], xmm0                    ; 07D3 _ C5 FB: 11. 45, F8
        mov     dword [rbp-0CH], 0                      ; 07D8 _ C7. 45, F4, 00000000
        jmp     ?_040                                   ; 07DF _ EB, 30

?_039:  mov     rax, qword [rbp-28H]                    ; 07E1 _ 48: 8B. 45, D8
        mov     rdx, qword [rax+8H]                     ; 07E5 _ 48: 8B. 50, 08
        mov     eax, dword [rbp-0CH]                    ; 07E9 _ 8B. 45, F4
        cdqe                                            ; 07EC _ 48: 98
        imul    rax, rax, 6148                          ; 07EE _ 48: 69. C0, 00001804
        add     rax, rdx                                ; 07F5 _ 48: 01. D0
        mov     rdi, rax                                ; 07F8 _ 48: 89. C7
        call    Quotient                                ; 07FB _ E8, FFFFF800
        vmovsd  xmm1, qword [rbp-8H]                    ; 0800 _ C5 FB: 10. 4D, F8
        vaddsd  xmm0, xmm1, xmm0                        ; 0805 _ C5 F3: 58. C0
        vmovsd  qword [rbp-8H], xmm0                    ; 0809 _ C5 FB: 11. 45, F8
        inc     dword [rbp-0CH]                         ; 080E _ FF. 45, F4
?_040:  mov     rax, qword [rbp-28H]                    ; 0811 _ 48: 8B. 45, D8
        mov     eax, dword [rax+4H]                     ; 0815 _ 8B. 40, 04
        cmp     dword [rbp-0CH], eax                    ; 0818 _ 39. 45, F4
        jl      ?_039                                   ; 081B _ 7C, C4
        mov     rax, qword [rbp-28H]                    ; 081D _ 48: 8B. 45, D8
        mov     eax, dword [rax+4H]                     ; 0821 _ 8B. 40, 04
        vcvtsi2sd xmm0, xmm0, eax                       ; 0824 _ C5 FB: 2A. C0
        vmovsd  xmm1, qword [rbp-8H]                    ; 0828 _ C5 FB: 10. 4D, F8
        vdivsd  xmm0, xmm1, xmm0                        ; 082D _ C5 F3: 5E. C0
        vmovsd  qword [rbp-20H], xmm0                   ; 0831 _ C5 FB: 11. 45, E0
        mov     rdx, qword [rbp-20H]                    ; 0836 _ 48: 8B. 55, E0
        mov     rax, qword [rbp-30H]                    ; 083A _ 48: 8B. 45, D0
        vmovq   xmm0, rdx                               ; 083E _ C4 E1 F9: 6E. C2
        lea     rsi, [rel ?_059]                        ; 0843 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 084A _ 48: 89. C7
        mov     eax, 1                                  ; 084D _ B8, 00000001
        call    fprintf                                 ; 0852 _ E8, 00000000(rel)
        mov     rax, qword [rbp-30H]                    ; 0857 _ 48: 8B. 45, D0
        mov     rcx, rax                                ; 085B _ 48: 89. C1
        mov     edx, 21                                 ; 085E _ BA, 00000015
        mov     esi, 1                                  ; 0863 _ BE, 00000001
        lea     rdi, [rel ?_060]                        ; 0868 _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 086F _ E8, 00000000(rel)
        mov     dword [rbp-10H], 0                      ; 0874 _ C7. 45, F0, 00000000
        jmp     ?_043                                   ; 087B _ EB, 53

?_041:  mov     rax, qword [rbp-28H]                    ; 087D _ 48: 8B. 45, D8
        mov     rdx, qword [rax+8H]                     ; 0881 _ 48: 8B. 50, 08
        mov     eax, dword [rbp-10H]                    ; 0885 _ 8B. 45, F0
        cdqe                                            ; 0888 _ 48: 98
        imul    rax, rax, 6148                          ; 088A _ 48: 69. C0, 00001804
        add     rax, rdx                                ; 0891 _ 48: 01. D0
        mov     rdi, rax                                ; 0894 _ 48: 89. C7
        call    Quotient                                ; 0897 _ E8, FFFFF764
        vmovsd  xmm1, qword [rbp-20H]                   ; 089C _ C5 FB: 10. 4D, E0
        vcomisd xmm1, xmm0                              ; 08A1 _ C5 F9: 2F. C8
        jc      ?_042                                   ; 08A5 _ 72, 26
        mov     rax, qword [rbp-28H]                    ; 08A7 _ 48: 8B. 45, D8
        mov     rdx, qword [rax+8H]                     ; 08AB _ 48: 8B. 50, 08
        mov     eax, dword [rbp-10H]                    ; 08AF _ 8B. 45, F0
        cdqe                                            ; 08B2 _ 48: 98
        imul    rax, rax, 6148                          ; 08B4 _ 48: 69. C0, 00001804
        add     rax, rdx                                ; 08BB _ 48: 01. D0
        mov     rdx, qword [rbp-30H]                    ; 08BE _ 48: 8B. 55, D0
        mov     rsi, rdx                                ; 08C2 _ 48: 89. D6
        mov     rdi, rax                                ; 08C5 _ 48: 89. C7
        call    OutStorehouse                           ; 08C8 _ E8, FFFFF7FF
?_042:  inc     dword [rbp-10H]                         ; 08CD _ FF. 45, F0
?_043:  mov     rax, qword [rbp-28H]                    ; 08D0 _ 48: 8B. 45, D8
        mov     eax, dword [rax+4H]                     ; 08D4 _ 8B. 40, 04
        cmp     dword [rbp-10H], eax                    ; 08D7 _ 39. 45, F0
        jl      ?_041                                   ; 08DA _ 7C, A1
        mov     dword [rbp-14H], 0                      ; 08DC _ C7. 45, EC, 00000000
        jmp     ?_046                                   ; 08E3 _ EB, 4F

?_044:  mov     rax, qword [rbp-28H]                    ; 08E5 _ 48: 8B. 45, D8
        mov     rdx, qword [rax+8H]                     ; 08E9 _ 48: 8B. 50, 08
        mov     eax, dword [rbp-14H]                    ; 08ED _ 8B. 45, EC
        cdqe                                            ; 08F0 _ 48: 98
        imul    rax, rax, 6148                          ; 08F2 _ 48: 69. C0, 00001804
        add     rax, rdx                                ; 08F9 _ 48: 01. D0
        mov     rdi, rax                                ; 08FC _ 48: 89. C7
        call    Quotient                                ; 08FF _ E8, FFFFF6FC
        vcomisd xmm0, qword [rbp-20H]                   ; 0904 _ C5 F9: 2F. 45, E0
        jbe     ?_045                                   ; 0909 _ 76, 26
        mov     rax, qword [rbp-28H]                    ; 090B _ 48: 8B. 45, D8
        mov     rdx, qword [rax+8H]                     ; 090F _ 48: 8B. 50, 08
        mov     eax, dword [rbp-14H]                    ; 0913 _ 8B. 45, EC
        cdqe                                            ; 0916 _ 48: 98
        imul    rax, rax, 6148                          ; 0918 _ 48: 69. C0, 00001804
        add     rax, rdx                                ; 091F _ 48: 01. D0
        mov     rdx, qword [rbp-30H]                    ; 0922 _ 48: 8B. 55, D0
        mov     rsi, rdx                                ; 0926 _ 48: 89. D6
        mov     rdi, rax                                ; 0929 _ 48: 89. C7
        call    OutStorehouse                           ; 092C _ E8, FFFFF79B
?_045:  inc     dword [rbp-14H]                         ; 0931 _ FF. 45, EC
?_046:  mov     rax, qword [rbp-28H]                    ; 0934 _ 48: 8B. 45, D8
        mov     eax, dword [rax+4H]                     ; 0938 _ 8B. 40, 04
        cmp     dword [rbp-14H], eax                    ; 093B _ 39. 45, EC
        jl      ?_044                                   ; 093E _ 7C, A5
        nop                                             ; 0940 _ 90
        nop                                             ; 0941 _ 90
        leave                                           ; 0942 _ C9
        ret                                             ; 0943 _ C3
; ProcessingV22 End of function

PrintError:; Function begin
        endbr64                                         ; 0944 _ F3: 0F 1E. FA
        push    rbp                                     ; 0948 _ 55
        mov     rbp, rsp                                ; 0949 _ 48: 89. E5
        lea     rdi, [rel ?_061]                        ; 094C _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0953 _ E8, 00000000(rel)
        nop                                             ; 0958 _ 90
        pop     rbp                                     ; 0959 _ 5D
        ret                                             ; 095A _ C3
; PrintError End of function

main:   ; Function begin
        endbr64                                         ; 095B _ F3: 0F 1E. FA
        push    rbp                                     ; 095F _ 55
        mov     rbp, rsp                                ; 0960 _ 48: 89. E5
        sub     rsp, 4096                               ; 0963 _ 48: 81. EC, 00001000
        or      qword [rsp], 00H                        ; 096A _ 48: 83. 0C 24, 00
        sub     rsp, 80                                 ; 096F _ 48: 83. EC, 50
        mov     dword [rbp-1044H], edi                  ; 0973 _ 89. BD, FFFFEFBC
        mov     qword [rbp-1050H], rsi                  ; 0979 _ 48: 89. B5, FFFFEFB0
        cmp     dword [rbp-1044H], 5                    ; 0980 _ 83. BD, FFFFEFBC, 05
        jz      ?_047                                   ; 0987 _ 74, 0F
        mov     eax, 0                                  ; 0989 _ B8, 00000000
        call    PrintError                              ; 098E _ E8, FFFFFFB1
        jmp     ?_053                                   ; 0993 _ E9, 0000021C

?_047:  lea     rdi, [rel ?_062]                        ; 0998 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 099F _ B8, 00000000
        call    printf                                  ; 09A4 _ E8, 00000000(rel)
        mov     rax, qword [rbp-1050H]                  ; 09A9 _ 48: 8B. 85, FFFFEFB0
        add     rax, 8                                  ; 09B0 _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 09B4 _ 48: 8B. 00
        lea     rsi, [rel ?_063]                        ; 09B7 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 09BE _ 48: 89. C7
        call    strcmp                                  ; 09C1 _ E8, 00000000(rel)
        test    eax, eax                                ; 09C6 _ 85. C0
        jne     ?_048                                   ; 09C8 _ 0F 85, 00000083
        mov     rax, qword [rbp-1050H]                  ; 09CE _ 48: 8B. 85, FFFFEFB0
        add     rax, 16                                 ; 09D5 _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 09D9 _ 48: 8B. 00
        lea     rsi, [rel ?_064]                        ; 09DC _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 09E3 _ 48: 89. C7
        call    fopen                                   ; 09E6 _ E8, 00000000(rel)
        mov     qword [rbp-10H], rax                    ; 09EB _ 48: 89. 45, F0
        mov     rdx, qword [rbp-10H]                    ; 09EF _ 48: 8B. 55, F0
        lea     rax, [rbp-1040H]                        ; 09F3 _ 48: 8D. 85, FFFFEFC0
        mov     esi, 4096                               ; 09FA _ BE, 00001000
        mov     rdi, rax                                ; 09FF _ 48: 89. C7
        call    fgets                                   ; 0A02 _ E8, 00000000(rel)
        lea     rax, [rbp-1040H]                        ; 0A07 _ 48: 8D. 85, FFFFEFC0
        mov     rdi, rax                                ; 0A0E _ 48: 89. C7
        call    atoi                                    ; 0A11 _ E8, 00000000(rel)
        mov     dword [rbp-14H], eax                    ; 0A16 _ 89. 45, EC
        mov     eax, dword [rbp-14H]                    ; 0A19 _ 8B. 45, EC
        lea     edx, [rax+1H]                           ; 0A1C _ 8D. 50, 01
        lea     rax, [rbp-40H]                          ; 0A1F _ 48: 8D. 45, C0
        mov     esi, edx                                ; 0A23 _ 89. D6
        mov     rdi, rax                                ; 0A25 _ 48: 89. C7
        call    Init                                    ; 0A28 _ E8, FFFFF838
        mov     rdx, qword [rbp-10H]                    ; 0A2D _ 48: 8B. 55, F0
        lea     rax, [rbp-40H]                          ; 0A31 _ 48: 8D. 45, C0
        mov     rsi, rdx                                ; 0A35 _ 48: 89. D6
        mov     rdi, rax                                ; 0A38 _ 48: 89. C7
        call    InContainer                             ; 0A3B _ E8, FFFFFC3B
        mov     rax, qword [rbp-10H]                    ; 0A40 _ 48: 8B. 45, F0
        mov     rdi, rax                                ; 0A44 _ 48: 89. C7
        call    fclose                                  ; 0A47 _ E8, 00000000(rel)
        jmp     ?_052                                   ; 0A4C _ E9, 000000A8

?_048:  mov     rax, qword [rbp-1050H]                  ; 0A51 _ 48: 8B. 85, FFFFEFB0
        add     rax, 8                                  ; 0A58 _ 48: 83. C0, 08
        mov     rax, qword [rax]                        ; 0A5C _ 48: 8B. 00
        lea     rsi, [rel ?_065]                        ; 0A5F _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0A66 _ 48: 89. C7
        call    strcmp                                  ; 0A69 _ E8, 00000000(rel)
        test    eax, eax                                ; 0A6E _ 85. C0
        jnz     ?_051                                   ; 0A70 _ 75, 78
        mov     edi, 0                                  ; 0A72 _ BF, 00000000
        call    time                                    ; 0A77 _ E8, 00000000(rel)
        mov     edi, eax                                ; 0A7C _ 89. C7
        call    srand                                   ; 0A7E _ E8, 00000000(rel)
        mov     rax, qword [rbp-1050H]                  ; 0A83 _ 48: 8B. 85, FFFFEFB0
        add     rax, 16                                 ; 0A8A _ 48: 83. C0, 10
        mov     rax, qword [rax]                        ; 0A8E _ 48: 8B. 00
        mov     rdi, rax                                ; 0A91 _ 48: 89. C7
        call    atoi                                    ; 0A94 _ E8, 00000000(rel)
        mov     dword [rbp-4H], eax                     ; 0A99 _ 89. 45, FC
        mov     edx, dword [rbp-4H]                     ; 0A9C _ 8B. 55, FC
        lea     rax, [rbp-40H]                          ; 0A9F _ 48: 8D. 45, C0
        mov     esi, edx                                ; 0AA3 _ 89. D6
        mov     rdi, rax                                ; 0AA5 _ 48: 89. C7
        call    Init                                    ; 0AA8 _ E8, FFFFF7B8
        cmp     dword [rbp-4H], 0                       ; 0AAD _ 83. 7D, FC, 00
        jle     ?_049                                   ; 0AB1 _ 7E, 09
        cmp     dword [rbp-4H], 20000                   ; 0AB3 _ 81. 7D, FC, 00004E20
        jle     ?_050                                   ; 0ABA _ 7E, 1B
?_049:  mov     eax, dword [rbp-4H]                     ; 0ABC _ 8B. 45, FC
        mov     esi, eax                                ; 0ABF _ 89. C6
        lea     rdi, [rel ?_066]                        ; 0AC1 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0AC8 _ B8, 00000000
        call    printf                                  ; 0ACD _ E8, 00000000(rel)
        jmp     ?_053                                   ; 0AD2 _ E9, 000000DD

?_050:  mov     edx, dword [rbp-4H]                     ; 0AD7 _ 8B. 55, FC
        lea     rax, [rbp-40H]                          ; 0ADA _ 48: 8D. 45, C0
        mov     esi, edx                                ; 0ADE _ 89. D6
        mov     rdi, rax                                ; 0AE0 _ 48: 89. C7
        call    InRndContainer                          ; 0AE3 _ E8, FFFFFC05
        jmp     ?_052                                   ; 0AE8 _ EB, 0F

?_051:  mov     eax, 0                                  ; 0AEA _ B8, 00000000
        call    PrintError                              ; 0AEF _ E8, FFFFFE50
        jmp     ?_053                                   ; 0AF4 _ E9, 000000BB

?_052:  mov     rax, qword [rbp-1050H]                  ; 0AF9 _ 48: 8B. 85, FFFFEFB0
        add     rax, 24                                 ; 0B00 _ 48: 83. C0, 18
        mov     rax, qword [rax]                        ; 0B04 _ 48: 8B. 00
        lea     rsi, [rel ?_067]                        ; 0B07 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0B0E _ 48: 89. C7
        call    fopen                                   ; 0B11 _ E8, 00000000(rel)
        mov     qword [rbp-20H], rax                    ; 0B16 _ 48: 89. 45, E0
        mov     rax, qword [rbp-20H]                    ; 0B1A _ 48: 8B. 45, E0
        mov     rcx, rax                                ; 0B1E _ 48: 89. C1
        mov     edx, 18                                 ; 0B21 _ BA, 00000012
        mov     esi, 1                                  ; 0B26 _ BE, 00000001
        lea     rdi, [rel ?_068]                        ; 0B2B _ 48: 8D. 3D, 00000000(rel)
        call    fwrite                                  ; 0B32 _ E8, 00000000(rel)
        mov     rdx, qword [rbp-20H]                    ; 0B37 _ 48: 8B. 55, E0
        lea     rax, [rbp-40H]                          ; 0B3B _ 48: 8D. 45, C0
        mov     rsi, rdx                                ; 0B3F _ 48: 89. D6
        mov     rdi, rax                                ; 0B42 _ 48: 89. C7
        call    OutContainer                            ; 0B45 _ E8, FFFFFBFC
        mov     rax, qword [rbp-1050H]                  ; 0B4A _ 48: 8B. 85, FFFFEFB0
        add     rax, 32                                 ; 0B51 _ 48: 83. C0, 20
        mov     rax, qword [rax]                        ; 0B55 _ 48: 8B. 00
        lea     rsi, [rel ?_067]                        ; 0B58 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rax                                ; 0B5F _ 48: 89. C7
        call    fopen                                   ; 0B62 _ E8, 00000000(rel)
        mov     qword [rbp-28H], rax                    ; 0B67 _ 48: 89. 45, D8
        mov     rdx, qword [rbp-28H]                    ; 0B6B _ 48: 8B. 55, D8
        lea     rax, [rbp-40H]                          ; 0B6F _ 48: 8D. 45, C0
        mov     rsi, rdx                                ; 0B73 _ 48: 89. D6
        mov     rdi, rax                                ; 0B76 _ 48: 89. C7
        call    ProcessingV22                           ; 0B79 _ E8, FFFFFC3D
        mov     rax, qword [rbp-20H]                    ; 0B7E _ 48: 8B. 45, E0
        mov     rdi, rax                                ; 0B82 _ 48: 89. C7
        call    fclose                                  ; 0B85 _ E8, 00000000(rel)
        mov     rax, qword [rbp-28H]                    ; 0B8A _ 48: 8B. 45, D8
        mov     rdi, rax                                ; 0B8E _ 48: 89. C7
        call    fclose                                  ; 0B91 _ E8, 00000000(rel)
        lea     rax, [rbp-40H]                          ; 0B96 _ 48: 8D. 45, C0
        mov     rdi, rax                                ; 0B9A _ 48: 89. C7
        call    Clear                                   ; 0B9D _ E8, FFFFF70F
        lea     rdi, [rel ?_069]                        ; 0BA2 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0BA9 _ B8, 00000000
        call    printf                                  ; 0BAE _ E8, 00000000(rel)
        nop                                             ; 0BB3 _ 90
?_053:  leave                                           ; 0BB4 _ C9
        ret                                             ; 0BB5 _ C3
; main End of function


SECTION .data                           ; section number 2, data


SECTION .bss                            ; section number 3, bss


SECTION .rodata                         ; section number 4, const

PUNCTUATION_SYMBOLS:                                    ; byte
        db 2CH, 2EH, 3BH, 2DH, 3AH, 5FH, 3FH, 21H       ; 0000 _ ,.;-:_?!

?_054:                                                  ; byte
        db 49H, 74H, 20H, 69H, 73H, 20H, 52H, 69H       ; 0008 _ It is Ri
        db 64H, 64H, 6CH, 65H, 2EH, 20H, 51H, 75H       ; 0010 _ ddle. Qu
        db 65H, 73H, 74H, 69H, 6FH, 6EH, 3AH, 20H       ; 0018 _ estion: 
        db 25H, 73H, 2EH, 20H, 41H, 6EH, 73H, 77H       ; 0020 _ %s. Answ
        db 65H, 72H, 3AH, 20H, 25H, 73H, 2EH, 20H       ; 0028 _ er: %s. 
        db 51H, 75H, 6FH, 74H, 69H, 65H, 6EH, 74H       ; 0030 _ Quotient
        db 20H, 3DH, 20H, 25H, 66H, 0AH, 00H, 00H       ; 0038 _  = %f...

?_055:                                                  ; byte
        db 49H, 74H, 20H, 69H, 73H, 20H, 41H, 70H       ; 0040 _ It is Ap
        db 68H, 6FH, 72H, 69H, 73H, 6DH, 2EH, 20H       ; 0048 _ horism. 
        db 25H, 73H, 20H, 2DH, 20H, 73H, 61H, 79H       ; 0050 _ %s - say
        db 73H, 20H, 25H, 73H, 2EH, 20H, 51H, 75H       ; 0058 _ s %s. Qu
        db 6FH, 74H, 69H, 65H, 6EH, 74H, 20H, 3DH       ; 0060 _ otient =
        db 20H, 25H, 66H, 0AH, 00H, 00H, 00H, 00H       ; 0068 _  %f.....

?_056:                                                  ; byte
        db 49H, 74H, 20H, 69H, 73H, 20H, 53H, 61H       ; 0070 _ It is Sa
        db 79H, 69H, 6EH, 67H, 20H, 66H, 72H, 6FH       ; 0078 _ ying fro
        db 6DH, 20H, 25H, 73H, 3AH, 20H, 25H, 73H       ; 0080 _ m %s: %s
        db 2EH, 20H, 51H, 75H, 6FH, 74H, 69H, 65H       ; 0088 _ . Quotie
        db 6EH, 74H, 20H, 3DH, 20H, 25H, 66H, 0AH       ; 0090 _ nt = %f.
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0098 _ ........

?_057:                                                  ; byte
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 00A0 _ Incorrec
        db 74H, 20H, 53H, 74H, 6FH, 72H, 65H, 68H       ; 00A8 _ t Storeh
        db 6FH, 75H, 73H, 65H, 20H, 6FH, 66H, 20H       ; 00B0 _ ouse of 
        db 57H, 69H, 73H, 64H, 6FH, 6DH, 21H, 00H       ; 00B8 _ Wisdom!.

?_058:                                                  ; byte
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H       ; 00C0 _ Containe
        db 72H, 20H, 63H, 6FH, 6EH, 74H, 61H, 69H       ; 00C8 _ r contai
        db 6EH, 73H, 20H, 25H, 64H, 20H, 65H, 6CH       ; 00D0 _ ns %d el
        db 65H, 6DH, 65H, 6EH, 74H, 73H, 2EH, 0AH       ; 00D8 _ ements..
        db 00H                                          ; 00E0 _ .

?_059:                                                  ; byte
        db 41H, 72H, 69H, 74H, 68H, 6DH, 65H, 74H       ; 00E1 _ Arithmet
        db 69H, 63H, 20H, 6DH, 65H, 61H, 6EH, 3AH       ; 00E9 _ ic mean:
        db 20H, 25H, 66H, 0AH, 00H                      ; 00F1 _  %f..

?_060:                                                  ; byte
        db 51H, 75H, 6FH, 74H, 69H, 65H, 6EH, 74H       ; 00F6 _ Quotient
        db 73H, 20H, 70H, 72H, 6FH, 63H, 65H, 73H       ; 00FE _ s proces
        db 73H, 65H, 64H, 3AH, 0AH, 00H, 00H, 00H       ; 0106 _ sed:....
        db 00H, 00H                                     ; 010E _ ..

?_061:                                                  ; byte
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 0110 _ Incorrec
        db 74H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH       ; 0118 _ t comman
        db 64H, 21H, 0AH, 57H, 61H, 69H, 74H, 65H       ; 0120 _ d!.Waite
        db 64H, 3AH, 0AH, 2DH, 66H, 20H, 69H, 6EH       ; 0128 _ d:.-f in
        db 66H, 69H, 6CH, 65H, 20H, 6FH, 75H, 74H       ; 0130 _ file out
        db 66H, 69H, 6CH, 65H, 30H, 31H, 20H, 6FH       ; 0138 _ file01 o
        db 75H, 74H, 66H, 69H, 6CH, 65H, 30H, 32H       ; 0140 _ utfile02
        db 0AH, 4FH, 72H, 3AH, 0AH, 2DH, 6EH, 20H       ; 0148 _ .Or:.-n 
        db 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 6FH       ; 0150 _ number o
        db 75H, 74H, 66H, 69H, 6CH, 65H, 30H, 31H       ; 0158 _ utfile01
        db 20H, 6FH, 75H, 74H, 66H, 69H, 6CH, 65H       ; 0160 _  outfile
        db 30H, 32H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0168 _ 02......

?_062:                                                  ; byte
        db 53H, 74H, 61H, 72H, 74H, 2EH, 20H, 50H       ; 0170 _ Start. P
        db 6CH, 65H, 61H, 73H, 65H, 2CH, 20H, 63H       ; 0178 _ lease, c
        db 68H, 65H, 63H, 6BH, 2CH, 20H, 74H, 68H       ; 0180 _ heck, th
        db 61H, 74H, 20H, 61H, 6CH, 6CH, 20H, 73H       ; 0188 _ at all s
        db 70H, 61H, 63H, 65H, 73H, 20H, 69H, 6EH       ; 0190 _ paces in
        db 20H, 63H, 6FH, 6EH, 74H, 65H, 6EH, 74H       ; 0198 _  content
        db 20H, 6FH, 66H, 20H, 73H, 74H, 6FH, 72H       ; 01A0 _  of stor
        db 65H, 68H, 6FH, 75H, 73H, 65H, 20H, 72H       ; 01A8 _ ehouse r
        db 65H, 70H, 6CH, 61H, 63H, 65H, 64H, 20H       ; 01B0 _ eplaced 
        db 77H, 69H, 74H, 68H, 20H, 5FH, 2EH, 00H       ; 01B8 _ with _..

?_063:                                                  ; byte
        db 2DH, 66H, 00H                                ; 01C0 _ -f.

?_064:                                                  ; byte
        db 72H, 00H                                     ; 01C3 _ r.

?_065:                                                  ; byte
        db 2DH, 6EH, 00H                                ; 01C5 _ -n.

?_066:                                                  ; byte
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H       ; 01C8 _ Incorrec
        db 74H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H       ; 01D0 _ t number
        db 20H, 6FH, 66H, 20H, 73H, 74H, 6FH, 72H       ; 01D8 _  of stor
        db 65H, 68H, 6FH, 75H, 73H, 65H, 20H, 6FH       ; 01E0 _ ehouse o
        db 66H, 20H, 77H, 69H, 73H, 64H, 6FH, 6DH       ; 01E8 _ f wisdom
        db 20H, 3DH, 20H, 25H, 64H, 2EH, 20H, 45H       ; 01F0 _  = %d. E
        db 6EH, 74H, 65H, 72H, 20H, 30H, 20H, 3CH       ; 01F8 _ nter 0 <
        db 20H, 6EH, 75H, 6DH, 62H, 65H, 72H, 20H       ; 0200 _  number 
        db 3CH, 3DH, 20H, 31H, 30H, 30H, 30H, 30H       ; 0208 _ <= 10000
        db 0AH, 00H                                     ; 0210 _ ..

?_067:                                                  ; byte
        db 77H, 00H                                     ; 0212 _ w.

?_068:                                                  ; byte
        db 46H, 69H, 6CH, 6CH, 65H, 64H, 20H, 63H       ; 0214 _ Filled c
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H, 72H       ; 021C _ ontainer
        db 3AH, 0AH, 00H                                ; 0224 _ :..

?_069:                                                  ; byte
        db 0AH, 46H, 69H, 6EH, 69H, 73H, 68H, 65H       ; 0227 _ .Finishe
        db 64H, 00H                                     ; 022F _ d.


