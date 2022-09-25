# 英雄联盟相关应用开发工具

## 一、开发项目
## 0. 前言

1. 部分说明
- 所有的拳头API需要https://127.0.0.1:port作为头部，后需要身份验证，用户名riot+密码Token
- 项目依据的[API地址1](https://lcu.vivide.re/)、[API地址2](http://www.mingweisamuel.com/lcu-schema/tool/#/)

2. Token以及本地运行端口获取

```bash
# Windows 需管理员身份
wmic PROCESS WHERE name='LeagueClientUx.exe' GET commandline

# Mac或Linux
ps aux | grep LeagueClientUx
```

返回内容

```bash
# macos
amore            83065  97.5  1.4 42711652 230020   ??  S    10:49下午   0:35.32 /Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/LeagueClientUx Helper (Renderer).app/Contents/MacOS/LeagueClientUx Helper (Renderer) --type=renderer --no-sandbox --autoplay-policy=no-user-gesture-required --enable-viewport --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --field-trial-handle=1718379636,1319625535881156466,2563883693768367275,131072 --disable-features=CookiesWithoutSameSiteMustBeSecure,HardwareMediaKeyHandling,SameSiteByDefaultCookies --lang=en-US --framework-dir-path=/Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/Chromium Embedded Framework.framework --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --user-agent-product=LeagueOfLegendsClient/12.18.469.7517 (CEF 91) --disable-extensions --disable-scroll-bounce --disable-spell-checking --num-raster-threads=4 --enable-zero-copy --enable-gpu-memory-buffer-compositor-resources --enable-main-frame-before-activation --renderer-client-id=5 --no-v8-untrusted-code-mitigations --shared-files --app-name=LeagueClient --ux-name=LeagueClientUx --ux-helper-name=LeagueClientUxHelper --log-dir=LeagueClient Logs --app-port=52286 --output-base-dir=/Applications/League of Legends.app/Contents/LoL --crash-reporting=crashpad --crash-environment=JP1 --app-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-14_83036_LeagueClient.log --primary-ux-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-21_83054_LeagueClientUx.log
amore            83059  18.8  0.7  5033072 116260   ??  S    10:49下午   0:20.08 /Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/LeagueClientUx Helper (GPU).app/Contents/MacOS/LeagueClientUx Helper (GPU) --type=gpu-process --field-trial-handle=1718379636,1319625535881156466,2563883693768367275,131072 --disable-features=CookiesWithoutSameSiteMustBeSecure,HardwareMediaKeyHandling,SameSiteByDefaultCookies --no-sandbox --framework-dir-path=/Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/Chromium Embedded Framework.framework --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --user-agent-product=LeagueOfLegendsClient/12.18.469.7517 (CEF 91) --lang=en-US --gpu-preferences=SAAAAAAAAAAgACgAAAAAAAAAAAAAAAAAAABgAAAAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADYAwAAAAAAANgDAAAAAAAASAEAACgAAABAAQAAAAAAAEgBAAAAAAAAUAEAAAAAAABYAQAAAAAAAGABAAAAAAAAaAEAAAAAAABwAQAAAAAAAHgBAAAAAAAAgAEAAAAAAACIAQAAAAAAAJABAAAAAAAAmAEAAAAAAACgAQAAAAAAAKgBAAAAAAAAsAEAAAAAAAC4AQAAAAAAAMABAAAAAAAAyAEAAAAAAADQAQAAAAAAANgBAAAAAAAA4AEAAAAAAADoAQAAAAAAAPABAAAAAAAA+AEAAAAAAAAAAgAAAAAAAAgCAAAAAAAAEAIAAAAAAAAYAgAAAAAAACACAAAAAAAAKAIAAAAAAAAwAgAAAAAAADgCAAAAAAAAQAIAAAAAAABIAgAAAAAAAFACAAAAAAAAWAIAAAAAAABgAgAAAAAAAGgCAAAAAAAAcAIAAAAAAAB4AgAAAAAAABAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAGAAAAEAAAAAAAAAAAAAAABwAAABAAAAAAAAAAAAAAAAgAAAAQAAAAAAAAAAAAAAAKAAAAEAAAAAAAAAAAAAAACwAAABAAAAAAAAAAAAAAAA0AAAAQAAAAAAAAAAAAAAAOAAAAEAAAAAAAAAABAAAAAAAAABAAAAAAAAAAAQAAAAYAAAAQAAAAAAAAAAEAAAAHAAAAEAAAAAAAAAABAAAACAAAABAAAAAAAAAAAQAAAAoAAAAQAAAAAAAAAAEAAAALAAAAEAAAAAAAAAABAAAADQAAABAAAAAAAAAAAQAAAA4AAAAQAAAAAAAAAAQAAAAAAAAAEAAAAAAAAAAEAAAABgAAABAAAAAAAAAABAAAAAcAAAAQAAAAAAAAAAQAAAAIAAAAEAAAAAAAAAAEAAAACgAAABAAAAAAAAAABAAAAAsAAAAQAAAAAAAAAAQAAAANAAAAEAAAAAAAAAAEAAAADgAAABAAAAAAAAAABwAAAAAAAAAQAAAAAAAAAAcAAAAGAAAAEAAAAAAAAAAHAAAABwAAABAAAAAAAAAABwAAAAgAAAAQAAAAAAAAAAcAAAAKAAAAEAAAAAAAAAAHAAAACwAAABAAAAAAAAAABwAAAA0AAAAQAAAAAAAAAAcAAAAOAAAAEAAAAAAAAAAKAAAAAAAAABAAAAAAAAAACgAAAAYAAAAQAAAAAAAAAAoAAAAHAAAAEAAAAAAAAAAKAAAACAAAABAAAAAAAAAACgAAAAoAAAAQAAAAAAAAAAoAAAALAAAAEAAAAAAAAAAKAAAADQAAABAAAAAAAAAACgAAAA4AAAAIAAAAAAAAAAgAAAAAAAAA --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --shared-files --app-name=LeagueClient --ux-name=LeagueClientUx --ux-helper-name=LeagueClientUxHelper --log-dir=LeagueClient Logs --app-port=52286 --output-base-dir=/Applications/League of Legends.app/Contents/LoL --crash-reporting=crashpad --crash-environment=JP1 --app-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-14_83036_LeagueClient.log --primary-ux-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-21_83054_LeagueClientUx.log
amore            83066  10.6  2.7 42790404 452376   ??  S    10:49下午   0:18.81 /Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/LeagueClientUx Helper (Renderer).app/Contents/MacOS/LeagueClientUx Helper (Renderer) --type=renderer --no-sandbox --autoplay-policy=no-user-gesture-required --enable-viewport --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --field-trial-handle=1718379636,1319625535881156466,2563883693768367275,131072 --disable-features=CookiesWithoutSameSiteMustBeSecure,HardwareMediaKeyHandling,SameSiteByDefaultCookies --lang=en-US --framework-dir-path=/Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/Chromium Embedded Framework.framework --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --user-agent-product=LeagueOfLegendsClient/12.18.469.7517 (CEF 91) --disable-extensions --disable-scroll-bounce --disable-spell-checking --num-raster-threads=4 --enable-zero-copy --enable-gpu-memory-buffer-compositor-resources --enable-main-frame-before-activation --renderer-client-id=4 --no-v8-untrusted-code-mitigations --shared-files --app-name=LeagueClient --ux-name=LeagueClientUx --ux-helper-name=LeagueClientUxHelper --log-dir=LeagueClient Logs --app-port=52286 --output-base-dir=/Applications/League of Legends.app/Contents/LoL --crash-reporting=crashpad --crash-environment=JP1 --app-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-14_83036_LeagueClient.log --primary-ux-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-21_83054_LeagueClientUx.log
amore            83069   1.6  0.3  4736056  43120   ??  S    10:49下午   0:01.08 /Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/LeagueClientUx Helper.app/Contents/MacOS/LeagueClientUx Helper --type=utility --utility-sub-type=audio.mojom.AudioService --field-trial-handle=1718379636,1319625535881156466,2563883693768367275,131072 --disable-features=CookiesWithoutSameSiteMustBeSecure,HardwareMediaKeyHandling,SameSiteByDefaultCookies --lang=en-US --service-sandbox-type=audio --no-sandbox --use-mock-keychain --message-loop-type-ui --framework-dir-path=/Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/Chromium Embedded Framework.framework --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --user-agent-product=LeagueOfLegendsClient/12.18.469.7517 (CEF 91) --lang=en-US --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --shared-files --app-name=LeagueClient --ux-name=LeagueClientUx --ux-helper-name=LeagueClientUxHelper --log-dir=LeagueClient Logs --app-port=52286 --output-base-dir=/Applications/League of Legends.app/Contents/LoL --crash-reporting=crashpad --crash-environment=JP1 --app-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-14_83036_LeagueClient.log --primary-ux-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-21_83054_LeagueClientUx.log
amore            83054   1.2  0.9  5140928 148480   ??  S    10:49下午   0:03.99 /Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/MacOS/LeagueClientUx --riotclient-auth-token=mJyTwnX_Z7dzzTl9uiegQg --riotclient-app-port=51986 --no-rads --disable-self-update --region=JP --locale=ja_JP --remoting-auth-token=10fLha9EpMgillweqOVTMQ --app-port=52286 --install-directory=/Applications/League of Legends.app/Contents/LoL --app-name=LeagueClient --ux-name=LeagueClientUx --ux-helper-name=LeagueClientUxHelper --log-dir=LeagueClient Logs --crash-reporting=crashpad --crash-environment=JP1 --app-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-14_83036_LeagueClient.log --app-pid=83036 --output-base-dir=/Applications/League of Legends.app/Contents/LoL --no-proxy-server
amore            83153   0.0  0.0  4277640    752 s005  S+   10:50下午   0:00.00 grep LeagueClientUx
amore            83073   0.0  0.2 42503468  38208   ??  S    10:49下午   0:00.11 /Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/LeagueClientUx Helper (Renderer).app/Contents/MacOS/LeagueClientUx Helper (Renderer) --type=renderer --no-sandbox --autoplay-policy=no-user-gesture-required --enable-viewport --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --field-trial-handle=1718379636,1319625535881156466,2563883693768367275,131072 --disable-features=CookiesWithoutSameSiteMustBeSecure,HardwareMediaKeyHandling,SameSiteByDefaultCookies --lang=en-US --framework-dir-path=/Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/Chromium Embedded Framework.framework --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --user-agent-product=LeagueOfLegendsClient/12.18.469.7517 (CEF 91) --disable-extensions --disable-scroll-bounce --disable-spell-checking --num-raster-threads=4 --enable-zero-copy --enable-gpu-memory-buffer-compositor-resources --enable-main-frame-before-activation --renderer-client-id=7 --no-v8-untrusted-code-mitigations --shared-files --app-name=LeagueClient --ux-name=LeagueClientUx --ux-helper-name=LeagueClientUxHelper --log-dir=LeagueClient Logs --app-port=52286 --output-base-dir=/Applications/League of Legends.app/Contents/LoL --crash-reporting=crashpad --crash-environment=JP1 --app-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-14_83036_LeagueClient.log --primary-ux-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-21_83054_LeagueClientUx.log
amore            83062   0.0  0.3  4695332  50256   ??  S    10:49下午   0:01.08 /Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/LeagueClientUx Helper.app/Contents/MacOS/LeagueClientUx Helper --type=utility --utility-sub-type=network.mojom.NetworkService --field-trial-handle=1718379636,1319625535881156466,2563883693768367275,131072 --disable-features=CookiesWithoutSameSiteMustBeSecure,HardwareMediaKeyHandling,SameSiteByDefaultCookies --lang=en-US --service-sandbox-type=network --no-sandbox --use-mock-keychain --framework-dir-path=/Applications/League of Legends.app/Contents/LoL/League of Legends.app/Contents/Frameworks/Chromium Embedded Framework.framework --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --user-agent-product=LeagueOfLegendsClient/12.18.469.7517 (CEF 91) --lang=en-US --log-file=/Users/amore/Library/Logs/LeagueClientUx_debug.log --shared-files --app-name=LeagueClient --ux-name=LeagueClientUx --ux-helper-name=LeagueClientUxHelper --log-dir=LeagueClient Logs --app-port=52286 --output-base-dir=/Applications/League of Legends.app/Contents/LoL --crash-reporting=crashpad --crash-environment=JP1 --app-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-14_83036_LeagueClient.log --primary-ux-log-file-path=/Applications/League of Legends.app/Contents/LoL/Logs/LeagueClient Logs/2022-09-25T22-49-21_83054_LeagueClientUx.log
amore@localhost RiotGameApplication % 
```
比如这次我们从中需要截取出来的内容就是`--riotclient-auth-token=mJyTwnX_Z7dzzTl9uiegQg --riotclient-app-port=51986 --no-rads --disable-self-update --region=JP --locale=ja_JP --remoting-auth-token=10fLha9EpMgillweqOVTMQ --app-port=52286 --install-directory=/Applications/`

![interface_test](./pic/postman_interface_test_1.png)

在`/Users/amore/Library/Application Support/Riot Games/Riot Client/Config/lockfile`中也记录着`Riot Client:82950:51986:KZzsoekl1sp-lDzq6-VSIA:https`的信息，看起来也是pid+port+Token+通信协议，但和实际的貌似不符，可能是弃用了或有其他作用，后续再研究

## 1. 国服（大陆地区不包括台服）





## 2. 其他区域

`https://asia.api.riotgames.com/lol/summoner/v4/summoners/by-name/top??api_key=RGAPI-5ac8f1e4-744a-4e59-87c8-cef50dfb20c8`

### 2.1 英雄联盟非中国地区可以直接使用Riot提供的[Developer API](https://developer.riotgames.com/)进行开发:


1. 部分常用变量：
    |变量名|含义|
    |-----|---|
    |summoner|召唤师|
    |

2. 常用API接口：

    |Method|URL|解释||
    |--|--|--|--|
    |GET|/lol/summoner/v4/summoners/by-name/{summonerName}|根据**召唤师名称**返回一个召唤师对象变量|```ssss```

## 二、项目配置注意事项

主要适配的环境还是**opengl+glfw**

- [ImGui库可视化站点](https://pthom.github.io/imgui_manual_online/manual/imgui_manual.html)

（才刚开始写，先记录部分注意事项，格式什么的随后调整）
1. 配置编译项目的时候注意cmake参数，部分库考虑到后续可能会换，全部写成option选项，配置时需要说明开启
   - `cd build`
   - `cmake .. -DUSE_IMGUI=ON -DUSE_GLOG=ON`
   - `cmake --build .`
   - `./RGALE`
或需要install时：
   - cmake --install . --prefix './install'


