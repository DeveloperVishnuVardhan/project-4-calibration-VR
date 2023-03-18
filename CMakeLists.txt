cmake_minimum_required(VERSION 2.8)
project(main.cpp)
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
add_executable(main.cpp main.cpp operations.cpp operations.h)
add_executable(vir_reality.cpp vir_reality.cpp operations.cpp operations.h)
add_executable(harris_corners.cpp harris_corners.cpp operations.cpp operations.h)
target_link_libraries(main.cpp ${OpenCV_LIBS})
target_link_libraries(vir_reality.cpp ${OpenCV_LIBS})
target_link_libraries(harris_corners.cpp ${OpenCV_LIBS})


