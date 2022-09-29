# 研究国服Cookie生成及获取

## 1. Cookie特点

2022.09.29 0:00 cookie
```
Cookie: pgv_pvid=7853204874; ts_uid=3113482265; PTTuserFirstTime=1662249600000; weekloop=37-38-0-40; region=CN; puin=250820552; pt2gguin=o0250820552; uin=o0250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9743200978; tgp_biz_ticket=01000000000000000016F4E60ABD81DFA5F9BF7A56232304DB420CDB8FB11682249588ECC7141B30A7AADFE625A9F65FD255C4C3DD95B7B8352A240F7FFAE46C72B795C2E3200B1938; language=zh_CN; isHostDate=19264; pkey=00016335BC2100701CA752EC8EAD55DE60657A81A3796D65E5B65FBE9A72F62216444076D25846DA47DB153D7693EB2B58CFFFD9A071CA897E049F4D9EDD9BC09024A9914E02F5A75B4E47CBD63CE1FEEAF19E9C4566982405AB2BA1F7E56F198F7272446106E4F48015DDB8AB27FA89D797D37F095BAA30; tgp_ticket=00F452FEBDD86E77536BAAC98D11E0C93294542AE6ED152CFE1CD39E9943405E18CCC2240BB5B37FB7F1F67A2C031CABE63F48F3CD551B2C30C0AB6023C07501B07CA4551957CBF46F8FDB6E8F735EA10BDDDF6997CBDAC9E880D004F6F35820A5E3BCDDCA48F96ABA5BF3575E7550CA1BF0E9B6F2F4947CAE4D737D3DFFE383; ts_last=www.wegame.com.cn/helper/lol/search/index.html
```


## 2. 抓包记录

1. **登录某助手时可疑请求1**

- 请求数据

    ```
    GET https://lp.open.weixin.qq.com/connect/l/qrconnect?uuid=091AZFu52T9S000X&_=1664462181068 HTTP/1.1
    Host: lp.open.weixin.qq.com
    Connection: keep-alive
    Accept: */*
    User-Agent: Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) QQ/3.3.8.22043 TIM2.0/3.3.8.22043 Chrome/43.0.2357.134 Safari/537.36 QBCore/3.43.1298.400 QQBrowser/9.0.2524.400
    Referer: https://open.weixin.qq.com/connect/qrconnect?appid=wx2857022e9c8a517f&scope=snsapi_login&redirect_uri=https://tim.qq.com/wechat-login.html&state=tim_wechat&login_type=jssdk&self_redirect=false&styletype=&sizetype=&bgcolor=&rst=&style=black&href=https://tim.qq.com/css/wechatLogin.css&lang=zh_CN
    Accept-Encoding: gzip, deflate
    Accept-Language: en-US,en;q=0.8
    Cookie: pvid=7594137711; RK=/QaBDlkGS7; pgv_pvid=476013497; ptcz=3fbea9e138dcd300328bcdcc2de5e1ab044bcc8ce98f88220851efab555d839a
    ```

- 返回数据

    ```
    HTTP/1.1 200 OK
    Connection: close
    Content-Type: text/javascript
    Strict-Transport-Security: max-age=31536000
    Content-Length: 40

    window.wx_errcode=408;window.wx_code='';
    ``` 

2. **登录某助手时可疑请求2**

- 请求数据

