#include "pid.h"

namespace controllers {
  CPID::CPID (double Kp[], double Ki[], double Kd[], double limits[], double period) {
    // record the standard stuff
    cKp = &Kp[0];
    cKi = &Ki[0];
    cKd = &Kd[0];
    climits = &limits[0];
    cperiod = period;

    // start storing data
    int num_elements = *(&Kp + 1) - Kp;
    integral_state(num_elements, 0.0);
    prev_error(num_elements, 0.0);
  }
}
