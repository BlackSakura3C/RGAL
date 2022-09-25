# 英雄联盟相关应用开发工具

## 1. 国服（大陆地区不包括台服）

## 2. 其他区域

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

# 项目配置注意事项

主要适配的环境还是**opengl+glfw**

（才刚开始写，先记录部分注意事项，格式什么的随后调整）
1. 配置编译项目的时候注意cmake参数，部分库考虑到后续可能会换，全部写成option选项，配置时需要说明开启
   - `cd build`
   - `cmake .. -DUSE_IMGUI=ON -DUSE_GLOG=ON`
   - `cmake --build .`
   - `./RGALE`
或需要install时：
   - cmake --install . --prefix './install'


