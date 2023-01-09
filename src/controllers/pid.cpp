#include "pid.hpp"

namespace controllers {
  PID::PID () {}

  double PID::get () {
    return period;
  }
}
