# Only define the project if this is the top-level CMake run
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    cmake_minimum_required(VERSION 3.20)
    project(cpp-data-structures LANGUAGES CXX)

    set(CMAKE_CXX_STANDARD 23)
    set(CMAKE_CXX_STANDARD_REQUIRED True)

    option(BUILD_UNIT_TESTS "Build unit tests" OFF)
endif()

# Header only library target, used to propagate include directories
# Link to this to enable canonical include paths for these headers
add_library(cpp-data-structures INTERFACE)
target_include_directories(cpp-data-structures
    INTERFACE
        ${CMAKE_CURRENT_SOURCE_DIR}
)

add_subdirectory("cpp-data-structures")