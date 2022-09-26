# Bug 记录

## 1. Backend: glfw + opengl3 (已经配置好了)
```
if(APPLE)
    target_link_libraries(imgui
        "-framework Metal"
        "-framework Cocoa"
        "-framework OpenGL"
        "glfw"
    )
endif()
```

### 1.1 Macos

1. macos 下clang版本问题导致的，从clang12.0.5升级成13
```
[build] In file included from /Volumes/SSD/Git/RiotGameApplication/include/imgui/backends/imgui_impl_osx.mm:19:
[build] In file included from /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Cocoa.framework/Headers/Cocoa.h:12:
[build] In file included from /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/Foundation.h:12:
[build] /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSBundle.h:91:143: error: function does not return NSString
[build] - (NSAttributedString *)localizedAttributedStringForKey:(NSString *)key value:(nullable NSString *)value table:(nullable NSString *)tableName NS_FORMAT_ARGUMENT(1) NS_REFINED_FOR_SWIFT API_AVAILABLE(macos(12.0), ios(15.0), watchos(8.0), tvos(15.0));
[build]                                                          ~~~~~~~~~~~~~~                                                                       ^                  ~
[build] /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObjCRuntime.h:103:48: note: expanded from macro 'NS_FORMAT_ARGUMENT'
[build]         #define NS_FORMAT_ARGUMENT(A) __attribute__ ((format_arg(A)))
[build]                                                       ^          ~
[build] In file included from /Volumes/SSD/Git/RiotGameApplication/include/imgui/backends/imgui_impl_metal.mm:35:
[build] In file included from /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Metal.framework/Headers/Metal.h:9:
[build] In file included from /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Metal.framework/Headers/MTLTypes.h:8:
[build] In file included from /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/Foundation.h:12:
[build] /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSBundle.h:91:143: error: function does not return NSString
[build] - (NSAttributedString *)localizedAttributedStringForKey:(NSString *)key value:(nullable NSString *)value table:(nullable NSString *)tableName NS_FORMAT_ARGUMENT(1) NS_REFINED_FOR_SWIFT API_AVAILABLE(macos(12.0), ios(15.0), watchos(8.0), tvos(15.0));
[build]                                                          ~~~~~~~~~~~~~~                                                                       ^                  ~
[build] /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObjCRuntime.h:103:48: note: expanded from macro 'NS_FORMAT_ARGUMENT'
[build]         #define NS_FORMAT_ARGUMENT(A) __attribute__ ((format_arg(A)))
[build]                                                       ^          ~
[build] 1 error generated.
```

2. macos中需要增加链接库 "-framework OpenGL"

```
[build] Undefined symbols for architecture x86_64:
[build]   "_glClear", referenced from:
[build]       _main in main.cpp.o
[build]   "_glClearColor", referenced from:
[build]       _main in main.cpp.o
[build]   "_glViewport", referenced from:
[build]       _main in main.cpp.o
[build] ld: symbol(s) not found for architecture x86_64
```

3. macos中需要增加链接库 "-framework Cocoa"

