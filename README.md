# Project structure

```plain
foo/
├── CMakeLists.txt          # Root CMake file
├── cmake/
│   ├── FooConfig.cmake.in  # Config file for installed package
│   ├── FetchFoo.cmake      # CMake module for FetchContent users
│   └── FindDependencies.cmake # Helper for dependencies
├── include/
│   └── foo/
│       ├── foo.hpp         # Public C++ headers
│       ├── foo_api.hpp     # API headers (if needed)
├── src/
│   ├── CMakeLists.txt      # CMake file for building libfoo
│   ├── foo.cpp             # C++ implementation
│   ├── foo_internal.hpp    # Internal headers
├── fortran/
│   ├── CMakeLists.txt      # CMake file for Fortran wrapper
│   ├── foo_mod.F90         # Fortran module
│   ├── foo_f90_wrapper.F90 # Fortran wrapper implementation
├── examples/
│   ├── CMakeLists.txt      # Example programs
│   ├── example.cpp
│   ├── example.f90
├── tests/
│   ├── CMakeLists.txt      # CMake tests
│   ├── test_foo.cpp
│   ├── test_foo.F90
├── docs/                   # Documentation
│   ├── README.md
│   ├── API.md
├── .github/                # CI/CD configurations (if applicable)
│   ├── workflows/
│   │   ├── ci.yml
│   │   ├── build.yml

```