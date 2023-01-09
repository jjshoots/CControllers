#pragma once

#include <stdlib.h>
#include <math.h>
#include <memory.h>

#if defined(__x86_64__)
#include <pmmintrin.h> // SSE
#elif defined(__arm__)
#include <arm_neon.h> // Neon
#endif

namespace controllers{
  class PID {
    private:
      double period = 0.01;

    public:
      PID();
      ~PID();
      double get();
  };
}
