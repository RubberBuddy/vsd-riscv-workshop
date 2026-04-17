#include <stdio.h>

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

#define DATASIZE 10
#define WINDOW_SIZE 3

int main(){

    int raw_data[DATASIZE] = {50, 55, 120, 52, 49, 10, 51, 53, 90, 50};
    float filtered_data[DATASIZE - WINDOW_SIZE + 1];

    unsigned long long start_cycles = read_cycles();
    unsigned long long start_insts = read_instructions();

    for (int i=0; i<=DATASIZE - WINDOW_SIZE; i++){
        int sum = 0;
        for (int j=0; j< WINDOW_SIZE; j++){
            sum += raw_data[i+j];
        }
        filtered_data[i] = sum / WINDOW_SIZE;
        printf("Filtered Value %d: %f\n", i, filtered_data[i]);
    }

    unsigned long long end_cycles = read_cycles();
    unsigned long long end_insts = read_instructions();

    unsigned long long total_cycles = end_cycles - start_cycles;
    unsigned long long total_insts = end_insts - start_insts;

    printf("Total Clock Cycles: %llu\n", total_cycles);
    printf("Total Instructions Executed: %llu\n", total_insts);
    printf("IPC (Instructions Per Cycle): %f\n", (float)total_insts / total_cycles);

    return 0;
}