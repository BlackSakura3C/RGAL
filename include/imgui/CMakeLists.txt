cmake_minimum_required(VERSION 3.16)

project(imgui VERSION 1.0 DESCRIPTION "C++ open GUI library")

set(CPACK_PACKAEG_NAME imgui)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "c++ GUI lib")
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})

set(IMGUI_PUBLIC_H ${PROJECT_SOURCE_DIR}/backends)

# prevent output " 'glViewport' has been explicitly marked deprecated here. "
set(CMAKE_CXX_FLAG "${CMAKE_CXX_FLAG}  -Wno-deprecated-declarations") 

# find_package(glfw3 REQUIRED)
find_package(glfw3 REQUIRED)

# list(APPEND IMGUI_BACKEND_H
# ${IMGUI_PUBLIC_H}/imgui_impl_metal.h
# ${IMGUI_PUBLIC_H}/imgui_impl_osx.h
# ${IMGUI_PUBLIC_H}/imgui_impl_opengl3.h
# ${IMGUI_PUBLIC_H}/imgui_impl_opengl3_loader.h)
list(APPEND IMGUI_SRC_CXX
    ${PROJECT_SOURCE_DIR}/imgui.cpp
    ${PROJECT_SOURCE_DIR}/imgui_draw.cpp
    ${PROJECT_SOURCE_DIR}/imgui_tables.cpp
    ${PROJECT_SOURCE_DIR}/imgui_widgets.cpp
    ${PROJECT_SOURCE_DIR}/imgui_demo.cpp)

list(APPEND IMGUI_BACKEND_CXX
    # ${IMGUI_PUBLIC_H}/imgui_impl_metal.mm
    ${IMGUI_PUBLIC_H}/imgui_impl_glfw.cpp
    ${IMGUI_PUBLIC_H}/imgui_impl_opengl3.cpp)

list(APPEND IMGUI_SRC
    ${IMGUI_SRC_CXX}
    ${IMGUI_BACKEND_CXX})

add_library(imgui ${IMGUI_SRC})

if(APPLE)
    target_link_libraries(imgui
        "-framework Metal"
        "-framework Cocoa"
        "-framework OpenGL"
        "-framework Foundation"
        "glfw"
        # "-framework MetalKit"
        # "-framework QuartzCore"
    )
endif()

# state that anybody linking to us needs to include the current source dir
# to find imgui.h, while we don't.
target_include_directories(imgui
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
    PUBLIC ${PROJECT_SOURCE_DIR}/GLFW
    PUBLIC ${PROJECT_SOURCE_DIR}/Metal
    PUBLIC ${PROJECT_SOURCE_DIR}/Foundation
    PUBLIC ${PROJECT_SOURCE_DIR}/QuartzCore
    INTERFACE ${IMGUI_PUBLIC_H})

install(TARGETS imgui DESTINATION lib)
install(FILES imgui.h DESTINATION include/imgui)