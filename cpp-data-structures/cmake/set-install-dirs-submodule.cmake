# This script uses the project name as a prefix for installation directories
# This will result in a local installation dedicated to the top level project

include(GNUInstallDirs)

if(NOT DEFINED cpp_data_structures_INSTALL_INCLUDEDIR)
  set(cpp_data_structures_INSTALL_INCLUDEDIR "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_BINDIR)
  set(cpp_data_structures_INSTALL_BINDIR "${CMAKE_INSTALL_BINDIR}/${PROJECT_NAME}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_LIBDIR)
  set(cpp_data_structures_INSTALL_LIBDIR "${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_DATADIR)
  set(cpp_data_structures_INSTALL_DATADIR "${CMAKE_INSTALL_DATADIR}/${PROJECT_NAME}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_CMAKECONFIGDIR)
  set(cpp_data_structures_INSTALL_CMAKECONFIGDIR 
	"${cpp_data_structures_INSTALL_DATADIR}/cpp-data-structures/cmake")
endif()