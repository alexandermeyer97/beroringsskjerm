# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appberoringsskjerm_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appberoringsskjerm_autogen.dir\\ParseCache.txt"
  "appberoringsskjerm_autogen"
  )
endif()
