# distutils: language = c++
# distutils: sources = src/controllers/pid.cpp

from controllers cimport CPID

cdef class PID:
    cdef CPID c_pid

    def __cinit__(self, Kp: np.ndarray, Ki: np.ndarray, Kd: np.ndarray, limits: np.ndarray, period: float):
        self.c_pid = CPID(&Kp, &Ki, &Kd, &limits, period)

    # def step(self):
    #     return self.c_pid.step()
