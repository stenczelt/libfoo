cmake_minimum_required(VERSION 3.15)
project(foo VERSION 1.0.0 LANGUAGES CXX Fortran)

# Enable position-independent code for shared libraries
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Add subdirectories
add_subdirectory(src)
add_subdirectory(fortran)

# Optionally add examples and tests when building from source
option(FOO_BUILD_TESTS "Enable building tests" OFF)
option(FOO_BUILD_EXAMPLES "Enable building examples" OFF)

set(FOO_TOPLEVEL_CUS_VAR "hello!")


if(FOO_BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)
endif()

if(FOO_BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()

# install headers
install(DIRECTORY ${CMAKE_SOURCE_DIR}/include/ DESTINATION include)

# Install CMake package configuration
install(EXPORT FooTargets
        NAMESPACE foo::
        DESTINATION lib/cmake/foo
)

# Generate Config.cmake file
include(CMakePackageConfigHelpers)
configure_package_config_file(
        cmake/FooConfig.cmake.in
        ${CMAKE_CURRENT_BINARY_DIR}/cmake/FooConfig.cmake
        INSTALL_DESTINATION lib/cmake/foo
)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/FooConfig.cmake DESTINATION lib/cmake/foo)
