from Cython.Build import cythonize
from setuptools import Extension, setup

ext_modules = [Extension("controllers", ["controllers/*.pyx"], language="c++")]

setup(
    name="pid",
    ext_modules=cythonize(ext_modules),
)
