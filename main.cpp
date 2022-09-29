

#if defined(_WIN32)
#define IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS
#endif

#include <iostream>

// 输入文件内容
#include "TestConfig.h"

#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"


#include "glfw3.h"
#include "nlohmann/json.hpp"

#ifdef USE_IMGUI
#include "imgui.h"
#endif

#ifdef USE_GLOG
#include "glog/logging.h"
#endif

static void glfw_error_callback(int error, const char *description)
{
    fprintf(stderr, "Glfw Error %d: %s\n", error, description);
}

int main(int argc, char *argv[])
{
    std::cout << "ok" << std::endl;

#ifdef USE_GLOG
    std::cout << "glog ok. " << std::endl;
#else
    std::cout << "For now just support glog lib. " << std::endl;
#endif

    

#ifdef USE_IMGUI

#else
    std::cout << "For now just support imgui lib. " << std::endl;
#endif

    return 0;
}