```
[build] Undefined symbols for architecture x86_64:
[build]   "_NSLog", referenced from:
[build]       -[MetalContext renderPipelineStateForFramebufferDescriptor:device:] in imgui_impl_metal.mm.o
[build]   "_OBJC_CLASS_$_NSMutableArray", referenced from:
[build]       objc-class-ref in imgui_impl_metal.mm.o
[build]   "_OBJC_CLASS_$_NSMutableDictionary", referenced from:
[build]       objc-class-ref in imgui_impl_metal.mm.o
[build]   "_OBJC_CLASS_$_NSObject", referenced from:
[build]       _OBJC_CLASS_$_MetalContext in imgui_impl_metal.mm.o
[build]       _OBJC_CLASS_$_FramebufferDescriptor in imgui_impl_metal.mm.o
[build]       _OBJC_CLASS_$_MetalBuffer in imgui_impl_metal.mm.o
[build]   "_OBJC_METACLASS_$_NSObject", referenced from:
[build]       _OBJC_METACLASS_$_MetalBuffer in imgui_impl_metal.mm.o
[build]       _OBJC_METACLASS_$_FramebufferDescriptor in imgui_impl_metal.mm.o
[build]       _OBJC_METACLASS_$_MetalContext in imgui_impl_metal.mm.o
[build]   "___CFConstantStringClassReference", referenced from:
[build]       CFString in imgui_impl_metal.mm.o
[build]       CFString in imgui_impl_metal.mm.o
[build]       CFString in imgui_impl_metal.mm.o
[build]       CFString in imgui_impl_metal.mm.o
[build]       CFString in imgui_impl_metal.mm.o
[build]       CFString in imgui_impl_metal.mm.o
[build]   "__objc_empty_cache", referenced from:
[build]       _OBJC_CLASS_$_MetalContext in imgui_impl_metal.mm.o
[build]       _OBJC_CLASS_$_FramebufferDescriptor in imgui_impl_metal.mm.o
[build]       _OBJC_CLASS_$_MetalBuffer in imgui_impl_metal.mm.o
[build]       _OBJC_METACLASS_$_MetalBuffer in imgui_impl_metal.mm.o
[build]       _OBJC_METACLASS_$_FramebufferDescriptor in imgui_impl_metal.mm.o
[build]       _OBJC_METACLASS_$_MetalContext in imgui_impl_metal.mm.o
[build]   "_objc_alloc", referenced from:
[build]       ImGui_ImplMetal_NewFrame(MTLRenderPassDescriptor*) in imgui_impl_metal.mm.o
[build]       -[MetalContext dequeueReusableBufferOfLength:device:] in imgui_impl_metal.mm.o
[build]   "_objc_alloc_init", referenced from:
[build]       ImGui_ImplMetal_Init(id<MTLDevice>) in imgui_impl_metal.mm.o
[build]       ImGui_ImplMetal_CreateDeviceObjects(id<MTLDevice>) in imgui_impl_metal.mm.o
[build]       -[MetalContext renderPipelineStateForFramebufferDescriptor:device:] in imgui_impl_metal.mm.o
[build]   "_objc_enumerationMutation", referenced from:
[build]       -[MetalContext dequeueReusableBufferOfLength:device:] in imgui_impl_metal.mm.o
[build]   "_objc_msgSend", referenced from:
[build]       ImGui_ImplMetal_Init(id<MTLDevice>) in imgui_impl_metal.mm.o
[build]       ImGui_ImplMetal_DestroyDeviceObjects() in imgui_impl_metal.mm.o
[build]       ImGui_ImplMetal_NewFrame(MTLRenderPassDescriptor*) in imgui_impl_metal.mm.o
[build]       ImGui_ImplMetal_CreateDeviceObjects(id<MTLDevice>) in imgui_impl_metal.mm.o
[build]       ImGui_ImplMetal_RenderDrawData(ImDrawData*, id<MTLCommandBuffer>, id<MTLRenderCommandEncoder>) in imgui_impl_metal.mm.o
[build]       ImGui_ImplMetal_SetupRenderState(ImDrawData*, id<MTLCommandBuffer>, id<MTLRenderCommandEncoder>, id<MTLRenderPipelineState>, MetalBuffer*, unsigned long) in imgui_impl_metal.mm.o
[build]       ____Z30ImGui_ImplMetal_RenderDrawDataP10ImDrawDataPU27objcproto16MTLCommandBuffer11objc_objectPU34objcproto23MTLRenderCommandEncoder11objc_object_block_invoke_2 in imgui_impl_metal.mm.o
[build]       ...
[build]   "_objc_msgSendSuper2", referenced from:
[build]       -[MetalBuffer initWithBuffer:] in imgui_impl_metal.mm.o
[build]       -[FramebufferDescriptor initWithRenderPassDescriptor:] in imgui_impl_metal.mm.o
[build]       -[MetalContext init] in imgui_impl_metal.mm.o
[build]   "_objc_setProperty_nonatomic", referenced from:
[build]       -[MetalBuffer setBuffer:] in imgui_impl_metal.mm.o
[build]       -[MetalContext setDevice:] in imgui_impl_metal.mm.o
[build]       -[MetalContext setDepthStencilState:] in imgui_impl_metal.mm.o
[build]       -[MetalContext setFramebufferDescriptor:] in imgui_impl_metal.mm.o
[build]       -[MetalContext setRenderPipelineStateCache:] in imgui_impl_metal.mm.o
[build]       -[MetalContext setFontTexture:] in imgui_impl_metal.mm.o
[build]       -[MetalContext setBufferCache:] in imgui_impl_metal.mm.o
[build]       ...
[build]   "_objc_sync_enter", referenced from:
[build]       ____Z30ImGui_ImplMetal_RenderDrawDataP10ImDrawDataPU27objcproto16MTLCommandBuffer11objc_objectPU34objcproto23MTLRenderCommandEncoder11objc_object_block_invoke_2 in imgui_impl_metal.mm.o
[build]       -[MetalContext dequeueReusableBufferOfLength:device:] in imgui_impl_metal.mm.o
[build]   "_objc_sync_exit", referenced from:
[build]       ____Z30ImGui_ImplMetal_RenderDrawDataP10ImDrawDataPU27objcproto16MTLCommandBuffer11objc_objectPU34objcproto23MTLRenderCommandEncoder11objc_object_block_invoke_2 in imgui_impl_metal.mm.o
[build]       -[MetalContext dequeueReusableBufferOfLength:device:] in imgui_impl_metal.mm.o
[build] ld: symbol(s) not found for architecture x86_64
```

