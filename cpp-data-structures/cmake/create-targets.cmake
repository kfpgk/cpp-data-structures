# Create targets file inside build tree
export(
    EXPORT ${cpp_data_structures_TARGETS}
    FILE "${CMAKE_CURRENT_BINARY_DIR}/cmake/${cpp_data_structures_targets_file}"
    NAMESPACE CPP_DATA_STRUCTURES::
)

# Install the the targets file to the install tree
install(
    EXPORT ${cpp_data_structures_TARGETS}
    FILE "${cpp_data_structures_targets_file}"
    DESTINATION "${cpp_data_structures_INSTALL_CMAKECONFIGDIR}"
    NAMESPACE CPP_DATA_STRUCTURES::
    COMPONENT CMakeConfig
)