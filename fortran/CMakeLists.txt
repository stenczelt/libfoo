add_library(foo_f90_wrapper STATIC foo_f90_wrapper.f90)
target_link_libraries(foo_f90_wrapper PUBLIC foo)
target_include_directories(foo_f90_wrapper PUBLIC
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
)

install(TARGETS foo_f90_wrapper EXPORT FooTargets)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/foo_mod.F90 DESTINATION include)
