cmake_minimum_required(VERSION 2.8)
project(imgDisplay.cpp.cpp)
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
add_executable(main.cpp main.cpp)
target_link_libraries(main.cpp ${OpenCV_LIBS})


