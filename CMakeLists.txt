cmake_minimum_required(VERSION 3.14)
project(mace VERSION 0.1 LANGUAGES CXX)

add_library(mace_main STATIC)
add_library(mace::main ALIAS mace_main)

target_sources(mace_main PRIVATE src/main.cpp)
target_include_directories(mace_main PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>)

install(TARGETS mace_main EXPORT maceConfig
        INCLUDES DESTINATION include)

install(EXPORT maceConfig NAMESPACE mace:: DESTINATION lib/cmake/mace)
install(DIRECTORY include/ DESTINATION include)


# example program here
add_executable(eg_main program.cpp)
target_link_libraries(eg_main mace::main)