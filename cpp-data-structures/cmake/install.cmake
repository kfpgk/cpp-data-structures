# Requires: cpp_data_structures_INSTALL_xxx variables to be set in advance
# Requires: cpp_data_structures_TARGETS variable to be set in advance

set(PUBLIC_HEADERS
    "tree/Node.hpp"
    "tree/Node.tpp"
)

install(TARGETS cpp-data-structures 
    EXPORT ${cpp_data_structures_TARGETS}
    RUNTIME DESTINATION "${cpp_data_structures_INSTALL_BINDIR}"
    LIBRARY DESTINATION "${cpp_data_structures_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${cpp_data_structures_INSTALL_LIBDIR}"
    INCLUDES DESTINATION "${cpp_data_structures_INSTALL_INCLUDEDIR}"
    COMPONENT Runtime
)

foreach(header_file ${PUBLIC_HEADERS})
    get_filename_component(header_dir "${header_file}" DIRECTORY)
    install(
        FILES "${header_file}" 
        DESTINATION 
            "${cpp_data_structures_INSTALL_INCLUDEDIR}/cpp-data-structures/${header_dir}"
        COMPONENT Devel
    )
endforeach()