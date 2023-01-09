# distutils: language = c++

from pid cimport PID

cdef class PID:
    cdef PID c_pid

    def __init__(self):
        self.c_pid = PID()

    def get(self):
        return self.c_pid.get()