```
GET https://www.wegame.com.cn/store HTTP/1.1
Host: www.wegame.com.cn
Connection: keep-alive
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
Referer: https://www.wegame.com.cn/frames/index.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
Cookie: pgv_pvid=7853204874; ts_uid=3113482265; PTTuserFirstTime=1662249600000; weekloop=37-38-0-40; isHostDate=19262; pkey=00016335AE230070ECAEF65A444054F24F8E11F44AE2EFDF493514D0490EA609E2E25D2ABA732EF0BAB43BAF70B41C82213E2F3437810CEE7B66CE376451A4BEA124C504FC9DACED04547276D851F4B784D5D4C4E59F8AC0D1EF4F0B2E5FE4763BCD04ACB82A689E4B73C3ADCB487AEF430493015893A7CD; region=CN; tgp_ticket=E7B9A1EC89437C4E6042FFFCF7A4B9E01B3C374E981F5DAA89B455202DA68A6E5EA048968C970E220BF065C0E4CAA687A800F6708FBED11AAA47FA02A357E51300E5083684074AD67BAEF7FA6A63BDA752F6D5065712552D48A619C65463E7D1A10106BA2BBBAECC2EAF3A0B2680D77D3773EF8FAF2D07ECC4B9E2CEBF4CB7E6; tgp_biz_ticket=01000000000000000081CAE270126D45961C635273D464114AFAE335D0B062AB66382835AF7BF675525D92929EF990D6E09931AE3988A6096E42E2C28A581A06F6129D51100B05FF06; puin=250820552; pt2gguin=o0250820552; uin=o0250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1
```

- 返回数据

