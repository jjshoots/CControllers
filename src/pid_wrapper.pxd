cdef extern from "controllers/pid.cpp":
    pass

# Declare the class with cdef
cdef extern from "controllers/pid.hpp" namespace "controllers":
    cdef cppclass PID_wrapper:
        PID() except +
        double get()
