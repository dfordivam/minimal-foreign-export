#include <stdlib.h>
#include <stdio.h>
#include "HsFFI.h"
#include <unistd.h>

extern void hsSomeExportedApi(int);

HsBool haskell_init(void){
  int argc = 0;
  char *argv[] = { NULL };
  char **pargv = argv;

  hs_init(&argc, &pargv);

  return HS_BOOL_TRUE;
}

void mylib_end(void){
  hs_exit();
}

void loopSomeExportedApi(void) {
  int n = 0;
  while (1) {
    hsSomeExportedApi(n);
    n++;
    /* usleep(500*1000); */
  }
}

int main(int argc, char * argv[]) {
  haskell_init();
  printf("Haskell initialization done");
  loopSomeExportedApi();
  /* _Exit(0); */
  /* mylib_end(); */
  return 0;
}
