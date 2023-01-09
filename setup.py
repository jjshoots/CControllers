import platform

from Cython.Build import cythonize
from setuptools import Extension, setup

ext_modules = [Extension("controllers", ["src/*.pyx"], language="c++")]

setup(
    name="pid",
    ext_modules=cythonize(
        ext_modules, language_level=3, compiler_directives={"annotation_typing": False}
    ),
)
