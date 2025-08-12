# Only define the project if this is the top-level CMake run
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    cmake_minimum_required(VERSION 3.20)
    project(cpp-data-structures LANGUAGES CXX)

    set(CMAKE_CXX_STANDARD 23)
    set(CMAKE_CXX_STANDARD_REQUIRED True)

    option(BUILD_UNIT_TESTS "Build unit tests" OFF)
endif()

add_subdirectory("tree")