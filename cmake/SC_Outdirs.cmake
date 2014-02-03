# in its own file so that it can be used by the schema scanner as well
IF(NOT DEFINED CMAKE_LIBRARY_OUTPUT_DIRECTORY)
  SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${SC_BINARY_DIR}/lib CACHE INTERNAL "Single output directory for building all libraries.")
ENDIF(NOT DEFINED CMAKE_LIBRARY_OUTPUT_DIRECTORY)
IF(NOT DEFINED CMAKE_ARCHIVE_OUTPUT_DIRECTORY)
  SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${SC_BINARY_DIR}/lib CACHE INTERNAL "Single output directory for building all archives.")
ENDIF(NOT DEFINED CMAKE_ARCHIVE_OUTPUT_DIRECTORY)
IF(NOT DEFINED CMAKE_RUNTIME_OUTPUT_DIRECTORY)
  SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${SC_BINARY_DIR}/bin CACHE INTERNAL "Single output directory for building all executables.")
ENDIF(NOT DEFINED CMAKE_RUNTIME_OUTPUT_DIRECTORY)
FOREACH(CFG_TYPE ${CMAKE_CONFIGURATION_TYPES})
  STRING(TOUPPER "${CFG_TYPE}" CFG_TYPE)
  IF(NOT "CMAKE_LIBRARY_OUTPUT_DIRECTORY_${CFG_TYPE}")
    SET("CMAKE_LIBRARY_OUTPUT_DIRECTORY_${CFG_TYPE}" ${SC_BINARY_DIR}/lib CACHE INTERNAL "Single output directory for building all libraries.")
  ENDIF(NOT "CMAKE_LIBRARY_OUTPUT_DIRECTORY_${CFG_TYPE}")
  IF(NOT "CMAKE_ARCHIVE_OUTPUT_DIRECTORY_${CFG_TYPE}")
    SET("CMAKE_ARCHIVE_OUTPUT_DIRECTORY_${CFG_TYPE}" ${SC_BINARY_DIR}/lib CACHE INTERNAL "Single output directory for building all archives.")
  ENDIF(NOT "CMAKE_ARCHIVE_OUTPUT_DIRECTORY_${CFG_TYPE}")
  IF(NOT "CMAKE_RUNTIME_OUTPUT_DIRECTORY_${CFG_TYPE}")
    SET("CMAKE_RUNTIME_OUTPUT_DIRECTORY_${CFG_TYPE}" ${SC_BINARY_DIR}/bin CACHE INTERNAL "Single output directory for building all executables.")
  ENDIF(NOT "CMAKE_RUNTIME_OUTPUT_DIRECTORY_${CFG_TYPE}")
ENDFOREACH()

# Local Variables:
# tab-width: 8
# mode: cmake
# indent-tabs-mode: t
# End:
# ex: shiftwidth=2 tabstop=8

