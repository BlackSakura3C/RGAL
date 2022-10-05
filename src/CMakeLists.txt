set(CMAKE_CXX_FLAG "${CMAKE_CXX_FLAG} -I/opt/local/include -I/opt/homebrew/include 
-Wno-deprecated-declarations")

set(RGAL_BACKEND_PATH ${CMAKE_CURRENT_SOURCE_DIR}/backend)
set(RGAL_INCLUDE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/include)

aux_source_directory(${RGAL_BACKEND_PATH}/interface BACKEND_API)
aux_source_directory(${RGAL_INCLUDE_PATH}/interface BACKEND_API_INCLUDE)

set(EXTERNAL_INCLUDE_PATH ${PROJECT_SOURCE_DIR}/deps)

# find_package(glfw3 REQUIRED)

# set optional for glog (for now is needed)
option(USE_GLOG "Use google log lib or not" ON)

if(USE_GLOG)
    # TODO:是否需要增加开启选项 再议
endif()

#include_directories(${PROJECT_SOURCE_DIR}/deps SYSTEM)
#add_subdirectory(${EXTERNAL_INCLUDE_PATH}/glog)
list(APPEND EXTRA_LIBS glog)
list(APPEND EXTRA_LIBS_INCLUDE ${EXTERNAL_INCLUDE_PATH}/glog/src/glog)

# set optional for imgui (for now is needed)
option(USE_IMGUI "Use imgui GUI lib or not" ON)

if(USE_IMGUI)
    # TODO:是否需要增加开启选项 再议
endif()

# add_subdirectory(${EXTERNAL_INCLUDE_PATH}/imgui)
list(APPEND EXTRA_LIBS imgui)
list(APPEND EXTRA_LIBS_INCLUDE ${EXTERNAL_INCLUDE_PATH}/imgui)

# add_subdirectory(${EXTERNAL_INCLUDE_PATH}/json-develop)
list(APPEND EXTRA_LIBS nlohmann_json)
list(APPEND EXTRA_LIBS_INCLUDE ${EXTERNAL_INCLUDE_PATH}/json-develop/include/nlohmann)

# add_subdirectory(${EXTERNAL_INCLUDE_PATH}/cpr-master)
list(APPEND EXTRA_LIBS cpr)
list(APPEND EXTRA_LIBS_INCLUDE ${EXTERNAL_INCLUDE_PATH}/cpr-master/include/cpr)

add_library(RGAL_BACKEND ${BACKEND_API})

target_link_libraries(RGAL_BACKEND PUBLIC ${EXTRA_LIBS})

target_include_directories(RGAL_BACKEND PUBLIC
    ${RGAL_INCLUDE_PATH}/interface
    ${EXTRA_LIBS_INCLUDE})
