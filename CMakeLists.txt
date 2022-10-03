cmake_minimum_required(VERSION 3.16)

# set the project name and version
project(RGAL VERSION 1.0.0)

set(CMAKE_CXX_FLAG "${CMAKE_CXX_FLAG} -I/opt/local/include -I/opt/homebrew/include 
-Wno-deprecated-declarations")

# specify the c++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(INPUT_PATH ${PROJECT_SOURCE_DIR}/in_output)

configure_file(${INPUT_PATH}/TestConfig.h.in TestConfig.h)

# link the source code
add_subdirectory(${PROJECT_SOURCE_DIR}/src)
set(RGAL_INCLUDE_PATH ${PROJECT_SOURCE_DIR}/src/include)

# create executable RGAL
add_executable(RGALE main.cpp)

target_link_libraries(RGALE PUBLIC RGAL_BACKEND)

target_include_directories(RGALE PUBLIC
    ${PROJECT_BINARY_DIR})

install(TARGETS RGALE DESTINATION bin)
install(FILES ${PROJECT_BINARY_DIR}/TestConfig.h DESTINATION include)