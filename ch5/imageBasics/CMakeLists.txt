project(imageBasics)

add_executable(imageBasics imageBasics.cpp)
# 链接OpenCV库
target_link_libraries(imageBasics ${OpenCV_LIBS})

add_executable(undistortImage undistortImage.cpp)
# 链接OpenCV库
target_link_libraries(undistortImage ${OpenCV_LIBS})

configure_file(distorted.png ${CMAKE_CURRENT_BINARY_DIR}/distorted.png COPYONLY)
configure_file(ubuntu.png ${CMAKE_CURRENT_BINARY_DIR}/ubuntu.png COPYONLY)