```
HTTP/1.1 200 OK
Date: Thu, 29 Sep 2022 14:39:37 GMT
Content-Type: text/html
Connection: keep-alive
Server: nginx
Set-Cookie: ssr=0;Path=/
Content-Length: 6901

<!doctype html><html class="theme-mainland"><head><script>performance.mark('start-html');</script><meta charset="utf-8"/><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/><meta name="description" content="WeGame游戏商店，致力于发现全球好游戏，提供游戏资讯、购买、下载、助手、直播和社区等一站式游戏服务，满足优质汉化、社交互动、稳定国服等更贴心的本地化需求，同时连接全球开发者与游戏玩家，构筑玩家与开发者的沟通桥梁。"/><meta name="keywords" content="WeGame,游戏商店,WeGame平台,游戏发行,游戏平台,游戏评测,单机游戏,游戏购买,游戏下载,腾讯游戏平台,游戏助手,游戏加速,LOL助手,LOL官方盒子,CF助手,DNF助手,免费网络加速"/><title>WeGame游戏商店 - 发现更大的游戏世界</title><meta name="renderer" content="webkit"/><meta http-equiv="x-dns-prefetch-control" content="on"/><link rel="dns-prefetch" href="//wegame.gtimg.com"/><meta http-equiv="Cache-Control" content="no-siteapp"/><meta property="og:title" content="WeGame,游戏商店,WeGame平台,游戏发行,游戏平台,游戏评测,单机游戏,游戏购买,游戏下载,腾讯游戏平台,游戏助手,游戏加速,LOL助手,LOL官方盒子,CF助手,DNF助手,免费网络加速"/><meta property="og:site" content="WeGame"/><meta property="og:url" content="https://www.wegame.com.cn/"/><meta property="og:description" content="WeGame游戏商店，致力于发现全球好游戏，提供游戏资讯、购买、下载、助手、直播和社区等一站式游戏服务，满足优质汉化、社交互动、稳定国服等更贴心的本地化需求，同时连接全球开发者与游戏玩家，构筑玩家与开发者的沟通桥梁。"/><meta property="og:image" content="https://wegame.gtimg.com/wlogo.png"/>
<script src="//wegame.gtimg.com/g.55555-r.c4663/middle/global-scripts/js/theme-mode.js?t=1656483211518"></script>

<!-- -->

<link rel="modulepreload" href="https://wegame.gtimg.com/g.55555-r.c4663/lib/vue/3.2.22/dist/vue.runtime.esm-browser.prod.js"><link rel="stylesheet" href="https://wegame.gtimg.com/g.55555-r.c4663/lib/wg-ui/0.1.4/theme-builtin/wg-ui.css"/><script>this.globalThis || (this.globalThis = this);</script><script type="module" crossorigin src="https://wegame.gtimg.com/g.55555-r.c4663/store/assets/index.d31c2707.js"></script><link rel="stylesheet" href="https://wegame.gtimg.com/g.55555-r.c4663/store/assets/index.f7fb126c.css"></head><body class="store-bg"><script>performance.mark('start-body');
      window.onerror = function (msg, url, line, col, error) {
        if (typeof TGP !== 'undefined' && TGP.log) {
          TGP.log(arguments);
        }
      };</script> <div class="page-store-cont" id="scroll-element"><script type="module" crossorigin="" src="https://wegame.gtimg.com/g.55555-r.c4663/rail/fragments/site-header/app.9fd83962.js"></script><link rel="stylesheet" href="https://wegame.gtimg.com/g.55555-r.c4663/rail/fragments/site-header/app.181c6a4c.css"><div id="site-header" data-server-rendered="true"><header class="store-headernav fr-header txp_video_hide"><div class="home-nav"><nav class="tui-nav"><ul class="main-nav"><li class=""><a href="/store">精选</a></li><li class=""><a href="/rail/console_games.html">单机</a></li><li class=""><a href="/rail/online_games.html">网游</a></li><li class=""><a href="/rail/wegame_functional_games.html?aid=824">端手互通</a></li><li class=""><a href="/store/games">所有内容</a></li></ul></nav><div class="turn-r"><div class="tui-search has-animate"><p class="tui-search-input search-input--store"><input id="site-header-input" value="" type="text" maxlength="20" autocomplete="off" placeholder=""><i class="icon icon-delete" style="display:none"></i><span class="tui-search-submit"></span></p><div id="dropdown-menu" class="dropdown-menu"><div class="search-assn hot"><p class="assn-tit">热搜</p><ul></ul></div></div></div><div class="hot-search"></div></div><div class="line-cur" style="left:88px;width:56px;transform:none"></div></div></header></div><div class="fr-wrapper fr-wrapper-skeleton" id="storeIndexLoading"><div class="skeleton-panel-ibanner"></div><div class="fr-container-skeleton"><div class="fr-row--index-skeleton"><div class="fr-sidebar-skeleton"><div class="recent-game-list-skeleton"><section class="skeleton-store-lside"><ul><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li></ul></section></div></div><section class="tui-panel-skeleton panel-banner-skeleton"><div class="skeleton-banner"><div class="skeleton-banner-l"></div><div class="skeleton-banner-r"><div class="skeleton-banner-r-inner"></div></div></div></section><div class="fr-main-skeleton fr-main-skeleton--newgame"><div class="skeleton-panel skeleton-panel"><h2 class="skeleton-panel-tit"></h2><div class="skeleton-panel-bd"><span class="skeleton-panel-item-card"></span> <span class="skeleton-panel-item-card"></span> <span class="skeleton-panel-item-card"></span> <span class="skeleton-panel-item-card"></span> <span class="skeleton-panel-item-card"></span></div></div></div><div class="skeleton-activities"><div class="skeleton-activities-tit"></div><div class="skeleton-activities-bd"><div class="skeleton-activities-item"></div><div class="skeleton-activities-item"></div><div class="skeleton-activities-item"></div><div class="skeleton-activities-item"></div><div class="skeleton-activities-item"></div></div></div><div class="fr-main-skeleton fr-main-skeleton--entrance skeleton-negame-box"><div class="skeleton-panel skeleton-panel"><div class="skeleton-panel-bd"><div class="skeleton-wg-entrance-card"><div class="skeleton-wg-entrance-card-inner"><span class="skeleton-wg-entrance-card-icon"></span></div></div><div class="skeleton-wg-entrance-card"><div class="skeleton-wg-entrance-card-inner"><span class="skeleton-wg-entrance-card-icon"></span></div></div><div class="skeleton-wg-entrance-card"><div class="skeleton-wg-entrance-card-inner"><span class="skeleton-wg-entrance-card-icon"></span></div></div></div></div></div></div></div></div><div id="frWrapper" style="min-height: 120vh" class="page-store-cont-inner"><div id="splash"></div></div></div><script>window.performance.mark('start-script');</script><script>window.__WEGAME_WEB_SDK_INJECTIONS__={"WEGAME_PAGE_HOST":"www.wegame.com.cn","WEGAME_CDN_HOST":"wegame.gtimg.com","WEGAME_DOMAIN":"wegame.com.cn","WEGAME_ACCOUNT_TYPE":"1","WEGAME_CLIENT_TYPE":"1000005","WEGAME_QQ_APPID":"1600001063","WEGAME_QQ_DAID":"733","WEGAME_WX_APPID":"wx911818d5d92affa8","WEGAME_GOOGLE_APPID":"885487218314-kvlbl71padt9mrurnrr51s5ndr0mqds4.apps.googleusercontent.com","WEGAME_FACEBOOK_APPID":"1849038352057015","WEGAME_VIRTUAL_DOMIN":"wegamecn.qq.com"}</script><script src="//wegame.gtimg.com/g.55555-r.c4663/lib/wegame-sdk/wegame-sdk-0.8.15.min.js"></script></body></html>
```

