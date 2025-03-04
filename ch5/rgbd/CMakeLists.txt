find_package(Sophus REQUIRED)
include_directories(${Sophus_INCLUDE_DIRS})

find_package(Pangolin REQUIRED)

add_executable(joinMap joinMap.cpp)
target_link_libraries(joinMap ${OpenCV_LIBS} ${Pangolin_LIBRARIES})

configure_file(pose.txt ${CMAKE_CURRENT_BINARY_DIR}/pose.txt COPYONLY)
file(COPY color DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
file(COPY depth DESTINATION ${CMAKE_CURRENT_BINARY_DIR})