#pragma once

#include<vector>

namespace controllers{

  class CPID {
    private:
      // fixed params
      std::vector<double> cKp;
      std::vector<double> cKi;
      std::vector<double> cKd;
      std::vector<double> climits;
      double cperiod;

      // runtime params
      std::vector<double> integral_state;
      std::vector<double> prev_error;

    public:
      CPID(double Kp[], double Ki[], double Kd[], double limits[], double period);
      ~CPID() {}

      void reset();
      void step(double output[], double state[], double setpoint[]);
  };
}
