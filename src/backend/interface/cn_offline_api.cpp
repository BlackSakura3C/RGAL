#include "cn_offline_api.h"
#include <iostream>

// TODO: 认真考虑返回类型是否需要重新构造数据结构，区分没有查询到的有效数据内容
// TODO: 认真考虑下面现在偷懒返回nullptr的地方，这个很有可能引起错误

/*
 * -----------------------------------------------------------------------------------------------------------
 * CnOfflineApi::fGetPlayerInfo define
 * -----------------------------------------------------------------------------------------------------------
 * @description: get given named player detailed info.
 * @param {string} vNickname
 * @param {size_t} vArea
 * @return {*}
 */
json CnOfflineApi::fGetPlayerInfo(string vNickname, size_t vArea)
{
    string vUrl;
    vUrl.append(gvWegameRequestBaseUrl).append(gvPlayerInfoPage);

    // Get the openid.
    string vOpenid = fGetOpenidByNickname(vNickname, vArea);
    if (vOpenid == "")
        return nullptr;

    // Init post body.
    json vBody, vResponseContent;
    vBody["account_type"] = 2;
    vBody["id"] = vOpenid;
    vBody["area"] = vArea;
    vBody["from_src"] = "lol_helper";

    cpr::Response vResponse;
    try
    {
        vResponse = cpr::Post(cpr::Url{vUrl},
                              vHeader_,
                              cpr::Body{vBody.dump()});

        if (vResponse.status_code != 200)
            LOG(ERROR) << "Get player info error: "
                       << "return status code ["
                       << vResponse.status_code << "]";
        else
            vResponseContent = json::parse(vResponse.text);

        if (vResponseContent["result"]["error_code"] != 0)
            LOG(ERROR) << "Get player info error: "
                       << "error code ["
                       << vResponseContent["result"]["error_message"] << "]";
    }
    catch (const std::exception &e)
    {
        std::cerr << "ERROR: " << e.what() << '\n';
    }

    return vResponseContent;
}

/*
 * -----------------------------------------------------------------------------------------------------------
 * CnOfflineApi::fGetPlayerInfoByOpenid define
 * -----------------------------------------------------------------------------------------------------------
 */
json CnOfflineApi::fGetPlayerInfoByOpenid(string vOpenid, size_t vArea)
{
    string vUrl;
    vUrl.append(gvWegameRequestBaseUrl).append(gvPlayerInfoPage);
    // Init post body.
    json vBody, vResponseContent;
    vBody["account_type"] = 2;
    vBody["id"] = vOpenid;
    vBody["area"] = vArea;
    vBody["from_src"] = "lol_helper";

    cpr::Response vResponse;
    try
    {
        vResponse = cpr::Post(cpr::Url{vUrl},
                              vHeader_,
                              cpr::Body{vBody.dump()});

        if (vResponse.status_code != 200)
            LOG(ERROR) << "Get player info use openid error: "
                       << "return status code ["
                       << vResponse.status_code << "]";
        else
            vResponseContent = json::parse(vResponse.text);

        if (vResponseContent["result"]["error_code"] != 0)
            LOG(ERROR) << "Get player info use openid error: "
                       << "error code ["
                       << vResponseContent["result"]["error_message"] << "]";
    }
    catch (const std::exception &e)
    {
        std::cerr << "ERROR: " << e.what() << '\n';
    }

    return vResponseContent;
}

/*
 * -----------------------------------------------------------------------------------------------------------
 * CnOfflineApi::fGetPlayerInfoByQQ define
 * -----------------------------------------------------------------------------------------------------------
 */
json CnOfflineApi::fGetPlayerInfoByQQ(string vQQ, size_t vArea)
{
    string vUrl;
    vUrl.append(gvWegameRequestBaseUrl).append(gvPlayerInfoPage);
    // Init post body.
    json vBody, vResponseContent;
    vBody["account_type"] = 1;
    vBody["id"] = vQQ;
    vBody["area"] = vArea;
    vBody["from_src"] = "lol_helper";

    cpr::Response vResponse;

    try
    {
        vResponse = cpr::Post(cpr::Url{vUrl},
                              vHeader_,
                              cpr::Body{vBody.dump()});

        if (vResponse.status_code != 200)
            LOG(ERROR) << "Get player info use qq error: "
                       << "return status code ["
                       << vResponse.status_code << "]";
        else
            vResponseContent = json::parse(vResponse.text);

        if (vResponseContent["result"]["error_code"] != 0)
            LOG(ERROR) << "Get player info use qq error: "
                       << "error code ["
                       << vResponseContent["result"]["error_message"] << "]";
    }
    catch (const std::exception &e)
    {
        std::cerr << "ERROR: " << e.what() << '\n';
    }
    return vResponseContent;
}

/*
 * -----------------------------------------------------------------------------------------------------------
 * CnOfflineApi::fGetAllPlayerByNickname define
 * -----------------------------------------------------------------------------------------------------------
 */
