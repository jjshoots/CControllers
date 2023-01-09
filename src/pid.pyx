# distutils: language = c++

from pid_wrapper cimport PID_wrapper

cdef class PID:
    cdef PID_wrapper c_pid

    def __init__(self):
        self.c_pid = PID_wrapper()

    def get(self):
        return self.c_pid.get()
