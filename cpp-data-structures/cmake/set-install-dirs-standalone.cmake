# This script uses standard installation locations

include(GNUInstallDirs)

if(NOT DEFINED cpp_data_structures_INSTALL_INCLUDEDIR)
  set(cpp_data_structures_INSTALL_INCLUDEDIR "${CMAKE_INSTALL_INCLUDEDIR}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_BINDIR)
  set(cpp_data_structures_INSTALL_BINDIR "${CMAKE_INSTALL_BINDIR}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_LIBDIR)
  set(cpp_data_structures_INSTALL_LIBDIR "${CMAKE_INSTALL_LIBDIR}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_DATADIR)
  set(cpp_data_structures_INSTALL_DATADIR "${CMAKE_INSTALL_DATADIR}")
endif()

if(NOT DEFINED cpp_data_structures_INSTALL_CMAKECONFIGDIR)
  set(cpp_data_structures_INSTALL_CMAKECONFIGDIR 
	"${cpp_data_structures_INSTALL_DATADIR}/${CMAKE_PROJECT_NAME}/cmake")
endif()