3. **登录某助手时可疑请求3**

- 请求数据
    ```
    GET https://ssl.ptlogin2.qq.com/jump?keyindex=18&clientuin=250820552&clientkey=00016335AE230068BE1B0CC1844EAF30807263D26AD308335992C89915FE47F1DF9D5CCA6129C174DB1E966954775F7451A4940E7A6E615CDB313B4D3F263719CB82BC362EA84392FBCDC7C3FBCCDEE4B343C6542334F59A65FBCC607A17F851F9362A31CFAD6CA31CFA4C42C7829628&u1=https://plat.tgp.qq.com/platform/qqframe.html HTTP/1.1
    Host: ssl.ptlogin2.qq.com
    Connection: keep-alive
    Upgrade-Insecure-Requests: 1
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
    Referer: https://www.wegame.com.cn/frames/index.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pt2gguin=o0250820552; RK=nZfJDHkVF5; ptcz=80620100535d8481aad55e420e09e8cb8cfa789e7bf9a4d83b1d8b3fbf47e57d; pt_recent_uins=fa189dcb127e11d59e0abe008dc7e8346fcf4579810d26db13ba8a739ca4fef066e278698346984c469d614e8e4194a7fb512d31d0d81880
    ```
- 返回数据

    ```
    HTTP/1.1 302 Found
    Date: Thu, 29 Sep 2022 14:39:38 GMT
    Content-Length: 0
    Connection: keep-alive
    Cache-Control: no-cache, no-store, must-revalidate
    Expires: -1
    Location: https://plat.tgp.qq.com/platform/qqframe.html
    P3P: CP=CAO PSA OUR
    Pragma: no-cache
    Server: Tencent Login Server/2.0.0
    Strict-Transport-Security: max-age=31536000
    Set-Cookie: uin=o0250820552;Path=/;Domain=qq.com;
    Set-Cookie: skey=@wWmbPKp9V;Path=/;Domain=qq.com;
    Set-Cookie: pt2gguin=;Expires=Thu, 01 Jan 1970 00:00:00 GMT;Path=/;Domain=qq.com;
    Set-Cookie: pt2gguin=o0250820552;Expires=Tue, 19 Jan 2038 03:14:07 GMT;Path=/;Domain=ptlogin2.qq.com;Secure;
    Set-Cookie: ETK=;Path=/;Domain=ptlogin2.qq.com;Secure;
    Set-Cookie: pt_recent_uins=2cdb6eeeea545384124fd403c386618af19728febcccb2488ef34bb09ded875a1fdd4762f8933fe9c491570225f5b2a7be6347305365e545;Expires=Sat, 29 Oct 2022 14:39:38 GMT;Path=/;Domain=ptlogin2.qq.com;Secure;HttpOnly;
    Set-Cookie: ptnick_250820552=32c2bd;Path=/;Domain=ptlogin2.qq.com;Secure;
    Set-Cookie: ptcz=80620100535d8481aad55e420e09e8cb8cfa789e7bf9a4d83b1d8b3fbf47e57d;Expires=Tue, 19 Jan 2038 03:14:07 GMT;Path=/;Domain=qq.com;
    Set-Cookie: ptcz=;Expires=Thu, 01 Jan 1970 00:00:00 GMT;Path=/;Domain=ptlogin2.qq.com;Secure;
    ```

