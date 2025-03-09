include(FetchContent)
FetchContent_Declare(
        foo
        GIT_REPOSITORY https://github.com/yourname/foo.git
        GIT_TAG main
)
FetchContent_MakeAvailable(foo)