json CnOfflineApi::fGetAllPlayerByNickname(string vNickname)
{
    string vUrl;
    vUrl.append(gvWegameRequestBaseUrl).append(gvSearchAllPlayerPage);

    // Init post body.
    json vBody, vResponseContent;
    vBody["nickname"] = vNickname;
    vBody["from_src"] = "lol_helper";

    cpr::Response vResponse;
    try
    {
        vResponse = cpr::Post(cpr::Url{vUrl},
                              vHeader_,
                              cpr::Body{vBody.dump()});

        if (vResponse.status_code != 200)
            LOG(ERROR) << "Get player info error: "
                       << "return status code ["
                       << vResponse.status_code << "]";
        else
            vResponseContent = json::parse(vResponse.text);
    }
    catch (const std::exception &e)
    {
        std::cerr << "ERROR: " << e.what() << '\n';
    }
    return vResponseContent;
}

/*
 * -----------------------------------------------------------------------------------------------------------
 * CnOfflineApi::fGetAllPlayerByNickname define
 * -----------------------------------------------------------------------------------------------------------
 * @description: Get the player battle history through the given
 * openid、the area num and the number of desired game.
 * @param {string} vOpenid is player global id in wegame.
 * @param {size_t} vArea is the number of server the player on.(eg:Ionia is 1)
 * @param {size_t} vRequestNum is the game number you wanted, default is 7.
 *                 If the total number is less than you wanted. Return all aviliable.
 * @return {json} A json object contain the battle history data
 */
json CnOfflineApi::fGetPlayerBattleHistory(string vOpenid, size_t vArea, size_t vRequestNum)
{
    string vUrl;
    vUrl.append(gvWegameRequestBaseUrl).append(gvPlayerBattleHistoryPage);
    // Init post body.
    json vBody, vResponseContent;
    vBody["account_type"] = 2;
    vBody["id"] = vOpenid;
    vBody["area"] = vArea;
    vBody["offset"] = 0;
    // Max request count might be 9 (Test experience).
    vBody["count"] = gvWegameBattleHistortCount;
    vBody["filter"] = "";
    vBody["from_src"] = "lol_helper";

    cpr::Response vResponse;
    int vTotalReceivedNum = 0;
    try
    {
        while (vResponseContent["battles"].size() < vRequestNum)
        {
            vResponse = cpr::Post(cpr::Url{vUrl},
                                  vHeader_,
                                  cpr::Body{vBody.dump()});
            json vTemp = json::parse(vResponse.text);

            if (vTemp["result"]["error_message"] == "success")
            {
                int vReceivedNum = vTemp["battles"].size();
                vTotalReceivedNum += vReceivedNum;
                vReceivedNum = (vTotalReceivedNum <= vRequestNum) ? (vReceivedNum)
                                                                  : (vRequestNum - (vTotalReceivedNum - vReceivedNum));

                for (int i = 0; i < vReceivedNum; i++)
                    vResponseContent["battles"].emplace_back(vTemp["battles"][i]);

                // TODO:可能需要增加输出内容告诉用户总战绩量不足
                if (vReceivedNum < gvWegameBattleHistortCount && vTotalReceivedNum < vRequestNum)
                {
                    LOG(WARNING) << "Battle history num is not enough for " << vRequestNum
                                 << ", total received number is " << vTotalReceivedNum;
                    break;
                }
                else
                {
                    // Can't use vBody["offset"] += 7;
                    // This will cause json.exception.type_error: cannot use push_back() with number
                    int vOffset = vBody["offset"];
                    vBody["offset"] = vOffset + gvWegameBattleHistortCount;
                }
            }
            else
            {
                LOG(ERROR) << "Error occurs when request battle history.";
            }
        }
    }
    catch (const std::exception &e)
    {
        std::cerr << "ERROR: " << e.what() << '\n';
        abort();
    }

    return vResponseContent;
}

/*
 * -----------------------------------------------------------------------------------------------------------
 * CnOfflineApi::fGetPlayerBattleHistoryByNickname define
 * -----------------------------------------------------------------------------------------------------------
 */
json CnOfflineApi::fGetPlayerBattleHistoryByNickname(string vNickname, size_t vArea, size_t vRequestNum)
{
    string vOpenid = fGetOpenidByNickname(vNickname, vArea);
    if (vOpenid == "")
        return nullptr;
    return fGetPlayerBattleHistory(vOpenid, vArea, vRequestNum);
}

/*
 * -----------------------------------------------------------------------------------------------------------
 * CnOfflineApi::fGetPlayerBattleHistoryByNickname define
 * -----------------------------------------------------------------------------------------------------------
 */
string CnOfflineApi::fGetOpenidByNickname(string vNickname, size_t vArea)
{
    string vOpenid = "";
    json vPlayerLists = fGetAllPlayerByNickname(vNickname);
    if (vPlayerLists["players"].size() == 0)
        LOG(WARNING) << "No one player call " << vNickname << " in all area";

    for (auto player : vPlayerLists["players"])
    {
        if (player["area"] == vArea)
        {
            vOpenid = player["openid"];
            return vOpenid;
        }
    }
    LOG(WARNING) << "No one player call " << vNickname << " in area " << vArea;
    return vOpenid;
}