3. ?

- 请求头部

    ```
    CONNECT report.url.cn:443 HTTP/1.0
    User-Agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)
    Host: report.url.cn:443
    Content-Length: 0
    Connection: Keep-Alive
    Pragma: no-cache

    A SSLv3-compatible ClientHello handshake was found. Fiddler extracted the parameters below.

    Version: 3.3 (TLS/1.2)
    Random: 63 35 AE 23 23 A3 99 36 DD FA 18 64 9F 0F C1 32 24 34 8A E8 8B 03 4E E4 B8 5D C7 2A FF CD 2F 33
    "Time": 1988/12/20 19:11:31
    SessionID: empty
    Extensions: 
        server_name	report.url.cn
        supported_groups	x25519 [0x1d], secp256r1 [0x17], secp384r1 [0x18]
        ec_point_formats	uncompressed [0x0]
        signature_algs	rsa_pss_rsae_sha256, rsa_pss_rsae_sha384, rsa_pss_rsae_sha512, rsa_pkcs1_sha256, rsa_pkcs1_sha384, rsa_pkcs1_sha1, ecdsa_secp256r1_sha256, ecdsa_secp384r1_sha384, ecdsa_sha1, dsa_sha1, rsa_pkcs1_sha512, ecdsa_secp521r1_sha512
        SessionTicket	empty
        extended_master_secret	empty
        renegotiation_info	00
    Ciphers: 
        [C02C]	TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
        [C02B]	TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
        [C030]	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        [C02F]	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        [C024]	TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384
        [C023]	TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
        [C028]	TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
        [C027]	TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
        [C00A]	TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
        [C009]	TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
        [C014]	TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
        [C013]	TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
        [009D]	TLS_RSA_WITH_AES_256_GCM_SHA384
        [009C]	TLS_RSA_WITH_AES_128_GCM_SHA256
        [003D]	TLS_RSA_WITH_AES_256_CBC_SHA256
        [003C]	TLS_RSA_WITH_AES_128_CBC_SHA256
        [0035]	TLS_RSA_WITH_AES_256_CBC_SHA
        [002F]	TLS_RSA_WITH_AES_128_CBC_SHA
        [000A]	SSL_RSA_WITH_3DES_EDE_SHA

    Compression: 
        [00]	NO_COMPRESSION
    ```

- 返回结果

```
Encrypted HTTPS traffic flows through this CONNECT tunnel. HTTPS Decryption is enabled in Fiddler, so decrypted sessions running in this tunnel will be shown in the Web Sessions list.

Secure Protocol: Tls12
Cipher: Aes128 128bits
Hash Algorithm: Sha256 ?bits
Key Exchange: ECDHE_RSA (0xae06) 255bits

== Server Certificate ==========
[Subject]
  CN=*.url.cn, O=Tencent Technology (Shenzhen) Company Limited, L=Shenzhen, S=Guangdong Province, C=CN

[Issuer]
  CN=DigiCert Secure Site CN CA G3, O=DigiCert Inc, C=US

[Serial Number]
  0440E65E454D2381D95B1412FDAE2D02

[Not Before]
  2022/8/15 8:00:00

[Not After]
  2023/8/16 7:59:59

[Thumbprint]
  996073B29ECD62C1CCBB3843D15AF35CE9655625

[SubjectAltNames]
*.url.cn, url.cn
```