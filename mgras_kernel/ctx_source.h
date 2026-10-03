/*
 * Master context source for m2c decompiler on SGI Impact (MGRAS) kernel modules.
 * Preprocessed with: gcc -m32 -E -P -D_LANGUAGE_C -I../ -Iinclude ctx_source.h -o ctx.c
 */

typedef signed char         s8;
typedef unsigned char       u8;
typedef signed short        s16;
typedef unsigned short      u16;
typedef signed int          s32;
typedef unsigned int        u32;
typedef signed long long    s64;
typedef unsigned long long  u64;

#include "MGRAS.h"
#include "HQ3.h"
#include "GE11.h"
#include "RE4.h"
#include "PP1.h"
#include "TE1.h"
#include "VC3.h"
#include "CMAP.h"
#include "mgras_kern.h"

/* External kernel / system helpers */
int badaddr(void *addr, int size);
void flushbus(void);
void us_delay(int usec);
void *find_inventory(int a0, int a1, int a2, int a3, int a4);
void add_to_inventory(int a0, int a1, int a2, int a3, int a4);
void replace_in_inventory(void *inv, int a0, int a1, int a2, int a3, int a4);
void bzero(void *b, unsigned int len);
void *bcopy(const void *src, void *dst, unsigned int len);
char *strncpy(char *dst, const char *src, unsigned int n);
int printf(const char *fmt, ...);
void cmn_err(int level, const char *fmt, ...);

/* Synchronization primitives */
void mutex_lock(void *m);
void mutex_unlock(void *m);
void init_mutex(void *m);
int  splhi(void);
void splx(int s);

/* Memory allocation */
void *kern_calloc(int nelem, int elsize);
void kern_free(void *ptr);
