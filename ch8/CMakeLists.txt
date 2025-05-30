cmake_minimum_required(VERSION 2.8)
project(ch8)

set(CMAKE_BUILD_TYPE "Release")
add_definitions("-DENABLE_SSE")
set(CMAKE_CXX_FLAGS "-std=c++17 ${SSE_FLAGS} -g -O3 -march=native")

find_package(OpenCV 4 REQUIRED)
find_package(Sophus REQUIRED)
find_package(Pangolin REQUIRED)

include_directories(
        ${OpenCV_INCLUDE_DIRS}
        ${G2O_INCLUDE_DIRS}
        ${Sophus_INCLUDE_DIRS}
        "/usr/include/eigen3/"
        ${Pangolin_INCLUDE_DIRS}
)

add_executable(optical_flow optical_flow.cpp)
target_link_libraries(optical_flow ${OpenCV_LIBS})

add_executable(direct_method direct_method.cpp)
target_link_libraries(direct_method ${OpenCV_LIBS} ${Pangolin_LIBRARIES})

file(COPY left.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY disparity.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY LK1.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY LK2.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY 000001.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY 000002.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY 000003.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY 000004.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY 000005.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
