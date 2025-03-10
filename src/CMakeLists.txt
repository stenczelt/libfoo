add_library(foo STATIC foo.cpp)
target_include_directories(foo PUBLIC
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>)
set_target_properties(foo PROPERTIES EXPORT_NAME foo)

install(TARGETS foo EXPORT FooTargets)
install(DIRECTORY ${CMAKE_SOURCE_DIR}/include/ DESTINATION include)
