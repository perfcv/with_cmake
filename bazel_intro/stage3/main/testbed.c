#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "activations.h"
#include "lib/timer.h"
#include "lib/random.h"

int main(){
    long t_start = gettime_cnn();

    const int maxn = 5;
    srand(time(0));
    for(int i=0; i<maxn; i++){
        float x = get_random(-2.0f, 2.0f);
        float res_relu = relu(x);
        float res_sigmoid = sigmoid(x);
        
        printf("x=%f\n", x);
        printf("relu(x)=%f\n", res_relu);
        printf("sigmoid(x)=%f\n", res_sigmoid);
        printf("\n");
    }

    printf("time consuming: %ld ms\n", gettime_cnn() - t_start);

    return 0;
}
