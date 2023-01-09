# Declare the class with cdef
cdef extern from "controllers/pid.h" namespace "controllers":
    cdef cppclass CPID:
        CPID(double[], double[], double[], double[], double) except +
        # std::vector<double> step()
