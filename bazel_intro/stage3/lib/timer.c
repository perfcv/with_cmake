#include "timer.h"

#ifdef _MSC_VER
int gettimeofday_cnn(struct timeval *tp, void *tzp) {
	time_t clock;
	struct tm tm;
	SYSTEMTIME wtm;

	GetLocalTime(&wtm);
	tm.tm_year = wtm.wYear - 1900;
	tm.tm_mon = wtm.wMonth - 1;
	tm.tm_mday = wtm.wDay;
	tm.tm_hour = wtm.wHour;
	tm.tm_min = wtm.wMinute;
	tm.tm_sec = wtm.wSecond;
	tm.tm_isdst = -1;
	clock = mktime(&tm);
	tp->tv_sec = clock;
	tp->tv_usec = wtm.wMilliseconds * 1000;

	return (0);
}
#endif

long gettime_cnn()
{
	struct timeval time;
#ifdef _MSC_VER
	gettimeofday_cnn(&time, NULL);
#else
	gettimeofday(&time, NULL);
#endif
	return (time.tv_sec * 1000 + time.tv_usec / 1000);
}

