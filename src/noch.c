#include "st.h"

#define NOCH_ALLOC(SIZE)        xmalloc (SIZE)
#define NOCH_REALLOC(PTR, SIZE) xrealloc(PTR, SIZE)
#define NOCH_FREE(PTR)          free    (PTR)

#include <noch/args.c>
#include <noch/json.c>
