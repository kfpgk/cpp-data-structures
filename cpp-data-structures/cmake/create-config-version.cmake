# Get access to helper functions for generating config files
include(CMakePackageConfigHelpers)

# Generate the file inside the build tree
write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/cmake/${cpp_data_structures_config_version_file}"
    VERSION ${cpp_data_structures_VERSION}
    COMPATIBILITY AnyNewerVersion
)

# Install the file to the install tree
install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/cmake/${cpp_data_structures_config_version_file}"
    DESTINATION "${cpp_data_structures_INSTALL_CMAKECONFIGDIR}"
    COMPONENT CMakeConfig
)