#ifndef __TIMER_H__
#define __TIMER_H__

#include <time.h>
#ifdef _MSC_VER
#include <process.h>
#include <windows.h>
int gettimeofday_cnn(struct timeval *tp, void *tzp);
#else
#include <sys/time.h>
#endif

long gettime_cnn();

#endif
