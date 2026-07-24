cmake_minimum_required(VERSION 3.20)
project(gdextension)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_subdirectory(
    ../.godot-cpp
    godot-cpp-build
)


add_library(example_lib SHARED
    src/register_types.cpp
    src/example_lib.cpp
)
target_link_libraries(example_lib
    PRIVATE
        godot-cpp
)