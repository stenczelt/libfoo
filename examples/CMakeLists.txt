message(STATUS "Foo examples added")

add_executable(example_01 example_01.cpp)
target_link_libraries(example_01 PRIVATE foo)