4.  macos中需要增加链接库 "-framework Metal"

```
[build]   "_OBJC_CLASS_$_MTLDepthStencilDescriptor", referenced from:
[build]       objc-class-ref in imgui_impl_metal.mm.o
[build]   "_OBJC_CLASS_$_MTLRenderPipelineDescriptor", referenced from:
[build]       objc-class-ref in imgui_impl_metal.mm.o
[build]   "_OBJC_CLASS_$_MTLTextureDescriptor", referenced from:
[build]       objc-class-ref in imgui_impl_metal.mm.o
[build]   "_OBJC_CLASS_$_MTLVertexDescriptor", referenced from:
[build]       objc-class-ref in imgui_impl_metal.mm.o
[build] ld: symbol(s) not found for architecture x86_64
```

### 1.2 Windows

1. Windows中因为对`link_libraries`和`target_link_libraries`理解不到位导致出错

`link_libraries`用于将要被add的前面，链接这些文件进来，目前已被弃用
`target_link_libraries`用于add后，将items链接到目标文件上

```
...
elseif(WIN32)
    target_link_libraries(imgui ${GLFW_INCLUDE_LIB}) # 对
    #link_libraries(${GLFW_INCLUDE_LIB}) # 错 这里链接不进来 所以才会有下面的找不到内容的错误
endif()

# 应该是
# link_libraries必须放在将要add的前面 目前以弃用 改用后面的target_link_libraries
# link_libraries(${GLFW_INCLUDE_LIB})

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
elseif(WIN32)
    target_link_libraries(imgui ${GLFW_INCLUDE_LIB})    
endif()
```

```cmake
[build] CMakeFiles\imgui.dir/objects.a(imgui_impl_glfw.cpp.obj): In function `ImGui_ImplGlfw_NewFrame()':
[build] E:/Github/RGAL/include/imgui/backends/imgui_impl_glfw.cpp:792: undefined reference to `glfwGetWindowSize'
[build] E:/Github/RGAL/include/imgui/backends/imgui_impl_glfw.cpp:793: undefined reference to `glfwGetFramebufferSize'
[build] E:/Github/RGAL/include/imgui/backends/imgui_impl_glfw.cpp:799: undefined reference to `glfwGetTime'
[build] collect2.exe: error: ld returned 1 exit status
[build] mingw32-make.exe[2]: *** [include\imgui\CMakeFiles\imgui.dir\build.make:201: include/imgui/libimgui.dll] Error 1
[build] mingw32-make.exe[1]: *** [CMakeFiles\Makefile2:1206: include/imgui/CMakeFiles/imgui.dir/all] Error 2
[build] mingw32-make.exe: *** [Makefile:155: all] Error 2
```

