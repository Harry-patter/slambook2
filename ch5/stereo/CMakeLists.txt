find_package(Pangolin REQUIRED)

add_executable(stereoVision stereoVision.cpp)
target_link_libraries(stereoVision ${OpenCV_LIBS} ${Pangolin_LIBRARIES})
configure_file(left.png ${CMAKE_CURRENT_BINARY_DIR}/left.png COPYONLY)
configure_file(right.png ${CMAKE_CURRENT_BINARY_DIR}/right.png COPYONLY)