#include <stdio.h>
#include <math.h>

static inline unsigned long long read_cycles() {
    unsigned long long cycles;
    asm volatile ("rdcycle %0" : "=r" (cycles));
    return cycles;
}

static inline unsigned long long read_instructions() {
    unsigned long long insts;
    asm volatile ("rdinstret %0" : "=r" (insts));
    return insts;
}

int main() {
    float input_tensor[3] = {0.5, -1.2, 3.0};
    float output_tensor[3];

    printf("Executing Heavy Soft-Float Sigmoid...\n");

    unsigned long long start_cycles = read_cycles();
    unsigned long long start_insts = read_instructions();

    for (int i = 0; i < 3; i++) {
        output_tensor[i] = 1.0 / (1.0 + exp(-input_tensor[i]));
    }

    unsigned long long end_cycles = read_cycles();
    unsigned long long end_insts = read_instructions();

    for (int i = 0; i < 3; i++) {
        printf("Sigmoid output %d: %f\n", i, output_tensor[i]);
    }

    unsigned long long total_cycles = end_cycles - start_cycles;
    unsigned long long total_insts = end_insts - start_insts;
    
    printf("Total Clock Cycles: %llu\n", total_cycles);
    printf("Total Instructions Executed: %llu\n", total_insts);
    printf("IPC (Instructions Per Cycle): %f\n", (float)total_insts / total_cycles);

    return 0;
}