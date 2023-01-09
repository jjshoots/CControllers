cdef extern from "lib/pid.cpp":
    pass

# Declare the class with cdef
cdef extern from "lib/pid.hpp" namespace "controllers":
    cdef cppclass PID:
        PID() except +
        double get()
