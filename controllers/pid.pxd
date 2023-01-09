cdef extern from "controllers/pid.hpp":
    cdef cppclass PID:
        PID() except +
        double get()
