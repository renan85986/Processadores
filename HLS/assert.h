#ifndef CUSTOM_ASSERT_H
#define CUSTOM_ASSERT_H

#ifdef __SYNTHESIS__
#define assert(expression) ((void)0)
#else
#include <assert.h>
#endif

#endif // CUSTOM_ASSERT_H
