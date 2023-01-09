# distutils: language = c++

from pid cimport PID

# Create a Cython extension type which holds a C++ instance
# as an attribute and create a bunch of forwarding methods
# Python extension type.
cdef class PyRectangle:
    cdef PID c_pid  # Hold a C++ instance which we're wrapping

    def __init__(self):
        self.c_pid = PID()

    def get(self):
        return self.c_pid.get()
