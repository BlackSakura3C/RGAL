#ifndef CN_OFFLINE_API_H_
#define CN_OFFLINE_API_H_
/*
 * -----------------------------------------------------------------------------------------------------------
 * 关键点说明：
 *      - Wegame能使用nickname查询的接口不多，主要需要靠一个全局的openid或QQ号进行查询
 *      - nickname考虑主要是不同大区会有重名的但是不是同一个QQ，而openid是全局唯一的用于区分玩家(一个玩家QQ只有一个openid 不同区一样)
 *      - 下面接口中虽然有不少nickname版，这主要其实是方便，更多的还是需要先查到openid再根据此去查询其他内容
 *
 *      * 由于接口都是个人尝试拦截的，还很不全，API写法可能不是最简单的，后续有空且发现更好用接口会修改简化API
 * -----------------------------------------------------------------------------------------------------------
 */
#include "json.hpp"
#include "cpr.h"
#include "glog/logging.h"

using json = nlohmann::json;
using std::string;

const string gvWegameRequestBaseUrl = "https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/";
const string gvPlayerInfoPage = "GetSummonerInfo";
const string gvPlayerBattleHistoryPage = "GetBattleList";
const string gvSearchAllPlayerPage = "SearchPlayer";

// Please don't disturb me. Thanks for understanding.
const string gvWegameCookie = "pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; pt2gguin=o0250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s3723370816; language=zh_CN; uin=250820552; isHostDate=19262; tgp_biz_ticket=01000000000000000031D3A063421B5206292B47653EC0CDFB5D1183FA0AF6B7F93264A954DFB8878BF80F84099159D7A47AFF332B1A7B7AF000F73BE0C3F2BB02D4210B904D2BAAB6; pkey=00016332A6510070E00AFB68687981528C6935D561323D79D9E6F02938CF44DA5F4D7464593C5AA84992EB9379A2886FE00611E01782CD77E384E0489E2ADFE0357C75DD5363D02E670112DEFB4AA764DE1E67836D2AB67AF0DEECDD46A3A8F5BA4A5FD91FB531CDB9DC7537CF86D6D7A39A545DE7199B9B; tgp_ticket=8269A1AC9C45ED6BF30F8E7BCF8DA3863C840D155AAC734F18AA0512E22C65F33E3B81EFAF49EC4B30D18361E4F2159C4F1BB7FD04F9E8C57194E04714EB4AB84F01CD5F568DE06F1880E1FA04D0D2809400BF3B6E6F0C8B516D708B1479CFF0647ED74B088AD48066960D813B96347AC7AD812BD7CEB30C42C7845E63BEB958";
// Different with origin, use the same like https:... will get 400. On postman is Warning: Hostname/IP does not match certificate's altnames
const string gvWegameHost = "www.wegame.com.cn";
const string gvWegameOrigin = "https://www.wegame.com.cn";
const string gvWegameConnection = "keep-alive";
const string gvWegameAccept = "application/json, text/plain, */*";
const string gvWegameUserAgent = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400";
const string gvTrpcLolBattle = "wegame.pallas.web.LolBattle";
const string gvWegameContentType = "application/json;charset=UTF-8";
const string gvWegameReferer = "https://www.wegame.com.cn/helper/lol/record/profile.html";
const string gvWegameAcceptEncoding = "gzip, deflate, br";
const string gvWegameAcceptLanguage = "zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7";

const string gvWegameSearchReferer = "https://www.wegame.com.cn/helper/lol/search/index.html";

// Once request returned battle records number (max might be 9 through testing).
const int gvWegameBattleHistortCount = 7;

class CnOfflineApi
{
private:
    cpr::Header vHeader_;
    /*
     * TODO: 需不需要另设Header？
     * 本来根据抓包分析 用nickname搜索全部玩家时Header
     * 里面的referer是gvWegameSearchReferer+kw(nickname utf-8 encode后数据)+nickname长度
     * 但是实验发现其实gvWegameReferer也可以搜索到
     * 这里干脆全部用一个Header_比较方便
     */
    cpr::Header vHeaderForSearch_;

    void fInitGlog();

public:
    CnOfflineApi();
    CnOfflineApi(cpr::Header vHeader) : vHeader_(vHeader) {}

    // TODO: 处理cpr timeout
    json fGetPlayerInfo(string vNickname, size_t vArea);

    // This is standard method to get a player info.
    json fGetPlayerInfoByOpenid(string vOpenid, size_t vArea);

    json fGetPlayerInfoByQQ(string vQQ, size_t vArea);
    json fGetAllPlayerByNickname(string vNickname);
    json fGetPlayerBattleHistoryByNickname(string vNickname, size_t vArea, size_t vRequestNum = 7);
    json fGetPlayerBattleHistory(string vOpenid, size_t vArea, size_t vRequestNum = 7);

    string fGetOpenidByNickname(string vNickname, size_t vArea);
};

CnOfflineApi::CnOfflineApi()
{
    vHeader_.emplace(std::make_pair("Host", gvWegameHost));
    vHeader_.emplace(std::make_pair("Connection", gvWegameConnection));
    vHeader_.emplace(std::make_pair("Accept", gvWegameAccept));
    vHeader_.emplace(std::make_pair("Origin", gvWegameOrigin));
    vHeader_.emplace(std::make_pair("User-Agent", gvWegameUserAgent));
    vHeader_.emplace(std::make_pair("trpc-caller", gvTrpcLolBattle));
    vHeader_.emplace(std::make_pair("Content-Type", gvWegameContentType));
    vHeader_.emplace(std::make_pair("Referer", gvWegameReferer));
    vHeader_.emplace(std::make_pair("Accept-Encoding", gvWegameAcceptEncoding));
    vHeader_.emplace(std::make_pair("Accept-Language", gvWegameAcceptLanguage));
    vHeader_.emplace(std::make_pair("Cookie", gvWegameCookie));
}

#endif