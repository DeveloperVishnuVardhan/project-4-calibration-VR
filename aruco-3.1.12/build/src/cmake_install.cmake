# Install script for directory: /Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "main" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/build/src/libaruco.3.1.12.dylib"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/build/src/libaruco.3.1.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.3.1.12.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.3.1.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /opt/anaconda3/bin/install_name_tool
        -delete_rpath "/usr/local/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "main" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/build/src/libaruco.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.dylib")
    execute_process(COMMAND /opt/anaconda3/bin/install_name_tool
      -delete_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaruco.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aruco" TYPE FILE FILES
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/aruco_cvversioning.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/cameraparameters.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/dictionary_based.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/ippe.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/markerdetector_impl.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/markermap.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/timers.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/aruco_export.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/cvdrawingutils.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/dictionary.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/levmarq.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/marker.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/picoflann.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/aruco.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/debug.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/markerdetector.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/markerlabeler.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/posetracker.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/fractaldetector.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aruco/fractallabelers" TYPE FILE FILES
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/fractallabelers/fractalposetracker.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/fractallabelers/fractalmarkerset.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/fractallabelers/fractalmarker.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/fractallabelers/fractallabeler.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aruco/dcf" TYPE FILE FILES
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/dcf/dcfmarkermaptracker.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/dcf/dcfmarkertracker.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/dcf/dcf_utils.h"
    "/Users/jyothivishnuvardhankolla/Desktop/Project-4-Calibration-Augmented-Reality/aruco-3.1.12/src/dcf/trackerimpl.h"
    )
endif()

