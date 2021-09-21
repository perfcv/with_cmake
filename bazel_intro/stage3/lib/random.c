#include "random.h"
#include <stdlib.h>

float get_random(float s, float t){
    float v = (float)(rand()) / RAND_MAX;
    v = v * (t-s) + s;
    return v;
}
