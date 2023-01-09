cdef class PyPID:
    cdef PID* thisptr  # hold a C++ instance which we're wrapping
    def __cinit__(self):
        self.thisptr = new PID()
    def __dealloc__(self):
        del self.thisptr
    def get(self):
        return self.thisptr.get()

cdef class PID:
    cdef PyPID* thisptr  # hold a Python instance which we're wrapping
    def __cinit__(self):
        self.thisptr = new PyPID()
    def __dealloc__(self):
        del self.thisptr
    def get(self):
        return self.thisptr.get()
