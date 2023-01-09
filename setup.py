from Cython.Build import cythonize
from setuptools import Extension, setup

ext_modules = [Extension("controllers", ["src/*.pyx"], language="c++")]

setup(
    name="ccontrollers",
    ext_modules=cythonize(ext_modules),
)
