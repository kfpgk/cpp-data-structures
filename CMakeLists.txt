# Determine whether this is a stand alone build
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    set(cpp_data_structures_STANDALONE_BUILD ON)
else()
    set(cpp_data_structures_STANDALONE_BUILD OFF)
endif()

# Only define the project if this is a stand alone build
if(cpp_data_structures_STANDALONE_BUILD)

    cmake_minimum_required(VERSION 3.20)

    project(cpp-data-structures 
        VERSION 0.1
        LANGUAGES CXX
    )

    set(CMAKE_CXX_STANDARD 23)
    set(CMAKE_CXX_STANDARD_REQUIRED True)

    option(BUILD_UNIT_TESTS "Build unit tests" OFF)

endif()

add_subdirectory("cpp-data-structures")