#if defined(_WIN32)
#define IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS
#endif

#include <iostream>

// 输入文件内容
#include "TestConfig.h"

#include "cn_offline_api.h"

// #include "imgui.h"
// #include "imgui_impl_glfw.h"
// #include "imgui_impl_opengl3.h"

// #include "glfw3.h"
// #include "nlohmann/json.hpp"
// #include "cpr/cpr.h"

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

void fInitGlog()
{
    FLAGS_minloglevel = 0;
    FLAGS_log_dir = "../in_output/log/";
    google::InitGoogleLogging("CnOfflineApi");
}

int main(int argc, char *argv[])
{
    std::cout << "ok" << std::endl;

#ifdef USE_GLOG
    std::cout << "glog ok. " << std::endl;
#else
    std::cout << "For now just support glog lib. " << std::endl;
#endif

    // Init glog.
    fInitGlog();

    CnOfflineApi vApi;
    LOG(INFO) << vApi.fGetPlayerBattleHistoryByNickname("中单法王伏地魔", 1, 12);
    LOG(INFO) << vApi.fGetPlayerInfo("中单法王伏地魔", 1);
    LOG(INFO) << vApi.fGetAllPlayerByNickname("中单法王伏地魔");
    LOG(INFO) << vApi.fGetPlayerInfoByQQ("250820552", 4);

#ifdef USE_IMGUI
    ;
#else
    std::cout << "For now just support imgui lib. " << std::endl;
#endif

    return 0;
}