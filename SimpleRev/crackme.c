//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// ------------------- Function Prototypes --------------------

int64_t _fini(void);
int64_t _init(void);
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4, int64_t a5, int64_t a6);
void acces_granted(void);
void create_password(char * str);
int32_t function_1030(char * s);
void function_1040(void);
void function_1050(int32_t seed);
int32_t function_1060(char * s1, char * s2);
int32_t function_1070(int32_t * timer);
int32_t function_1080(char * format, ...);
void function_1090(int32_t status);
int32_t function_10a0(void);
int64_t function_10e0(void);
int64_t function_1110(void);
int64_t function_1150(void);
int64_t function_11a0(void);
char random_char(int32_t index);
void wrong_password(void);

// --------------------- Global Variables ---------------------

int64_t g1 = 0; // 0x3fe0
int64_t g2 = 0; // 0x40a8
int64_t pass_len = 20; // 0x40a0
int32_t g3;

// ------- Dynamically Linked Functions Without Header --------

void __cxa_finalize(int64_t * a1);
void __gmon_start__(void);
int32_t __libc_start_main(int64_t a1, int32_t a2, char ** a3, void (*a4)(), void (*a5)(), void (*a6)());
void __stack_chk_fail(void);

// ------------------------ Functions -------------------------

// Address range: 0x1000 - 0x101b
int64_t _init(void) {
    int64_t result = 0; // 0x1012
    if (*(int64_t *)0x3fd0 != 0) {
        // 0x1014
        __gmon_start__();
        result = &g3;
    }
    // 0x1016
    return result;
}

// Address range: 0x1030 - 0x1036
int32_t function_1030(char * s) {
    // 0x1030
    return puts(s);
}

// Address range: 0x1040 - 0x1046
void function_1040(void) {
    // 0x1040
    __stack_chk_fail();
}

// Address range: 0x1050 - 0x1056
void function_1050(int32_t seed) {
    // 0x1050
    srand(seed);
}

// Address range: 0x1060 - 0x1066
int32_t function_1060(char * s1, char * s2) {
    // 0x1060
    return strcmp(s1, s2);
}

// Address range: 0x1070 - 0x1076
int32_t function_1070(int32_t * timer) {
    // 0x1070
    return time(timer);
}

// Address range: 0x1080 - 0x1086
int32_t function_1080(char * format, ...) {
    // 0x1080
    return scanf(format);
}

// Address range: 0x1090 - 0x1096
void function_1090(int32_t status) {
    // 0x1090
    exit(status);
}

// Address range: 0x10a0 - 0x10a6
int32_t function_10a0(void) {
    // 0x10a0
    return rand();
}

// Address range: 0x10b0 - 0x10d6
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4, int64_t a5, int64_t a6) {
    // 0x10b0
    int64_t v1; // 0x10b0
    __libc_start_main(0x1290, (int32_t)a6, (char **)&v1, NULL, NULL, (void (*)())a3);
    __asm_hlt();
    // UNREACHABLE
}

// Address range: 0x10e0 - 0x1109
int64_t function_10e0(void) {
    // 0x10e0
    return &g2;
}

// Address range: 0x1110 - 0x1149
int64_t function_1110(void) {
    // 0x1110
    return 0;
}

// Address range: 0x1150 - 0x1191
int64_t function_1150(void) {
    // 0x1150
    if (*(char *)&g2 != 0) {
        // 0x1190
        int64_t result; // 0x1150
        return result;
    }
    // 0x115d
    if (g1 != 0) {
        // 0x116b
        __cxa_finalize((int64_t *)*(int64_t *)0x4048);
    }
    int64_t result2 = function_10e0(); // 0x1178
    *(char *)&g2 = 1;
    return result2;
}

// Address range: 0x11a0 - 0x11a9
int64_t function_11a0(void) {
    // 0x11a0
    return function_1110();
}

// From module:   /home/miguel/expo/SimpleRev/source.c
// Address range: 0x11a9 - 0x11c6
// Line range:    9 - 11
void acces_granted(void) {
    // 0x11a9
    puts("Clave Verificada Acceso concedido :-)\n");
    exit(0);
}

// From module:   /home/miguel/expo/SimpleRev/source.c
// Address range: 0x11c6 - 0x11dc
// Line range:    14 - 16
void wrong_password(void) {
    // 0x11c6
    puts("Clave erronea >:-( ");
}

// From module:   /home/miguel/expo/SimpleRev/source.c
// Address range: 0x11dc - 0x11f5
// Line range:    18 - 20
char random_char(int32_t index) {
    char result = *(char *)((int64_t)index + (int64_t)"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"); // 0x11ef
    return result;
}

// From module:   /home/miguel/expo/SimpleRev/source.c
// Address range: 0x11f5 - 0x1290
// Line range:    22 - 31
void create_password(char * str) {
    // 0x11f5
    srand(time(NULL));
    int64_t v1 = 0x100000000 * (int64_t)str >> 32;
    int32_t v2 = 0; // 0x1277
    if (pass_len == 0) {
        // 0x1279
        *(char *)v1 = 0;
        return;
    }
    int32_t v3 = rand(); // 0x121c
    char v4 = random_char(-62 * ((v3 + (int32_t)(-0x7bdef7bd * (int64_t)v3 / 0x100000000) >> 5) - (v3 >> 31)) + v3); // 0x125c
    *(char *)v1 = v4;
    v2++;
    int64_t v5 = v2; // 0x126a
    while (pass_len > v5) {
        // 0x121c
        v3 = rand();
        v4 = random_char(-62 * ((v3 + (int32_t)(-0x7bdef7bd * (int64_t)v3 / 0x100000000) >> 5) - (v3 >> 31)) + v3);
        *(char *)(v5 + v1) = v4;
        v2++;
        v5 = v2;
    }
    // 0x1279
    *(char *)(v5 + v1) = 0;
}

// From module:   /home/miguel/expo/SimpleRev/source.c
// Address range: 0x1290 - 0x13b0
// Line range:    33 - 51
int main() {
    char pass[1]; // bp-56, 0x1290
    char v1[1]; // 0x12e7
    int64_t v2 = __readfsqword(40); // 0x1299
    int64_t v3 = 16 * (pass_len + 15) / 16;
    int64_t v4; // bp-72, 0x1290
    int64_t v5 = (int64_t)&v4 - v3; // 0x12dd
    v1[0] = v5;
    pass = v1;
    puts("Ingrese clave de Activacion\n");
    int64_t str = *(int64_t *)&pass;
    scanf("%20s", (char **)str);
    char * str2 = (char *)(v5 - v3); // 0x1359
    create_password(str2);
    if (strcmp((char *)str, str2) != 0) {
        // 0x137a
        acces_granted();
        // UNREACHABLE
    }
    // 0x1384
    wrong_password();
    int32_t result = 0; // 0x13a3
    if (v2 != __readfsqword(40)) {
        // 0x13a5
        __stack_chk_fail();
        result = &g3;
    }
    // 0x13aa
    return result;
}

// Address range: 0x13b0 - 0x13bd
int64_t _fini(void) {
    // 0x13b0
    int64_t result; // 0x13b0
    return result;
}

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (13.2.1)
// Detected functions: 20
