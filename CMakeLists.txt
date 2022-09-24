cmake_minimum_required(VERSION 3.16)

# set the project name and version
project(RGAL VERSION 1.0.0)

# specify the c++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(INCLUDE_PATH ${PROJECT_SOURCE_DIR}/include)
set(INPUT_PATH ${PROJECT_SOURCE_DIR}/input)

configure_file(${INPUT_PATH}/TestConfig.h.in TestConfig.h)

# set optional for glog (for now is needed)
option(USE_GLOG "Use google log lib or not" ON)

if(USE_GLOG)
    add_subdirectory(${INCLUDE_PATH}/glog)
endif()

# set optional for imgui (for now is needed)
option(USE_IMGUI "Use imgui GUI lib or not" on)

if(USE_IMGUI)
    add_subdirectory(${INCLUDE_PATH}/imgui)
    list(APPEND EXTRA_LIBS imgui)
endif()

# create executable RGAL
add_executable(RGALE main.cpp)

target_link_libraries(RGALE PUBLIC
    ${EXTRA_LIBS})

target_link_directories(RGALE PUBLIC
    ${PROJECT_BINARY_DIR})

install(TARGETS RGALE DESTINATION bin)
install(FILES ${PROJECT_BINARY_DIR}/TestConfig.h DESTINATION include)