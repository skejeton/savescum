#include "umka_api.h"
#include <stdlib.h>

// Wrapper over exit()
void externalapi_exit(UmkaStackSlot *args, UmkaStackSlot *ret) {
  exit(args[0].intVal);
}