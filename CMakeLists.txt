cmake_minimum_required(VERSION 2.6)
include(GNUInstallDirs)
project(NiFpgaHelper)

add_library(NiFpgaHelper SHARED NiFpga.c)
target_link_libraries(NiFpgaHelper -ldl)
set_target_properties(NiFpgaHelper PROPERTIES VERSION 2018.0 SOVERSION 2018.0)
install(TARGETS NiFpgaHelper DESTINATION ${CMAKE_INSTALL_LIBDIR})
install(FILES NiFpga.h DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
