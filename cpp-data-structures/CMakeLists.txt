# Set path to subdirectory holding cmake scripts
set(cpp_data_structures_cmake_code_dir "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# Set global variables needed for installation and packaging
# Installation directories (esp. xxx_INSTALL_INCLUDEDIR) are also used by
# consumers. Refer to target_include_directories()'s INSTALL_INTERFACE.
include("${cpp_data_structures_cmake_code_dir}/set-install-dirs.cmake")
include("${cpp_data_structures_cmake_code_dir}/set-targets-var.cmake")

# Header only library target
add_library(cpp-data-structures INTERFACE)

# Propagate include directories
target_include_directories(cpp-data-structures
    INTERFACE
        # Use source tree include directories during the build phase 
        # (for direct header access)
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/..>
        # Provide installed header path for downstream projects using this 
        # target via CMake's install interface
        $<INSTALL_INTERFACE:${cpp_data_structures_INSTALL_INCLUDEDIR}>
)

# We do not want to install or package if this is not a stand alone build
if(cpp_data_structures_STANDALONE_BUILD)

    include("${cpp_data_structures_cmake_code_dir}/install.cmake")

    include("${cpp_data_structures_cmake_code_dir}/create-package.cmake")

endif()

add_subdirectory("tree")