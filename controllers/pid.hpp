#pragma once

namespace controllers {
  class PID {
    public:
      PID();
      ~PID();
      double get();
    private:
      double period = 0.01;
  };
}