## 2. Backend: Metal + GLFW
```
if(APPLE)
    target_link_libraries(imgui
        "-framework Metal"
        "-framework Cocoa"
        "-framework OpenGL"
        "-framework Foundation"
        "glfw"
        "-framework MetalKit"
        "-framework QuartzCore"
    )
endif()

// mm文件头部还需要
#import <Metal/Metal.h>
#import <QuartzCore/QuartzCore.h>
#include "imgui_impl_metal.h"
#define GLFW_INCLUDE_NONE
#define GLFW_EXPOSE_NATIVE_COCOA
#include "glfw3.h"
#include "glfw3native.h"
```

- 特别需要注意的是，Macos上Metal应用的是objective-c++，编译的文件是.mm文件，如果编译.cpp文件会出现下面 **1**中一系列问题，考虑改名并修改文件中部分语法

1. 将cpp文件修改为objective-c++项目，CMakeLists.txt对应的出现cpp文件的地方也需要改变，lib可以不修改，但是编译的可执行文件文件处一定得该，因为Metal用到的有的库不是为cpp设计的，会找不到

```
[build] In file included from /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/Foundation.h:12:
[build] /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSBundle.h:91:143: error: function does not return NSString
[build] - (NSAttributedString *)localizedAttributedStringForKey:(NSString *)key value:(nullable NSString *)value table:(nullable NSString *)tableName NS_FORMAT_ARGUMENT(1) NS_REFINED_FOR_SWIFT API_AVAILABLE(macos(12.0), ios(15.0), watchos(8.0), tvos(15.0));
[build]                                                          ~~~~~~~~~~~~~~                                                                       ^                  ~
[build] /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObjCRuntime.h:103:48: note: expanded from macro 'NS_FORMAT_ARGUMENT'
[build]         #define NS_FORMAT_ARGUMENT(A) __attribute__ ((format_arg(A)))
[build]                                                       ^          ~
[build] 1 error generated.
```

2. macos增加链接库 `"-framework QuartzCore"`

```
[build] Undefined symbols for architecture x86_64:
[build]   "_OBJC_CLASS_$_CAMetalLayer", referenced from:
[build]       objc-class-ref in main.mm.o
[build] ld: symbol(s) not found for architecture x86_64
```

3. 项目入口文件处注意需要下面define，根据该define后面会引入相应内容编译，否则找不到这部分内容

```
#define GLFW_INCLUDE_NONE
#define GLFW_EXPOSE_NATIVE_COCOA
#include "glfw3.h"
#include "glfw3native.h"
```

```
[build] /Volumes/SSD/Git/RiotGameApplication/main.mm:89:5: error: use of undeclared identifier 'NSWindow'; did you mean 'cWindow'?
[build]     NSWindow *nswin = glfwGetCocoaWindow(window);
[build]     ^~~~~~~~
[build]     cWindow
[build] /Library/Developer/CommandLineTools/SDKs/MacOSX12.1.sdk/System/Library/Frameworks/CoreServices.framework/Frameworks/AE.framework/Headers/AERegistry.h:108:3: note: 'cWindow' declared here
[build]   cWindow                       = 'cwin', /*  0x6377696e  */
[build]   ^
[build] /Volumes/SSD/Git/RiotGameApplication/main.mm:89:23: error: use of undeclared identifier 'glfwGetCocoaWindow'
[build]     NSWindow *nswin = glfwGetCocoaWindow(window);
[build]                       ^
[build] /Volumes/SSD/Git/RiotGameApplication/main.mm:89:15: error: use of undeclared identifier 'nswin'
[build]     NSWindow *nswin = glfwGetCocoaWindow(window);
[build]               ^
[build] /Volumes/SSD/Git/RiotGameApplication/main.mm:93:5: error: use of undeclared identifier 'nswin'
[build]     nswin.contentView.layer = layer;
[build]     ^
[build] /Volumes/SSD/Git/RiotGameApplication/main.mm:94:5: error: use of undeclared identifier 'nswin'
[build]     nswin.contentView.wantsLayer = YES;
[build]     ^
[build] 5 errors generated.
```