import platform

from Cython.Build import cythonize
from setuptools import Extension, setup

ext_modules = []

if platform.system() == "Windows":  # Windows
    ext_modules = [Extension("pid", ["src/*.pyx"], language="c++")]
else:  # Not Windows
    if platform.machine() == "x86_64":  # Detect x86_64 platform
        ext_modules = [Extension("pid", ["src/*.pyx"], language="c++")]
    else:  # Arm assumed
        ext_modules = [
            Extension(
                "pid",
                ["src/*.pyx"],
                extra_compile_args=["-mfpu=neon"],
                extra_link_args=["-mfpu=neon"],
                language="c++"
            )
        ]

setup(
    name="pid",
    ext_modules=cythonize(
        ext_modules, language_level=3, compiler_directives={"annotation_typing": False}
    ),
)
