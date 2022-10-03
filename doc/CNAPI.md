# 国服部分已经获取的API

## 0. 重要记录说明

1. 在大多数的某助手接口中，如果直接用抓包抓到的body进行请求，都会返回这样的错误代码，如下所示的返回结果，但是将body的内容换成仅有`{"account_type":XXXX,"id":"XXX","area":XXX,"from_src":"lol_helper"}`这四个关键词的json内容，就都能返回正确的内容
    ```json
    {
        "result": {
            "error_code": 8000119,
            "error_message": "illegal body format"
        }
    }
    ```

## 1. 用户相关

### 1.1 作用说明

获取这部分的API主要的作用有两点
- 为查询其他用户的战绩做准备，需要获取该用户一个全局ID
- 可以通过其他接口获取更多该用户的数据用于分析（例如可以获取总场次、MVP等）


### 1.2 API记录

1. **根据用户openid查询更多信息**

- 模拟请求：

    <details>
    <summary>请求头部</summary>

    ```text
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/GetSummonerInfo
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 83
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    trpc-caller: wegame.pallas.web.LolBattle
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9386975548; language=zh_CN; isHostDate=19264; uin=o0250820552; skey=@T9ujYZNep; p_uin=o0250820552; pt4_token=SkiWVMy8JLGJaki1Yx0nduvczdwDDGTNDMo*kXIC7Z8_; p_skey=sHtUGxfJbN4HTvbkOdTfhX3mBooIvquHZ-Xls72WAtA_; pt2gguin=o0250820552; client_version=84148225; app_id=10001; client_type=1000000; ll_token=eyJ0eXAiOiJKV1QifQ==.eyJpc3MiOiJxdWlja2VyLWxpdmUiLCJhdWQiOiJ3ZWdhbWUiLCJpYXQiOjE2NjQ0MjUxOTIsImV4cCI6MTY2NDUxMTU5Miwic3MiOnsiYXBwaWQiOiJ3ZWdhbWUiLCJvcGVuaWQiOiIxNzI5MzgyMjYzNzg1MTAxMTI4MSIsImxvZ2luVHlwZSI6OCwiYXVkIjoid2VnYW1lIn19.fa84b1de9264393b1604f49f48961c9dfd20cb17b2e72c0ebf00c3baadd8b885; tgp_biz_ticket=010000000000000000FAD2BB5EADF55EEFAEA3BDDEB1377C191F0C4F1595FBBEBCA19203063D25B8FAB697955B3886492D08ED173B55250758F3E7432E14635A4964E8DF8278BA427F; tgp_ticket=28B785ACCF92942A0944179DDAC802E6E7A6A87C6C7AB7121AAC6276C681A3EC43A21D46D4B8C67486311F6CD1EF55AFA64DA1DD3F8F6D39395FEF4332A5FF20CF5E15EE9146441864D613017E6A5E734E3ACE528055459AC4E5B3E0595AD899773BF97C8FA830C854883F43E7F5088F2173E6439819BFFDC837378A36C19E12; pkey=00016335928000703CF5F3185874C84CA163C04E1460C18332475D63A777EF249D7EACBB1D5EFB3E0004C5F9661291977417930B20889B550355619BBDA7F19DFB96F4C74A248BE3E2B341E9CCF940A1419AC1E50403B56C789FB5E3C45582EB38300881C6B7DF72F19936189F164EC2CE8B2C5D25AB6EA9

    {"account_type":2,"id":"0bPswWbXQdZT2YwLOlegwQ==","area":2,"from_src":"lol_helper"}
    ```
    </details>

- 返回内容

    <details>
    <summary>返回结果</summary>

    ```json
    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "summoner": {
            "id": 4113976378,
            "name": "凯德sex号",
            "level": 239,
            "experience": 1888,
            "icon_id": 5449,
            "praise": 759,
            "discredit": 88,
            "top_of_canyon": false,
            "openid": "0bPswWbXQdZT2YwLOlegwQ==",
            "ext": {
                "lpl": ""
            }
        }
    }
    ```
    </details>


2. **用户生涯报告**

- 模拟请求

    <details>
    <summary>请求头部</summary>

    ```
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/GetBattleReport HTTP/1.1
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 96
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    trpc-caller: wegame.pallas.web.LolBattle
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; pt2gguin=o0250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9386975548; language=zh_CN; uin=250820552; isHostDate=19264; tgp_biz_ticket=01000000000000000071BE8CE69B8DCE7B6A1BCE36BA9DC49551C0B9C325917D50C4C489CF4A2B902F5A0F0E41D61E2123A69F70252FEC77A10AB6906975878E25688EABA79E63B00A; pkey=0001633515D00070C0C4E866DBCF7CD2357C49C616CD84C17C19D60E07457992D85D749A449ACF9FAC8C7E25537A9178C5D0C446851070AE643B6B956B2535DE22713E82CD2A009E075E3576A2A2514964C2A73BE8AC63472E20826469FA111782C3FE0257324409D2E61DB49C5B6A3ACC067FA6CDEA2392; tgp_ticket=3E8BC40E38B44BC34CE2186D2CF7108425CF0D0991398B7FAAC126C6F7394BE6BE7A925D431FFAB6FF24C85D401ED80AB626BF9A8682A95EB9177B64B3BA3E5C2AA3877155BE34DED2DE58801469A6444EB33CFA31AD829D344FC9EDE5BF3E891993EF7E23E5D88EAFBC7796293E7A8EA466D90137794F14AC47EAFBCCA23D3E; ts_last=www.wegame.com.cn/helper/lol/record/profile.html

    {"account_type":2,"id":"iSHBomAwbE1eoObpZSeowA==","area":4,"sids":[255],"from_src":"lol_helper"}

    # 实验证明更换下面这种形式也可以查询到数据
    Content-Length: 83（自动计算出的长度）
    {"account_type":2,"id":"iSHBomAwbE1eoObpZSeowA==","area":4,"from_src":"lol_helper"}
    ```
    </details>

- 返回结果

    截取了部分显示 删除了1-13 sid 赛季的内容
    <details>
    <summary>返回结果</summary>

    ```json
    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "battle_count": {
            "total_match_games": 0,
            "total_match_wins": 0,
            "total_match_losts": 0,
            "total_arm_games": 541,
            "total_arm_wins": 281,
            "total_arm_losts": 260,
            "total_rank_games": 0,
            "total_rank_wins": 0,
            "total_rank_losts": 0,
            "total_teamrank_games": 0,
            "total_teamrank_wins": 0,
            "total_teamrank_losts": 0,
            "total_games": 2244,
            "total_wins": 1971,
            "total_losts": 273
        },
        "season_list": [
            {
                "sid": 15,
                "total": 0,
                "wins": 0,
                "losses": 0,
                "tier": 255,
                "win_point": 0,
                "queue": 0,
                "team_total": 0,
                "team_wins": 0,
                "team_losses": 0,
                "team_tier": 255,
                "team_win_point": 0,
                "team_queue": 0
            },
            {
                "sid": 14,
                "total": 0,
                "wins": 0,
                "losses": 0,
                "tier": 255,
                "win_point": 0,
                "queue": 255,
                "team_total": 0,
                "team_wins": 0,
                "team_losses": 0,
                "team_tier": 255,
                "team_win_point": 0,
                "team_queue": 255
            }
        ]
    }
    ```
    </details>

3. **用户近期更详细的数据**

- 模拟请求

    <details>
    <summary>请求头部</summary>

    ```
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/GetPlayerRecentStat HTTP/1.1
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 83
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    trpc-caller: wegame.pallas.web.LolBattle
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; pt2gguin=o0250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9386975548; language=zh_CN; uin=250820552; isHostDate=19264; tgp_biz_ticket=01000000000000000071BE8CE69B8DCE7B6A1BCE36BA9DC49551C0B9C325917D50C4C489CF4A2B902F5A0F0E41D61E2123A69F70252FEC77A10AB6906975878E25688EABA79E63B00A; pkey=0001633515D00070C0C4E866DBCF7CD2357C49C616CD84C17C19D60E07457992D85D749A449ACF9FAC8C7E25537A9178C5D0C446851070AE643B6B956B2535DE22713E82CD2A009E075E3576A2A2514964C2A73BE8AC63472E20826469FA111782C3FE0257324409D2E61DB49C5B6A3ACC067FA6CDEA2392; tgp_ticket=3E8BC40E38B44BC34CE2186D2CF7108425CF0D0991398B7FAAC126C6F7394BE6BE7A925D431FFAB6FF24C85D401ED80AB626BF9A8682A95EB9177B64B3BA3E5C2AA3877155BE34DED2DE58801469A6444EB33CFA31AD829D344FC9EDE5BF3E891993EF7E23E5D88EAFBC7796293E7A8EA466D90137794F14AC47EAFBCCA23D3E; ts_last=www.wegame.com.cn/helper/lol/record/profile.html

    {"account_type":2,"id":"iSHBomAwbE1eoObpZSeowA==","area":4,"from_src":"lol_helper"}
    ```
    </details>

- 返回结果

    <details>
    <summary>返回结果</summary>

    ```json
    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "recent_state": {
            "kill_30days": 0,
            "death_30days": 0,
            "assist_30days": 0,
            "win_times": 0,
            "play_times": 0,
            "last_game_id": "2931609321",
            "kda": 0,
            "last_game_time": "1664292887439",
            "common_use_champions": [
                {
                    "key": 63,
                    "value": 26
                },
                {
                    "key": 203,
                    "value": 25
                },
                {
                    "key": 67,
                    "value": 25
                },
                {
                    "key": 21,
                    "value": 18
                },
                {
                    "key": 29,
                    "value": 17
                },
                {
                    "key": 145,
                    "value": 16
                },
                {
                    "key": 23,
                    "value": 16
                },
                {
                    "key": 17,
                    "value": 15
                },
                {
                    "key": 86,
                    "value": 14
                },
                {
                    "key": 6,
                    "value": 13
                }
            ],
            "common_position": []
        },
        "game_career": {
            "total_mvp_times": 0,
            "total_svp_times": 0,
            "total_god_likes": 0,
            "total_penta_kills": 0,
            "total_quadra_kills": 0,
            "total_triple_kills": 0,
            "max_consecutive_wins": 0,
            "highest_game_score": 0,
            "most_kills_num": 0,
            "most_assists_num": 0,
            "most_spree_kills_num": 0,
            "most_damage_num": 0,
            "most_damage_taken_num": 0,
            "most_gold_earned_num": 0,
            "most_minions_kill_num": 0,
            "most_turrets_kill_num": 0,
            "total_kills": 0,
            "total_assists": 0,
            "total_ward_placed": 0,
            "longest_game_num": 0,
            "shortest_game_num": 0
        }
    }
    ```
    </details>

4. **获取用户皮肤**

- 模拟请求

    <details>
    <summary>请求头部</summary>

    ```
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/GetSkin HTTP/1.1
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 68
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9386975548; language=zh_CN; isHostDate=19264; uin=o0250820552; skey=@T9ujYZNep; p_uin=o0250820552; pt4_token=SkiWVMy8JLGJaki1Yx0nduvczdwDDGTNDMo*kXIC7Z8_; p_skey=sHtUGxfJbN4HTvbkOdTfhX3mBooIvquHZ-Xls72WAtA_; pt2gguin=o0250820552; client_version=84148225; app_id=10001; client_type=1000000; ll_token=eyJ0eXAiOiJKV1QifQ==.eyJpc3MiOiJxdWlja2VyLWxpdmUiLCJhdWQiOiJ3ZWdhbWUiLCJpYXQiOjE2NjQ0MjUxOTIsImV4cCI6MTY2NDUxMTU5Miwic3MiOnsiYXBwaWQiOiJ3ZWdhbWUiLCJvcGVuaWQiOiIxNzI5MzgyMjYzNzg1MTAxMTI4MSIsImxvZ2luVHlwZSI6OCwiYXVkIjoid2VnYW1lIn19.fa84b1de9264393b1604f49f48961c9dfd20cb17b2e72c0ebf00c3baadd8b885; tgp_biz_ticket=010000000000000000FAD2BB5EADF55EEFAEA3BDDEB1377C191F0C4F1595FBBEBCA19203063D25B8FAB697955B3886492D08ED173B55250758F3E7432E14635A4964E8DF8278BA427F; tgp_ticket=28B785ACCF92942A0944179DDAC802E6E7A6A87C6C7AB7121AAC6276C681A3EC43A21D46D4B8C67486311F6CD1EF55AFA64DA1DD3F8F6D39395FEF4332A5FF20CF5E15EE9146441864D613017E6A5E734E3ACE528055459AC4E5B3E0595AD899773BF97C8FA830C854883F43E7F5088F2173E6439819BFFDC837378A36C19E12; pkey=00016335928000703CF5F3185874C84CA163C04E1460C18332475D63A777EF249D7EACBB1D5EFB3E0004C5F9661291977417930B20889B550355619BBDA7F19DFB96F4C74A248BE3E2B341E9CCF940A1419AC1E50403B56C789FB5E3C45582EB38300881C6B7DF72F19936189F164EC2CE8B2C5D25AB6EA9

    {"account_type":1,"id":"250820552","area":2,"from_src":"lol_helper"}

    # 这种body也可以
    {"account_type":2,"id":"0bPswWbXQdZT2YwLOlegwQ==","area":2,"from_src":"lol_helper"}
    ```
    </details>

- 返回结果

    <details>
    <summary>返回结果</summary>

    ```json
    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "championSkins": [
            {
                "id": 246,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 246018,
                        "expire_day": 0
                    },
                    {
                        "id": 246020,
                        "expire_day": -1
                    },
                    {
                        "id": 246009,
                        "expire_day": 0
                    },
                    {
                        "id": 246011,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 89,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 89033,
                        "expire_day": -1
                    },
                    {
                        "id": 89021,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 114,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 114005,
                        "expire_day": 0
                    },
                    {
                        "id": 114003,
                        "expire_day": 0
                    },
                    {
                        "id": 114044,
                        "expire_day": 0
                    },
                    {
                        "id": 114022,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 37,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 37005,
                        "expire_day": 0
                    },
                    {
                        "id": 37006,
                        "expire_day": 0
                    },
                    {
                        "id": 37044,
                        "expire_day": 0
                    },
                    {
                        "id": 37035,
                        "expire_day": 0
                    },
                    {
                        "id": 37026,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 105,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 105014,
                        "expire_day": 0
                    },
                    {
                        "id": 105009,
                        "expire_day": 0
                    },
                    {
                        "id": 105006,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 13,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 13007,
                        "expire_day": 0
                    },
                    {
                        "id": 13003,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 223,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 223001,
                        "expire_day": -1
                    },
                    {
                        "id": 223002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 238,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 238031,
                        "expire_day": -1
                    },
                    {
                        "id": 238001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 555,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 555044,
                        "expire_day": 0
                    },
                    {
                        "id": 555046,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 711,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 711007,
                        "expire_day": 0
                    },
                    {
                        "id": 711001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 96,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 96004,
                        "expire_day": 0
                    },
                    {
                        "id": 96007,
                        "expire_day": 0
                    },
                    {
                        "id": 96006,
                        "expire_day": 0
                    },
                    {
                        "id": 96028,
                        "expire_day": 0
                    },
                    {
                        "id": 96031,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 56,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 56005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 32,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 32003,
                        "expire_day": 0
                    },
                    {
                        "id": 32034,
                        "expire_day": -1
                    },
                    {
                        "id": 32007,
                        "expire_day": 0
                    },
                    {
                        "id": 32008,
                        "expire_day": 0
                    },
                    {
                        "id": 32006,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 516,
                "expire_day": 0,
                "skins": []
            },
            {
                "id": 44,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 44003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 432,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 432017,
                        "expire_day": -1
                    },
                    {
                        "id": 432008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 22,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 22043,
                        "expire_day": 0
                    },
                    {
                        "id": 22008,
                        "expire_day": 0
                    },
                    {
                        "id": 22002,
                        "expire_day": 0
                    },
                    {
                        "id": 22003,
                        "expire_day": -1
                    },
                    {
                        "id": 22001,
                        "expire_day": 0
                    },
                    {
                        "id": 22027,
                        "expire_day": 0
                    },
                    {
                        "id": 22031,
                        "expire_day": 0
                    },
                    {
                        "id": 22023,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 126,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 126024,
                        "expire_day": 0
                    },
                    {
                        "id": 126003,
                        "expire_day": 0
                    },
                    {
                        "id": 126002,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 142,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 142021,
                        "expire_day": 0
                    },
                    {
                        "id": 142020,
                        "expire_day": 0
                    },
                    {
                        "id": 142009,
                        "expire_day": 0
                    },
                    {
                        "id": 142001,
                        "expire_day": 0
                    },
                    {
                        "id": 142002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 40,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 40046,
                        "expire_day": 0
                    },
                    {
                        "id": 40044,
                        "expire_day": 0
                    },
                    {
                        "id": 40005,
                        "expire_day": 0
                    },
                    {
                        "id": 40036,
                        "expire_day": 0
                    },
                    {
                        "id": 40010,
                        "expire_day": 0
                    },
                    {
                        "id": 40007,
                        "expire_day": 0
                    },
                    {
                        "id": 40008,
                        "expire_day": 0
                    },
                    {
                        "id": 40027,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 10,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 10003,
                        "expire_day": 0
                    },
                    {
                        "id": 10005,
                        "expire_day": -1
                    },
                    {
                        "id": 10033,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 111,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 111005,
                        "expire_day": -1
                    },
                    {
                        "id": 111003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 61,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 61020,
                        "expire_day": -1
                    },
                    {
                        "id": 61007,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 145,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 145027,
                        "expire_day": 0
                    },
                    {
                        "id": 145016,
                        "expire_day": 0
                    },
                    {
                        "id": 145040,
                        "expire_day": 0
                    },
                    {
                        "id": 145008,
                        "expire_day": 0
                    },
                    {
                        "id": 145029,
                        "expire_day": -1
                    },
                    {
                        "id": 145001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 75,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 75004,
                        "expire_day": 0
                    },
                    {
                        "id": 75005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 202,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 202005,
                        "expire_day": 0
                    },
                    {
                        "id": 202004,
                        "expire_day": 0
                    },
                    {
                        "id": 202011,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 21,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 21017,
                        "expire_day": 0
                    },
                    {
                        "id": 21015,
                        "expire_day": 0
                    },
                    {
                        "id": 21008,
                        "expire_day": 0
                    },
                    {
                        "id": 21039,
                        "expire_day": 0
                    },
                    {
                        "id": 21006,
                        "expire_day": 0
                    },
                    {
                        "id": 21031,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 9,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 9027,
                        "expire_day": 0
                    },
                    {
                        "id": 9014,
                        "expire_day": 0
                    },
                    {
                        "id": 9004,
                        "expire_day": 0
                    },
                    {
                        "id": 9007,
                        "expire_day": 0
                    },
                    {
                        "id": 9008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 777,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 777007,
                        "expire_day": 0
                    },
                    {
                        "id": 777026,
                        "expire_day": 0
                    },
                    {
                        "id": 777019,
                        "expire_day": -1
                    },
                    {
                        "id": 777001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 888,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 888001,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 147,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 147003,
                        "expire_day": 0
                    },
                    {
                        "id": 147002,
                        "expire_day": 0
                    },
                    {
                        "id": 147001,
                        "expire_day": 0
                    },
                    {
                        "id": 147022,
                        "expire_day": 0
                    },
                    {
                        "id": 147021,
                        "expire_day": 0
                    },
                    {
                        "id": 147020,
                        "expire_day": 0
                    },
                    {
                        "id": 147019,
                        "expire_day": 0
                    },
                    {
                        "id": 147023,
                        "expire_day": 0
                    },
                    {
                        "id": 147014,
                        "expire_day": 0
                    },
                    {
                        "id": 147018,
                        "expire_day": 0
                    },
                    {
                        "id": 147017,
                        "expire_day": 0
                    },
                    {
                        "id": 147016,
                        "expire_day": 0
                    },
                    {
                        "id": 147015,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 24,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 24013,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 16,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 16002,
                        "expire_day": 0
                    },
                    {
                        "id": 16004,
                        "expire_day": -1
                    },
                    {
                        "id": 16003,
                        "expire_day": 0
                    },
                    {
                        "id": 16016,
                        "expire_day": 0
                    },
                    {
                        "id": 16015,
                        "expire_day": 0
                    },
                    {
                        "id": 16018,
                        "expire_day": -1
                    },
                    {
                        "id": 16017,
                        "expire_day": 0
                    },
                    {
                        "id": 16008,
                        "expire_day": 0
                    },
                    {
                        "id": 16007,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 200,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 200001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 1,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 1005,
                        "expire_day": 0
                    },
                    {
                        "id": 1022,
                        "expire_day": -1
                    },
                    {
                        "id": 1011,
                        "expire_day": 0
                    },
                    {
                        "id": 1012,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 29,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 29006,
                        "expire_day": 0
                    },
                    {
                        "id": 29003,
                        "expire_day": 0
                    },
                    {
                        "id": 29023,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 62,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 62005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 235,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 235006,
                        "expire_day": 0
                    },
                    {
                        "id": 235013,
                        "expire_day": 0
                    },
                    {
                        "id": 235010,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 498,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 498011,
                        "expire_day": 0
                    },
                    {
                        "id": 498002,
                        "expire_day": 0
                    },
                    {
                        "id": 498001,
                        "expire_day": 0
                    },
                    {
                        "id": 498004,
                        "expire_day": 0
                    },
                    {
                        "id": 498003,
                        "expire_day": -1
                    },
                    {
                        "id": 498005,
                        "expire_day": 0
                    },
                    {
                        "id": 498008,
                        "expire_day": 0
                    },
                    {
                        "id": 498009,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 526,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 526001,
                        "expire_day": 0
                    },
                    {
                        "id": 526006,
                        "expire_day": 0
                    },
                    {
                        "id": 526010,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 266,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 266006,
                        "expire_day": 0
                    },
                    {
                        "id": 266002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 51,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 51006,
                        "expire_day": -1
                    },
                    {
                        "id": 51027,
                        "expire_day": 0
                    },
                    {
                        "id": 51028,
                        "expire_day": 0
                    },
                    {
                        "id": 51001,
                        "expire_day": 0
                    },
                    {
                        "id": 51022,
                        "expire_day": 0
                    },
                    {
                        "id": 51026,
                        "expire_day": 0
                    },
                    {
                        "id": 51024,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 91,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 91014,
                        "expire_day": 0
                    },
                    {
                        "id": 91012,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 240,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 240001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 103,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 103005,
                        "expire_day": 0
                    },
                    {
                        "id": 103042,
                        "expire_day": 0
                    },
                    {
                        "id": 103066,
                        "expire_day": 0
                    },
                    {
                        "id": 103032,
                        "expire_day": 0
                    },
                    {
                        "id": 103027,
                        "expire_day": 0
                    },
                    {
                        "id": 103026,
                        "expire_day": 0
                    },
                    {
                        "id": 103014,
                        "expire_day": 0
                    },
                    {
                        "id": 103017,
                        "expire_day": 0
                    },
                    {
                        "id": 103050,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 74,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 74024,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 98,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 98040,
                        "expire_day": -1
                    },
                    {
                        "id": 98005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 23,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 23002,
                        "expire_day": 0
                    },
                    {
                        "id": 23018,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 163,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 163011,
                        "expire_day": 0
                    },
                    {
                        "id": 163001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 360,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 360001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 54,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 54019,
                        "expire_day": 0
                    },
                    {
                        "id": 54023,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 875,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 875001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 517,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 517013,
                        "expire_day": 0
                    },
                    {
                        "id": 517004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 63,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 63002,
                        "expire_day": 0
                    },
                    {
                        "id": 63021,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 157,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 157014,
                        "expire_day": 0
                    },
                    {
                        "id": 157009,
                        "expire_day": 0
                    },
                    {
                        "id": 157003,
                        "expire_day": 0
                    },
                    {
                        "id": 157035,
                        "expire_day": 0
                    },
                    {
                        "id": 157031,
                        "expire_day": 0
                    },
                    {
                        "id": 157054,
                        "expire_day": -1
                    },
                    {
                        "id": 157055,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 84,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 84015,
                        "expire_day": 0
                    },
                    {
                        "id": 84005,
                        "expire_day": 0
                    },
                    {
                        "id": 84002,
                        "expire_day": 0
                    },
                    {
                        "id": 84009,
                        "expire_day": 0
                    },
                    {
                        "id": 84006,
                        "expire_day": -1
                    },
                    {
                        "id": 84062,
                        "expire_day": 0
                    },
                    {
                        "id": 84063,
                        "expire_day": 0
                    },
                    {
                        "id": 84030,
                        "expire_day": 0
                    },
                    {
                        "id": 84026,
                        "expire_day": 0
                    },
                    {
                        "id": 84061,
                        "expire_day": 0
                    },
                    {
                        "id": 84066,
                        "expire_day": 0
                    },
                    {
                        "id": 84067,
                        "expire_day": 0
                    },
                    {
                        "id": 84064,
                        "expire_day": 0
                    },
                    {
                        "id": 84065,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 92,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 92003,
                        "expire_day": 0
                    },
                    {
                        "id": 92002,
                        "expire_day": 0
                    },
                    {
                        "id": 92023,
                        "expire_day": 0
                    },
                    {
                        "id": 92020,
                        "expire_day": 0
                    },
                    {
                        "id": 92018,
                        "expire_day": 0
                    },
                    {
                        "id": 92016,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 39,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 39026,
                        "expire_day": 0
                    },
                    {
                        "id": 39012,
                        "expire_day": 0
                    },
                    {
                        "id": 39017,
                        "expire_day": 0
                    },
                    {
                        "id": 39006,
                        "expire_day": 0
                    },
                    {
                        "id": 39005,
                        "expire_day": -1
                    },
                    {
                        "id": 39031,
                        "expire_day": 0
                    },
                    {
                        "id": 39001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 14,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 14005,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 523,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 523018,
                        "expire_day": 0
                    },
                    {
                        "id": 523019,
                        "expire_day": 0
                    },
                    {
                        "id": 523001,
                        "expire_day": 0
                    },
                    {
                        "id": 523002,
                        "expire_day": 0
                    },
                    {
                        "id": 523006,
                        "expire_day": 0
                    },
                    {
                        "id": 523008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 104,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 104025,
                        "expire_day": 0
                    },
                    {
                        "id": 104005,
                        "expire_day": 0
                    },
                    {
                        "id": 104004,
                        "expire_day": 0
                    },
                    {
                        "id": 104043,
                        "expire_day": 0
                    },
                    {
                        "id": 104042,
                        "expire_day": 0
                    },
                    {
                        "id": 104007,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 122,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 122024,
                        "expire_day": 0
                    },
                    {
                        "id": 122015,
                        "expire_day": 0
                    },
                    {
                        "id": 122020,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 141,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 141008,
                        "expire_day": -1
                    },
                    {
                        "id": 141001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 136,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 136006,
                        "expire_day": 0
                    },
                    {
                        "id": 136007,
                        "expire_day": 0
                    },
                    {
                        "id": 136002,
                        "expire_day": 0
                    },
                    {
                        "id": 136001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 12,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 12029,
                        "expire_day": 0
                    },
                    {
                        "id": 12009,
                        "expire_day": 0
                    },
                    {
                        "id": 12010,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 267,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 267015,
                        "expire_day": 0
                    },
                    {
                        "id": 267009,
                        "expire_day": 0
                    },
                    {
                        "id": 267003,
                        "expire_day": 0
                    },
                    {
                        "id": 267028,
                        "expire_day": 0
                    },
                    {
                        "id": 267024,
                        "expire_day": 0
                    },
                    {
                        "id": 267023,
                        "expire_day": 0
                    },
                    {
                        "id": 267018,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 35,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 35008,
                        "expire_day": 0
                    },
                    {
                        "id": 35012,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 117,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 117015,
                        "expire_day": 0
                    },
                    {
                        "id": 117006,
                        "expire_day": 0
                    },
                    {
                        "id": 117005,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 31,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 31005,
                        "expire_day": 0
                    },
                    {
                        "id": 31002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 154,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 154002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 6,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 6001,
                        "expire_day": 0
                    },
                    {
                        "id": 6003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 8,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 8030,
                        "expire_day": -1
                    },
                    {
                        "id": 8002,
                        "expire_day": 0
                    },
                    {
                        "id": 8001,
                        "expire_day": 0
                    },
                    {
                        "id": 8021,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 106,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 106007,
                        "expire_day": -1
                    },
                    {
                        "id": 106006,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 133,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 133014,
                        "expire_day": 0
                    },
                    {
                        "id": 133013,
                        "expire_day": 0
                    },
                    {
                        "id": 133005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 25,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 25017,
                        "expire_day": 0
                    },
                    {
                        "id": 25050,
                        "expire_day": 0
                    },
                    {
                        "id": 25048,
                        "expire_day": 0
                    },
                    {
                        "id": 25021,
                        "expire_day": 0
                    },
                    {
                        "id": 25041,
                        "expire_day": 0
                    },
                    {
                        "id": 25039,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 876,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 876001,
                        "expire_day": 0
                    },
                    {
                        "id": 876010,
                        "expire_day": -1
                    },
                    {
                        "id": 876008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 20,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 20026,
                        "expire_day": -1
                    },
                    {
                        "id": 20022,
                        "expire_day": 0
                    },
                    {
                        "id": 20010,
                        "expire_day": 0
                    },
                    {
                        "id": 20013,
                        "expire_day": 0
                    },
                    {
                        "id": 20016,
                        "expire_day": 0
                    },
                    {
                        "id": 20007,
                        "expire_day": 0
                    },
                    {
                        "id": 20006,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 412,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 412028,
                        "expire_day": -1
                    },
                    {
                        "id": 412010,
                        "expire_day": 0
                    },
                    {
                        "id": 412005,
                        "expire_day": 0
                    },
                    {
                        "id": 412003,
                        "expire_day": -1
                    },
                    {
                        "id": 412002,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 76,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 76018,
                        "expire_day": 0
                    },
                    {
                        "id": 76016,
                        "expire_day": 0
                    },
                    {
                        "id": 76011,
                        "expire_day": 0
                    },
                    {
                        "id": 76008,
                        "expire_day": 0
                    },
                    {
                        "id": 76001,
                        "expire_day": 0
                    },
                    {
                        "id": 76007,
                        "expire_day": 0
                    },
                    {
                        "id": 76005,
                        "expire_day": 0
                    },
                    {
                        "id": 76029,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 143,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 143007,
                        "expire_day": 0
                    },
                    {
                        "id": 143006,
                        "expire_day": 0
                    },
                    {
                        "id": 143002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 72,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 72013,
                        "expire_day": 0
                    },
                    {
                        "id": 72005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 113,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 113016,
                        "expire_day": 0
                    },
                    {
                        "id": 113002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 42,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 42005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 518,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 518001,
                        "expire_day": 0
                    },
                    {
                        "id": 518008,
                        "expire_day": 0
                    },
                    {
                        "id": 518010,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 79,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 79006,
                        "expire_day": -1
                    },
                    {
                        "id": 79005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 17,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 17023,
                        "expire_day": 0
                    },
                    {
                        "id": 17018,
                        "expire_day": 0
                    },
                    {
                        "id": 17005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 11,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 11042,
                        "expire_day": -1
                    },
                    {
                        "id": 11011,
                        "expire_day": 0
                    },
                    {
                        "id": 11015,
                        "expire_day": 0
                    },
                    {
                        "id": 11002,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 221,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 221001,
                        "expire_day": -1
                    },
                    {
                        "id": 221010,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 55,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 55009,
                        "expire_day": 0
                    },
                    {
                        "id": 55034,
                        "expire_day": 0
                    },
                    {
                        "id": 55029,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 134,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 134024,
                        "expire_day": 0
                    },
                    {
                        "id": 134021,
                        "expire_day": 0
                    },
                    {
                        "id": 134016,
                        "expire_day": 0
                    },
                    {
                        "id": 134006,
                        "expire_day": 0
                    },
                    {
                        "id": 134004,
                        "expire_day": -1
                    },
                    {
                        "id": 134002,
                        "expire_day": 0
                    },
                    {
                        "id": 134034,
                        "expire_day": 0
                    },
                    {
                        "id": 134001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 59,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 59002,
                        "expire_day": 0
                    },
                    {
                        "id": 59034,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 119,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 119029,
                        "expire_day": -1
                    },
                    {
                        "id": 119013,
                        "expire_day": 0
                    },
                    {
                        "id": 119001,
                        "expire_day": 0
                    },
                    {
                        "id": 119003,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 69,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 69015,
                        "expire_day": 0
                    },
                    {
                        "id": 69014,
                        "expire_day": 0
                    },
                    {
                        "id": 69009,
                        "expire_day": 0
                    },
                    {
                        "id": 69003,
                        "expire_day": 0
                    },
                    {
                        "id": 69001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 161,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 161002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 7,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 7012,
                        "expire_day": 0
                    },
                    {
                        "id": 7019,
                        "expire_day": 0
                    },
                    {
                        "id": 7005,
                        "expire_day": 0
                    },
                    {
                        "id": 7004,
                        "expire_day": -1
                    },
                    {
                        "id": 7003,
                        "expire_day": 0
                    },
                    {
                        "id": 7035,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 115,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 115024,
                        "expire_day": -1
                    },
                    {
                        "id": 115023,
                        "expire_day": 0
                    },
                    {
                        "id": 115003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 48,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 48001,
                        "expire_day": 0
                    },
                    {
                        "id": 48002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 60,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 60003,
                        "expire_day": 0
                    },
                    {
                        "id": 60015,
                        "expire_day": 0
                    },
                    {
                        "id": 60005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 2,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 2021,
                        "expire_day": 0
                    },
                    {
                        "id": 2035,
                        "expire_day": -1
                    },
                    {
                        "id": 2004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 166,
                "expire_day": 0,
                "skins": []
            },
            {
                "id": 80,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 80008,
                        "expire_day": 0
                    },
                    {
                        "id": 80036,
                        "expire_day": 0
                    },
                    {
                        "id": 80037,
                        "expire_day": 0
                    },
                    {
                        "id": 80004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 427,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 427001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 64,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 64027,
                        "expire_day": 0
                    },
                    {
                        "id": 64031,
                        "expire_day": 0
                    },
                    {
                        "id": 64011,
                        "expire_day": -1
                    },
                    {
                        "id": 64010,
                        "expire_day": -1
                    },
                    {
                        "id": 64036,
                        "expire_day": 0
                    },
                    {
                        "id": 64004,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 121,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 121042,
                        "expire_day": 0
                    },
                    {
                        "id": 121001,
                        "expire_day": 0
                    },
                    {
                        "id": 121005,
                        "expire_day": 0
                    },
                    {
                        "id": 121002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 41,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 41005,
                        "expire_day": 0
                    },
                    {
                        "id": 41003,
                        "expire_day": 0
                    },
                    {
                        "id": 41008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 53,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 53011,
                        "expire_day": 0
                    },
                    {
                        "id": 53004,
                        "expire_day": 0
                    },
                    {
                        "id": 53006,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 887,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 887001,
                        "expire_day": 0
                    },
                    {
                        "id": 887010,
                        "expire_day": 0
                    },
                    {
                        "id": 887011,
                        "expire_day": 0
                    },
                    {
                        "id": 887019,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 3,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 3016,
                        "expire_day": 0
                    },
                    {
                        "id": 3004,
                        "expire_day": 0
                    },
                    {
                        "id": 3005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 27,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 27004,
                        "expire_day": 0
                    },
                    {
                        "id": 27009,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 85,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 85003,
                        "expire_day": 0
                    },
                    {
                        "id": 85002,
                        "expire_day": 0
                    },
                    {
                        "id": 85023,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 245,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 245045,
                        "expire_day": 0
                    },
                    {
                        "id": 245036,
                        "expire_day": -1
                    },
                    {
                        "id": 245026,
                        "expire_day": 0
                    },
                    {
                        "id": 245019,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 15,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 15007,
                        "expire_day": -1
                    },
                    {
                        "id": 15006,
                        "expire_day": 0
                    },
                    {
                        "id": 15002,
                        "expire_day": 0
                    },
                    {
                        "id": 15034,
                        "expire_day": 0
                    },
                    {
                        "id": 15003,
                        "expire_day": -1
                    },
                    {
                        "id": 15016,
                        "expire_day": 0
                    },
                    {
                        "id": 15019,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 86,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 86022,
                        "expire_day": 0
                    },
                    {
                        "id": 86011,
                        "expire_day": 0
                    },
                    {
                        "id": 86003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 268,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 268003,
                        "expire_day": 0
                    },
                    {
                        "id": 268002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 102,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 102006,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 28,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 28024,
                        "expire_day": 0
                    },
                    {
                        "id": 28013,
                        "expire_day": 0
                    },
                    {
                        "id": 28006,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 19,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 19007,
                        "expire_day": 0
                    },
                    {
                        "id": 19010,
                        "expire_day": 0
                    },
                    {
                        "id": 19029,
                        "expire_day": 0
                    },
                    {
                        "id": 19001,
                        "expire_day": 0
                    },
                    {
                        "id": 19025,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 429,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 429002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 420,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 420003,
                        "expire_day": 0
                    },
                    {
                        "id": 420001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 81,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 81005,
                        "expire_day": -1
                    },
                    {
                        "id": 81032,
                        "expire_day": 0
                    },
                    {
                        "id": 81002,
                        "expire_day": 0
                    },
                    {
                        "id": 81023,
                        "expire_day": 0
                    },
                    {
                        "id": 81021,
                        "expire_day": 0
                    },
                    {
                        "id": 81025,
                        "expire_day": -1
                    },
                    {
                        "id": 81020,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 18,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 18037,
                        "expire_day": 0
                    },
                    {
                        "id": 18003,
                        "expire_day": -1
                    },
                    {
                        "id": 18006,
                        "expire_day": 0
                    },
                    {
                        "id": 18010,
                        "expire_day": 0
                    },
                    {
                        "id": 18031,
                        "expire_day": 0
                    },
                    {
                        "id": 18030,
                        "expire_day": 0
                    },
                    {
                        "id": 18033,
                        "expire_day": 0
                    },
                    {
                        "id": 18002,
                        "expire_day": 0
                    },
                    {
                        "id": 18021,
                        "expire_day": 0
                    },
                    {
                        "id": 18024,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 50,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 50011,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 36,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 36009,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 107,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 107027,
                        "expire_day": 0
                    },
                    {
                        "id": 107017,
                        "expire_day": 0
                    },
                    {
                        "id": 107015,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 127,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 127023,
                        "expire_day": -1
                    },
                    {
                        "id": 127012,
                        "expire_day": 0
                    },
                    {
                        "id": 127004,
                        "expire_day": 0
                    },
                    {
                        "id": 127008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 350,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 350021,
                        "expire_day": 0
                    },
                    {
                        "id": 350019,
                        "expire_day": 0
                    },
                    {
                        "id": 350037,
                        "expire_day": 0
                    },
                    {
                        "id": 350038,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 236,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 236023,
                        "expire_day": 0
                    },
                    {
                        "id": 236008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 421,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 421001,
                        "expire_day": 0
                    },
                    {
                        "id": 421017,
                        "expire_day": -1
                    },
                    {
                        "id": 421016,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 150,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 150013,
                        "expire_day": 0
                    },
                    {
                        "id": 150022,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 26,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 26005,
                        "expire_day": 0
                    },
                    {
                        "id": 26004,
                        "expire_day": 0
                    },
                    {
                        "id": 26002,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 4,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 4011,
                        "expire_day": 0
                    },
                    {
                        "id": 4004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 78,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 78015,
                        "expire_day": 0
                    },
                    {
                        "id": 78007,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 33,
                "expire_day": 0,
                "skins": []
            },
            {
                "id": 90,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 90028,
                        "expire_day": -1
                    },
                    {
                        "id": 90009,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 131,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 131032,
                        "expire_day": 0
                    },
                    {
                        "id": 131002,
                        "expire_day": 0
                    },
                    {
                        "id": 131025,
                        "expire_day": 0
                    },
                    {
                        "id": 131027,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 497,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 497003,
                        "expire_day": -1
                    },
                    {
                        "id": 497005,
                        "expire_day": 0
                    },
                    {
                        "id": 497007,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 110,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 110006,
                        "expire_day": -1
                    },
                    {
                        "id": 110003,
                        "expire_day": 0
                    },
                    {
                        "id": 110016,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 30,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 30002,
                        "expire_day": 0
                    },
                    {
                        "id": 30003,
                        "expire_day": 0
                    },
                    {
                        "id": 30009,
                        "expire_day": 0
                    },
                    {
                        "id": 30017,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 120,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 120005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 112,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 112003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 57,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 57001,
                        "expire_day": 0
                    },
                    {
                        "id": 57004,
                        "expire_day": 0
                    },
                    {
                        "id": 57005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 43,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 43044,
                        "expire_day": -1
                    },
                    {
                        "id": 43002,
                        "expire_day": 0
                    },
                    {
                        "id": 43005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 83,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 83021,
                        "expire_day": -1
                    },
                    {
                        "id": 83002,
                        "expire_day": 0
                    },
                    {
                        "id": 83004,
                        "expire_day": 0
                    },
                    {
                        "id": 83003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 45,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 45009,
                        "expire_day": 0
                    },
                    {
                        "id": 45042,
                        "expire_day": 0
                    },
                    {
                        "id": 45008,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 895,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 895001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 68,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 68004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 203,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 203010,
                        "expire_day": 0
                    },
                    {
                        "id": 203012,
                        "expire_day": -1
                    },
                    {
                        "id": 203001,
                        "expire_day": 0
                    },
                    {
                        "id": 203003,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 5,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 5004,
                        "expire_day": 0
                    },
                    {
                        "id": 5013,
                        "expire_day": -1
                    }
                ]
            },
            {
                "id": 82,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 82023,
                        "expire_day": -1
                    },
                    {
                        "id": 82021,
                        "expire_day": 0
                    },
                    {
                        "id": 82013,
                        "expire_day": 0
                    },
                    {
                        "id": 82004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 101,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 101008,
                        "expire_day": 0
                    },
                    {
                        "id": 101005,
                        "expire_day": 0
                    },
                    {
                        "id": 101004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 201,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 201001,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 234,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 234010,
                        "expire_day": -1
                    },
                    {
                        "id": 234006,
                        "expire_day": 0
                    },
                    {
                        "id": 234001,
                        "expire_day": 0
                    },
                    {
                        "id": 234019,
                        "expire_day": 0
                    },
                    {
                        "id": 234020,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 254,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 254029,
                        "expire_day": 0
                    },
                    {
                        "id": 254002,
                        "expire_day": 0
                    },
                    {
                        "id": 254005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 67,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 67034,
                        "expire_day": 0
                    },
                    {
                        "id": 67019,
                        "expire_day": 0
                    },
                    {
                        "id": 67010,
                        "expire_day": 0
                    },
                    {
                        "id": 67014,
                        "expire_day": 0
                    },
                    {
                        "id": 67011,
                        "expire_day": 0
                    },
                    {
                        "id": 67012,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 34,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 34003,
                        "expire_day": 0
                    },
                    {
                        "id": 34027,
                        "expire_day": 0
                    },
                    {
                        "id": 34031,
                        "expire_day": 0
                    },
                    {
                        "id": 34008,
                        "expire_day": -1
                    },
                    {
                        "id": 34012,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 99,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 99041,
                        "expire_day": 0
                    },
                    {
                        "id": 99007,
                        "expire_day": 0
                    },
                    {
                        "id": 99040,
                        "expire_day": 0
                    },
                    {
                        "id": 99014,
                        "expire_day": 0
                    },
                    {
                        "id": 99006,
                        "expire_day": 0
                    },
                    {
                        "id": 99029,
                        "expire_day": 0
                    },
                    {
                        "id": 99018,
                        "expire_day": 0
                    },
                    {
                        "id": 99017,
                        "expire_day": 0
                    },
                    {
                        "id": 99015,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 222,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 222049,
                        "expire_day": 0
                    },
                    {
                        "id": 222050,
                        "expire_day": 0
                    },
                    {
                        "id": 222040,
                        "expire_day": 0
                    },
                    {
                        "id": 222004,
                        "expire_day": 0
                    },
                    {
                        "id": 222037,
                        "expire_day": 0
                    },
                    {
                        "id": 222038,
                        "expire_day": 0
                    },
                    {
                        "id": 222029,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 58,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 58007,
                        "expire_day": 0
                    },
                    {
                        "id": 58009,
                        "expire_day": -1
                    },
                    {
                        "id": 58002,
                        "expire_day": 0
                    },
                    {
                        "id": 58022,
                        "expire_day": 0
                    },
                    {
                        "id": 58023,
                        "expire_day": 0
                    },
                    {
                        "id": 58028,
                        "expire_day": 0
                    },
                    {
                        "id": 58026,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 77,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 77004,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 38,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 38003,
                        "expire_day": 0
                    },
                    {
                        "id": 38015,
                        "expire_day": -1
                    },
                    {
                        "id": 38005,
                        "expire_day": 0
                    }
                ]
            },
            {
                "id": 164,
                "expire_day": 0,
                "skins": [
                    {
                        "id": 164002,
                        "expire_day": 0
                    },
                    {
                        "id": 164003,
                        "expire_day": 0
                    },
                    {
                        "id": 164001,
                        "expire_day": 0
                    }
                ]
            }
        ],
        "champion_num": 161,
        "skin_num": 484
    }
    ```
    </details>

5. **获取用户荣誉截图**

- 模拟请求

    <details>
    <summary>请求头部</summary>

    ```
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/GetUserSnapshot HTTP/1.1
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 106
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    trpc-caller: wegame.pallas.web.LolBattle
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9386975548; language=zh_CN; isHostDate=19264; uin=o0250820552; skey=@T9ujYZNep; p_uin=o0250820552; pt4_token=SkiWVMy8JLGJaki1Yx0nduvczdwDDGTNDMo*kXIC7Z8_; p_skey=sHtUGxfJbN4HTvbkOdTfhX3mBooIvquHZ-Xls72WAtA_; pt2gguin=o0250820552; client_version=84148225; app_id=10001; client_type=1000000; ll_token=eyJ0eXAiOiJKV1QifQ==.eyJpc3MiOiJxdWlja2VyLWxpdmUiLCJhdWQiOiJ3ZWdhbWUiLCJpYXQiOjE2NjQ0MjUxOTIsImV4cCI6MTY2NDUxMTU5Miwic3MiOnsiYXBwaWQiOiJ3ZWdhbWUiLCJvcGVuaWQiOiIxNzI5MzgyMjYzNzg1MTAxMTI4MSIsImxvZ2luVHlwZSI6OCwiYXVkIjoid2VnYW1lIn19.fa84b1de9264393b1604f49f48961c9dfd20cb17b2e72c0ebf00c3baadd8b885; pkey=00016335928000703CF5F3185874C84CA163C04E1460C18332475D63A777EF249D7EACBB1D5EFB3E0004C5F9661291977417930B20889B550355619BBDA7F19DFB96F4C74A248BE3E2B341E9CCF940A1419AC1E50403B56C789FB5E3C45582EB38300881C6B7DF72F19936189F164EC2CE8B2C5D25AB6EA9; tgp_biz_ticket=0100000000000000002E6026BF95C08A92806C0383408AD997D730AB643811CEDEB6E2F1F610E16BB469088E0CB7DACD2E471C2D47F607B55FE02F1F527A08D9AD3288063AF6C672FB; tgp_ticket=6977E0378A81D553DBE87AB45ABD7BA6A388D8B161FCB61EEAAF74784503E06138F266D4C0229FDE02602AF1EF4179C6CAEFBDE504DC5D558F4C0DE56A6A6D1568917BD3FCA3BB2CAB3EE6714E57BCFF9D5B820558BD9408E8F511B28436E50B603ED1AC469BCAE2A71CFC67CC60DA5680B5180CEE50A6126E09C13328D9C7E2

    {"account_type":2,"id":"0bPswWbXQdZT2YwLOlegwQ==","area":2,"from_src":"lol_helper"}

    # 这种也行
    {"account_type":1,"id":"250820552","area":2,"action_type":0,"offset":0,"limit":40,"from_src":"lol_helper"}
    ```
    </details>

- 返回结果

    <details>
    <summary>返回结果</summary>

    ```json
    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "snapshots": [
            {
                "category": 0,
                "game_time": 0,
                "file_url": "http://shp.qpic.cn/tgp/0/3912315434-178DA9-0102-036C-009D-0C-0780-0438-05",
                "auth_url": "http://img.lol.qq.com/certificate.html?area_id=2&game_id=3912315434&index=-1",
                "desc": "",
                "game_id": "3912315434",
                "commit_time": "2022-09-22 23:58:53",
                "ss_idx": 1,
                "action_type": 208,
                "game_type": 0,
                "champion_id": 876,
                "player_name": "凯德sex号",
                "killed_champion_id": 157,
                "killed_player_name": "我也想吃糖啊",
                "killed_enemy_count": 12,
                "team_color": 0,
                "queue_id": 0,
                "exdata": ""
            },
            {
                "category": 0,
                "game_time": 0,
                "file_url": "http://shp.qpic.cn/tgp/0/3911629949-EF7C9-0102-0032-00EE-0A-0780-0438-03",
                "auth_url": "http://img.lol.qq.com/certificate.html?area_id=2&game_id=3911629949&index=-1",
                "desc": "",
                "game_id": "3911629949",
                "commit_time": "2022-09-22 22:10:10",
                "ss_idx": 2,
                "action_type": 208,
                "game_type": 0,
                "champion_id": 50,
                "player_name": "凯德sex号",
                "killed_champion_id": 238,
                "killed_player_name": "你想要啥啊",
                "killed_enemy_count": 10,
                "team_color": 0,
                "queue_id": 0,
                "exdata": ""
            },
            {
                "category": 0,
                "game_time": 0,
                "file_url": "http://shp.qpic.cn/tgp/0/3606220424-CF080-0102-00EA-0006-05-0780-0438-06",
                "auth_url": "http://img.lol.qq.com/certificate.html?area_id=2&game_id=3606220424&index=8",
                "desc": "",
                "game_id": "3606220424",
                "commit_time": "2021-08-22 20:38:36",
                "ss_idx": 3,
                "action_type": 105,
                "game_type": 0,
                "champion_id": 234,
                "player_name": "jiahahaha",
                "killed_champion_id": 6,
                "killed_player_name": "柔情问苍天",
                "killed_enemy_count": 5,
                "team_color": 0,
                "queue_id": 450,
                "exdata": ""
            },
            {
                "category": 0,
                "game_time": 0,
                "file_url": "http://shp.qpic.cn/tgp/0/3605281812-CB6A3-0102-0043-00EB-05-0780-0438-04",
                "auth_url": "http://img.lol.qq.com/certificate.html?area_id=2&game_id=3605281812&index=7",
                "desc": "",
                "game_id": "3605281812",
                "commit_time": "2021-08-21 22:41:19",
                "ss_idx": 4,
                "action_type": 105,
                "game_type": 0,
                "champion_id": 67,
                "player_name": "jiahahaha",
                "killed_champion_id": 235,
                "killed_player_name": "Edward丶淡曦",
                "killed_enemy_count": 5,
                "team_color": 0,
                "queue_id": 450,
                "exdata": ""
            },
            {
                "category": 0,
                "game_time": 0,
                "file_url": "http://shp.qpic.cn/tgp/0/3604377817-CF94A-0102-000B-019C-05-0780-0438-04",
                "auth_url": "http://img.lol.qq.com/certificate.html?area_id=2&game_id=3604377817&index=3",
                "desc": "",
                "game_id": "3604377817",
                "commit_time": "2021-08-21 00:10:40",
                "ss_idx": 5,
                "action_type": 105,
                "game_type": 0,
                "champion_id": 11,
                "player_name": "jiahahaha",
                "killed_champion_id": 412,
                "killed_player_name": "甜风软",
                "killed_enemy_count": 5,
                "team_color": 0,
                "queue_id": 450,
                "exdata": ""
            },
            {
                "category": 0,
                "game_time": 0,
                "file_url": "http://shp.qpic.cn/tgp/0/3604307091-FBCCF-0102-0029-00CA-05-0780-0438-06",
                "auth_url": "http://img.lol.qq.com/certificate.html?area_id=2&game_id=3604307091&index=4",
                "desc": "",
                "game_id": "3604307091",
                "commit_time": "2021-08-20 22:52:22",
                "ss_idx": 6,
                "action_type": 105,
                "game_type": 0,
                "champion_id": 41,
                "player_name": "jiahahaha",
                "killed_champion_id": 202,
                "killed_player_name": "莫柒年少木有媳",
                "killed_enemy_count": 5,
                "team_color": 0,
                "queue_id": 450,
                "exdata": ""
            }
        ],
        "total": 6,
        "count": 6
    }
    ```
    </details>

6. **根据用户游戏ID查询详情**

- 模拟请求

    <details>
    <summary>请求头部</summary>

    ```
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/SearchPlayer HTTP/1.1
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 51
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    trpc-caller: wegame.pallas.web.LolBattle
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/search/index.html?kw=%E4%B8%AD%E5%8D%95%E6%B3%95%E7%8E%8B&navid=61
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=7853204874; ts_uid=3113482265; PTTuserFirstTime=1662249600000; weekloop=37-38-0-40; region=CN; puin=250820552; pt2gguin=o0250820552; uin=o0250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9743200978; tgp_biz_ticket=01000000000000000016F4E60ABD81DFA5F9BF7A56232304DB420CDB8FB11682249588ECC7141B30A7AADFE625A9F65FD255C4C3DD95B7B8352A240F7FFAE46C72B795C2E3200B1938; language=zh_CN; isHostDate=19264; pkey=00016335BC2100701CA752EC8EAD55DE60657A81A3796D65E5B65FBE9A72F62216444076D25846DA47DB153D7693EB2B58CFFFD9A071CA897E049F4D9EDD9BC09024A9914E02F5A75B4E47CBD63CE1FEEAF19E9C4566982405AB2BA1F7E56F198F7272446106E4F48015DDB8AB27FA89D797D37F095BAA30; tgp_ticket=00F452FEBDD86E77536BAAC98D11E0C93294542AE6ED152CFE1CD39E9943405E18CCC2240BB5B37FB7F1F67A2C031CABE63F48F3CD551B2C30C0AB6023C07501B07CA4551957CBF46F8FDB6E8F735EA10BDDDF6997CBDAC9E880D004F6F35820A5E3BCDDCA48F96ABA5BF3575E7550CA1BF0E9B6F2F4947CAE4D737D3DFFE383; ts_last=www.wegame.com.cn/helper/lol/search/index.html

    {"nickname":"中单法王","from_src":"lol_helper"}
    
    # 其中Referer换成也可以查到 反而更简单了
    https://www.wegame.com.cn/helper/lol/record/profile.html
    ```
    </details>

- 返回结果

    <details>
    <summary>返回结果</summary>

    ```json
    HTTP/1.1 200 OK
    Date: Thu, 29 Sep 2022 15:52:49 GMT
    Content-Type: application/json; charset=utf-8
    Connection: keep-alive
    Server: openresty/1.19.3.1
    Access-Control-Allow-Credentials: true
    Access-Control-Allow-Methods: POST, GET, OPTIONS
    Access-Control-Allow-Headers: *
    Access-Control-Allow-Origin: https://www.wegame.com.cn
    Access-Control-Max-Age: 1000
    x-content-type-options: nosniff
    X-TRACE-ID: 72d0868e-f13e-4742-a4ab-296bd4a06048
    Content-Length: 2726

    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "players": [
            {
                "openid": "l8SeA/X/qpl401JD+HNIGg==",
                "area": 18,
                "icon_id": 5,
                "level": 18,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "Se59avfOJxi7xgs98xJNaQ==",
                "area": 3,
                "icon_id": 931,
                "level": 11,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "BZaBD9o/DPp4dH5Ax0DGSQ==",
                "area": 23,
                "icon_id": 10,
                "level": 2,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "g7bWyEGNkRQJTLhTyz84rQ==",
                "area": 21,
                "icon_id": 28,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "y0OUtkFG3D2+Drn2k8lg5A==",
                "area": 31,
                "icon_id": 1211,
                "level": 43,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "2Sv+pllzUQJNZnbnRlGVSA==",
                "area": 7,
                "icon_id": 25,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "nTFtT6BERgSdJTFTTBjLuA==",
                "area": 19,
                "icon_id": 0,
                "level": 4,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "PljcuNEvw7Gz9jdtu/Lrwg==",
                "area": 10,
                "icon_id": 26,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "Cw71tJY4Bi8p594YcsXt/w==",
                "area": 22,
                "icon_id": 2,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "GGVgtI9/tsdj4cgAo25ohQ==",
                "area": 30,
                "icon_id": 5,
                "level": 14,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "6t+l0jyropZqfwFjcLkTjg==",
                "area": 12,
                "icon_id": 21,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "OOF+9PIc7qm25G6y5a1MnA==",
                "area": 16,
                "icon_id": 9,
                "level": 6,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "bebxqwuztYSAjwVAwz9F+w==",
                "area": 26,
                "icon_id": 11,
                "level": 9,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "6t+l0jyropZqfwFjcLkTjg==",
                "area": 20,
                "icon_id": 21,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "r+szSPsAKq3JdBdqbBQxHw==",
                "area": 11,
                "icon_id": 3,
                "level": 10,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "CXlWQwZSuAvROFW3QBVdfg==",
                "area": 2,
                "icon_id": 15,
                "level": 12,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "OUXRVXk5W0/bgFnKbYBRYw==",
                "area": 8,
                "icon_id": 26,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "82w4jh/op1gShzDsByX+Hw==",
                "area": 24,
                "icon_id": 7,
                "level": 5,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "xpe3PmgJEjuG9KBsPKrJvw==",
                "area": 14,
                "icon_id": 11,
                "level": 8,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "6btXMDaH8h0ZDsfoPdiQ0g==",
                "area": 17,
                "icon_id": 26,
                "level": 8,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "d16Xlq2FVZWGaj8F9mFJAA==",
                "area": 9,
                "icon_id": 26,
                "level": 2,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "JrwbWoDEESlf1W7bTVV1PQ==",
                "area": 27,
                "icon_id": 21,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "LmP9EVNe30EXxbDlihtBOg==",
                "area": 6,
                "icon_id": 5,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "QvXJkiaG5IAK2LY9PMOlpg==",
                "area": 5,
                "icon_id": 31,
                "level": 26,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "H7ZI6c1FwKCUUp5lGc/Jzw==",
                "area": 13,
                "icon_id": 4,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "NgHMx9/0KHEQxF+LTdKnCw==",
                "area": 1,
                "icon_id": 25,
                "level": 6,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "Y5W4cb5n12ytVQG7V3Ozjw==",
                "area": 25,
                "icon_id": 3,
                "level": 1,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "fCG1K0iXMKwA4P417xVKhg==",
                "area": 4,
                "icon_id": 11,
                "level": 6,
                "tier": 255,
                "queue": 0
            },
            {
                "openid": "0bbPmKD/Bf1LpfHbK5HWUw==",
                "area": 15,
                "icon_id": 25,
                "level": 25,
                "tier": 255,
                "queue": 0
            }
        ]
    }
    ```
    </details>
## 2. 战绩相关

1. **查询用户历史战绩**

    
- 模拟请求

    <details>
    <summary>请求头部</summary>

    ```
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/GetBattleList HTTP/1.1
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 116
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    trpc-caller: wegame.pallas.web.LolBattle
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9386975548; language=zh_CN; isHostDate=19264; uin=o0250820552; skey=@T9ujYZNep; p_uin=o0250820552; pt4_token=SkiWVMy8JLGJaki1Yx0nduvczdwDDGTNDMo*kXIC7Z8_; p_skey=sHtUGxfJbN4HTvbkOdTfhX3mBooIvquHZ-Xls72WAtA_; pt2gguin=o0250820552; client_version=84148225; app_id=10001; client_type=1000000; ll_token=eyJ0eXAiOiJKV1QifQ==.eyJpc3MiOiJxdWlja2VyLWxpdmUiLCJhdWQiOiJ3ZWdhbWUiLCJpYXQiOjE2NjQ0MjUxOTIsImV4cCI6MTY2NDUxMTU5Miwic3MiOnsiYXBwaWQiOiJ3ZWdhbWUiLCJvcGVuaWQiOiIxNzI5MzgyMjYzNzg1MTAxMTI4MSIsImxvZ2luVHlwZSI6OCwiYXVkIjoid2VnYW1lIn19.fa84b1de9264393b1604f49f48961c9dfd20cb17b2e72c0ebf00c3baadd8b885; pkey=0001633584DD00700B3E790A3690CB7D491D09BDD7097A72AB82CDF4693F4B09BF001B2A6EE9D5F78E6F86D34D264B3EC66DFD10022F1BEC66A06899A1CE96D91E4260423898E5DE27FEFA8B426C1F28AD7C7F9CA36EF40FCB47D0C582F0C1DE687BDD9DF907E99AC4A6B5EEBAF26F9C19EBDCD39FC3D61A; tgp_biz_ticket=010000000000000000FAD2BB5EADF55EEFAEA3BDDEB1377C191F0C4F1595FBBEBCA19203063D25B8FAB697955B3886492D08ED173B55250758F3E7432E14635A4964E8DF8278BA427F; tgp_ticket=28B785ACCF92942A0944179DDAC802E6E7A6A87C6C7AB7121AAC6276C681A3EC43A21D46D4B8C67486311F6CD1EF55AFA64DA1DD3F8F6D39395FEF4332A5FF20CF5E15EE9146441864D613017E6A5E734E3ACE528055459AC4E5B3E0595AD899773BF97C8FA830C854883F43E7F5088F2173E6439819BFFDC837378A36C19E12

    {"account_type":2,"id":"O1Y4chCRHPt4vmSI/arkIQ==","area":2,"offset":0,"count":7,"filter":"","from_src":"lol_helper"}

    # 用这个去查也ok 头部Content-Length: 83（自动计算出的）
    {"account_type":2,"id":"O1Y4chCRHPt4vmSI/arkIQ==","area":2,"from_src":"lol_helper"}
    ```
    </details>

- 返回结果

    <details>
    <summary>返回结果</summary>

    ```json
    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "battles": [
            {
                "game_id": "3913039198",
                "game_start_time": "1663951382894",
                "game_time_played": 1000,
                "map_id": 12,
                "game_queue_id": 450,
                "was_mvp": 1,
                "was_svp": 0,
                "was_early_surrender": 0,
                "play_gt25_mask": 0,
                "game_server_version": "",
                "champion_id": 51,
                "position": "Invalid",
                "skin_index": 0,
                "game_score": 154893,
                "team_id": "100",
                "win": "Win",
                "kills": 13,
                "deaths": 3,
                "assists": 26,
                "gold_earned": 14081,
                "was_surrender": 0,
                "was_afk": 0,
                "most_kills": 0,
                "most_assists": 0,
                "most_minions_killed": 1,
                "most_gold_earned": 1,
                "most_damage_dealt_to_champions": 1,
                "most_total_damage_taken": 0,
                "most_turrets_killed": 0,
                "double_kills": 1,
                "triple_kills": 0,
                "quadra_kills": 0,
                "penta_kills": 0,
                "unreal_kills": 0,
                "game_level": "",
                "win_with_less_teammate": 0,
                "team_made_size": 4,
                "battle_type": 0
            },
            {
                "game_id": "3913036038",
                "game_start_time": "1663949782779",
                "game_time_played": 1467,
                "map_id": 12,
                "game_queue_id": 450,
                "was_mvp": 0,
                "was_svp": 0,
                "was_early_surrender": 0,
                "play_gt25_mask": 0,
                "game_server_version": "",
                "champion_id": 245,
                "position": "Invalid",
                "skin_index": 0,
                "game_score": 92138,
                "team_id": "200",
                "win": "Fail",
                "kills": 13,
                "deaths": 11,
                "assists": 29,
                "gold_earned": 16507,
                "was_surrender": 0,
                "was_afk": 0,
                "most_kills": 0,
                "most_assists": 0,
                "most_minions_killed": 0,
                "most_gold_earned": 0,
                "most_damage_dealt_to_champions": 0,
                "most_total_damage_taken": 0,
                "most_turrets_killed": 0,
                "double_kills": 1,
                "triple_kills": 0,
                "quadra_kills": 0,
                "penta_kills": 0,
                "unreal_kills": 0,
                "game_level": "",
                "win_with_less_teammate": 0,
                "team_made_size": 4,
                "battle_type": 0
            },
            {
                "game_id": "3912912255",
                "game_start_time": "1663948249307",
                "game_time_played": 1362,
                "map_id": 12,
                "game_queue_id": 450,
                "was_mvp": 0,
                "was_svp": 0,
                "was_early_surrender": 0,
                "play_gt25_mask": 0,
                "game_server_version": "",
                "champion_id": 350,
                "position": "Invalid",
                "skin_index": 0,
                "game_score": 124554,
                "team_id": "100",
                "win": "Win",
                "kills": 3,
                "deaths": 4,
                "assists": 53,
                "gold_earned": 14391,
                "was_surrender": 0,
                "was_afk": 0,
                "most_kills": 0,
                "most_assists": 1,
                "most_minions_killed": 0,
                "most_gold_earned": 0,
                "most_damage_dealt_to_champions": 0,
                "most_total_damage_taken": 0,
                "most_turrets_killed": 0,
                "double_kills": 0,
                "triple_kills": 0,
                "quadra_kills": 0,
                "penta_kills": 0,
                "unreal_kills": 0,
                "game_level": "",
                "win_with_less_teammate": 0,
                "team_made_size": 4,
                "battle_type": 0
            },
            {
                "game_id": "3912938757",
                "game_start_time": "1663947243049",
                "game_time_played": 878,
                "map_id": 12,
                "game_queue_id": 450,
                "was_mvp": 0,
                "was_svp": 0,
                "was_early_surrender": 0,
                "play_gt25_mask": 0,
                "game_server_version": "",
                "champion_id": 31,
                "position": "Invalid",
                "skin_index": 0,
                "game_score": 75673,
                "team_id": "100",
                "win": "Fail",
                "kills": 3,
                "deaths": 7,
                "assists": 10,
                "gold_earned": 9067,
                "was_surrender": 1,
                "was_afk": 0,
                "most_kills": 0,
                "most_assists": 0,
                "most_minions_killed": 0,
                "most_gold_earned": 0,
                "most_damage_dealt_to_champions": 0,
                "most_total_damage_taken": 1,
                "most_turrets_killed": 0,
                "double_kills": 0,
                "triple_kills": 0,
                "quadra_kills": 0,
                "penta_kills": 0,
                "unreal_kills": 0,
                "game_level": "",
                "win_with_less_teammate": 0,
                "team_made_size": 5,
                "battle_type": 0
            },
            {
                "game_id": "3912926889",
                "game_start_time": "1663946586245",
                "game_time_played": 516,
                "map_id": 12,
                "game_queue_id": 450,
                "was_mvp": 0,
                "was_svp": 0,
                "was_early_surrender": 0,
                "play_gt25_mask": 0,
                "game_server_version": "",
                "champion_id": 875,
                "position": "Invalid",
                "skin_index": 0,
                "game_score": 128572,
                "team_id": "100",
                "win": "Win",
                "kills": 7,
                "deaths": 3,
                "assists": 19,
                "gold_earned": 7958,
                "was_surrender": 1,
                "was_afk": 0,
                "most_kills": 0,
                "most_assists": 0,
                "most_minions_killed": 0,
                "most_gold_earned": 0,
                "most_damage_dealt_to_champions": 0,
                "most_total_damage_taken": 0,
                "most_turrets_killed": 1,
                "double_kills": 1,
                "triple_kills": 0,
                "quadra_kills": 0,
                "penta_kills": 0,
                "unreal_kills": 0,
                "game_level": "",
                "win_with_less_teammate": 0,
                "team_made_size": 5,
                "battle_type": 0
            },
            {
                "game_id": "3912861444",
                "game_start_time": "1663945126474",
                "game_time_played": 1327,
                "map_id": 12,
                "game_queue_id": 450,
                "was_mvp": 0,
                "was_svp": 0,
                "was_early_surrender": 0,
                "play_gt25_mask": 0,
                "game_server_version": "",
                "champion_id": 48,
                "position": "Invalid",
                "skin_index": 0,
                "game_score": 109574,
                "team_id": "200",
                "win": "Win",
                "kills": 4,
                "deaths": 6,
                "assists": 45,
                "gold_earned": 13813,
                "was_surrender": 0,
                "was_afk": 0,
                "most_kills": 0,
                "most_assists": 1,
                "most_minions_killed": 0,
                "most_gold_earned": 0,
                "most_damage_dealt_to_champions": 0,
                "most_total_damage_taken": 0,
                "most_turrets_killed": 0,
                "double_kills": 1,
                "triple_kills": 0,
                "quadra_kills": 0,
                "penta_kills": 0,
                "unreal_kills": 0,
                "game_level": "",
                "win_with_less_teammate": 0,
                "team_made_size": 4,
                "battle_type": 0
            },
            {
                "game_id": "3909739636",
                "game_start_time": "1663518047921",
                "game_time_played": 1114,
                "map_id": 12,
                "game_queue_id": 450,
                "was_mvp": 0,
                "was_svp": 0,
                "was_early_surrender": 0,
                "play_gt25_mask": 0,
                "game_server_version": "",
                "champion_id": 26,
                "position": "Invalid",
                "skin_index": 0,
                "game_score": 85590,
                "team_id": "200",
                "win": "Win",
                "kills": 4,
                "deaths": 5,
                "assists": 35,
                "gold_earned": 12023,
                "was_surrender": 1,
                "was_afk": 0,
                "most_kills": 0,
                "most_assists": 1,
                "most_minions_killed": 0,
                "most_gold_earned": 0,
                "most_damage_dealt_to_champions": 0,
                "most_total_damage_taken": 0,
                "most_turrets_killed": 0,
                "double_kills": 0,
                "triple_kills": 0,
                "quadra_kills": 0,
                "penta_kills": 0,
                "unreal_kills": 0,
                "game_level": "",
                "win_with_less_teammate": 0,
                "team_made_size": 3,
                "battle_type": 0
            }
        ]
    }
    ```
    </details>

2. **查询某局对战细节**

- 模拟请求

    <details>
    <summary>请求头部</summary>

    ```
    POST https://www.wegame.com.cn/api/v1/wegame.pallas.game.LolBattle/GetBattleDetail HTTP/1.1
    Host: www.wegame.com.cn
    Connection: keep-alive
    Content-Length: 89
    Accept: application/json, text/plain, */*
    Origin: https://www.wegame.com.cn
    User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
    trpc-caller: wegame.pallas.web.LolBattle
    Content-Type: application/json;charset=UTF-8
    Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
    Accept-Encoding: gzip, deflate, br
    Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
    Cookie: pgv_pvid=9804397765; ts_uid=2912516854; PTTuserFirstTime=1656547200000; weekloop=37-0-0-40; region=CN; puin=250820552; tgp_id=297512252; geoid=45; lcid=2052; tgp_env=online; tgp_user_type=0; colorMode=1; ssr=0; colorMode=1; BGTheme=[object Object]; pgv_info=ssid=s9386975548; language=zh_CN; isHostDate=19264; uin=o0250820552; skey=@T9ujYZNep; p_uin=o0250820552; pt4_token=SkiWVMy8JLGJaki1Yx0nduvczdwDDGTNDMo*kXIC7Z8_; p_skey=sHtUGxfJbN4HTvbkOdTfhX3mBooIvquHZ-Xls72WAtA_; pt2gguin=o0250820552; client_version=84148225; app_id=10001; client_type=1000000; ll_token=eyJ0eXAiOiJKV1QifQ==.eyJpc3MiOiJxdWlja2VyLWxpdmUiLCJhdWQiOiJ3ZWdhbWUiLCJpYXQiOjE2NjQ0MjUxOTIsImV4cCI6MTY2NDUxMTU5Miwic3MiOnsiYXBwaWQiOiJ3ZWdhbWUiLCJvcGVuaWQiOiIxNzI5MzgyMjYzNzg1MTAxMTI4MSIsImxvZ2luVHlwZSI6OCwiYXVkIjoid2VnYW1lIn19.fa84b1de9264393b1604f49f48961c9dfd20cb17b2e72c0ebf00c3baadd8b885; pkey=0001633584DD00700B3E790A3690CB7D491D09BDD7097A72AB82CDF4693F4B09BF001B2A6EE9D5F78E6F86D34D264B3EC66DFD10022F1BEC66A06899A1CE96D91E4260423898E5DE27FEFA8B426C1F28AD7C7F9CA36EF40FCB47D0C582F0C1DE687BDD9DF907E99AC4A6B5EEBAF26F9C19EBDCD39FC3D61A; tgp_biz_ticket=010000000000000000FAD2BB5EADF55EEFAEA3BDDEB1377C191F0C4F1595FBBEBCA19203063D25B8FAB697955B3886492D08ED173B55250758F3E7432E14635A4964E8DF8278BA427F; tgp_ticket=28B785ACCF92942A0944179DDAC802E6E7A6A87C6C7AB7121AAC6276C681A3EC43A21D46D4B8C67486311F6CD1EF55AFA64DA1DD3F8F6D39395FEF4332A5FF20CF5E15EE9146441864D613017E6A5E734E3ACE528055459AC4E5B3E0595AD899773BF97C8FA830C854883F43E7F5088F2173E6439819BFFDC837378A36C19E12

    {"account_type":1,"id":"250820552","area":2,"game_id":3899011492,"from_src":"lol_helper"}
    ```
    </details>

- 返回结果

    <details>
    <summary>返回结果</summary>

    ```json
    {
        "result": {
            "error_code": 0,
            "error_message": "success"
        },
        "battle_detail": {
            "area_id": "2",
            "game_id": "3899011492",
            "game_start_time": "1662304451466",
            "game_time_played": 2182,
            "map_id": 11,
            "game_queue_id": 430,
            "game_mode": "CLASSIC",
            "game_type": "MATCHED_GAME",
            "platform_id": "",
            "was_early_surrender": 0,
            "play_gt25_mask": 1,
            "game_server_version": "12.16",
            "team_details": [
                {
                    "banInfoList": [],
                    "isSurrender": 0,
                    "teamElo": 1649,
                    "teamId": "100",
                    "totalAssists": 46,
                    "totalBaronKills": 1,
                    "totalBaseKilled": 0,
                    "totalDampenKilled": 0,
                    "totalDeaths": 54,
                    "totalDragonKills": 1,
                    "totalGoldEarned": 67404,
                    "totalKills": 33,
                    "totalTurretsKilled": 6,
                    "win": "Fail"
                },
                {
                    "banInfoList": [],
                    "isSurrender": 0,
                    "teamElo": 1648,
                    "teamId": "200",
                    "totalAssists": 84,
                    "totalBaronKills": 1,
                    "totalBaseKilled": 1,
                    "totalDampenKilled": 2,
                    "totalDeaths": 33,
                    "totalDragonKills": 4,
                    "totalGoldEarned": 75775,
                    "totalKills": 54,
                    "totalTurretsKilled": 9,
                    "win": "Win"
                }
            ],
            "player_details": [
                {
                    "PERK0": 8229,
                    "PERK1": 8226,
                    "PERK2": 8210,
                    "PERK3": 8236,
                    "PERK4": 8304,
                    "PERK5": 8347,
                    "STAT_PERK_0": 5007,
                    "STAT_PERK_1": 5002,
                    "STAT_PERK_2": 5001,
                    "allMinionsKilled": 68,
                    "assists": 21,
                    "baronKills": 0,
                    "barracksKilled": 1,
                    "battleHonour": {
                        "gameLevel": "",
                        "isDoubleKills": 0,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 1,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 35,
                    "championUsedExp": 4527,
                    "championsKilled": 4,
                    "consumablesPurchased": 6,
                    "doubleKills": 0,
                    "dragonKills": 0,
                    "exp": 17171,
                    "gameScore": 95218,
                    "goldEarned": 12047,
                    "goldSpent": 10900,
                    "hqKilled": 0,
                    "item0": 6653,
                    "item1": 3853,
                    "item2": 3020,
                    "item3": 3165,
                    "item4": 3089,
                    "item5": 0,
                    "item6": 3364,
                    "itemsPurchased": 20,
                    "keystoneId": 8229,
                    "killingSpress": 2,
                    "largestCriticalStrike": 0,
                    "largestKillingSpree": 2,
                    "largestMultiKill": 1,
                    "level": 17,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 63736,
                    "magicDamageTaken": 6543,
                    "magicDamageToChampions": 18370,
                    "minionsKilled": 60,
                    "name": "%E9%9D%92%E5%8F%B6%E4%B8%8E%E6%97%A5%E5%AF%8C%E7%BE%8E",
                    "neutralMinionsKilled": 8,
                    "numDeaths": 4,
                    "openid": "fDdlvWxPBkNwZRhK0qgJAQ==",
                    "pentaKills": 0,
                    "perkStyle": 8200,
                    "perkSubStyle": 8300,
                    "physicalDamageDealtPlayer": 10943,
                    "physicalDamageTaken": 16111,
                    "physicalDamageToChampions": 621,
                    "position": "UTILITY",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 0,
                    "spell1Cast": 70,
                    "spell2Cast": 79,
                    "spell3Cast": 73,
                    "spell4Cast": 123,
                    "summonSpell1Cast": 8,
                    "summonSpell1Id": 14,
                    "summonSpell2Cast": 9,
                    "summonSpell2Id": 3,
                    "teamId": "200",
                    "teamMadeSize": 5,
                    "timeCcingOthers": 46,
                    "totalDamageDealt": 79205,
                    "totalDamageTaken": 23437,
                    "totalDamageToChampions": 22837,
                    "totalHealth": 5313,
                    "totalTimeSpentDead": 121,
                    "tripleKills": 0,
                    "trueDemageToChampions": 3845,
                    "turretsKilled": 0,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 43,
                    "visionWardsBoughtInGame": 4,
                    "wardKilled": 3,
                    "wardPlaced": 21,
                    "wardPlacedDetector": 4,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Win"
                },
                {
                    "PERK0": 8010,
                    "PERK1": 9111,
                    "PERK2": 9105,
                    "PERK3": 8299,
                    "PERK4": 8473,
                    "PERK5": 8453,
                    "STAT_PERK_0": 5008,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5002,
                    "allMinionsKilled": 196,
                    "assists": 14,
                    "baronKills": 0,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"4\",\"league_points\":\"23\",\"rank\":\"0\"}",
                        "isDoubleKills": 1,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 1,
                        "isLargestTotalDamageDealtToChampions": 1,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 1,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 266,
                    "championUsedExp": 6398,
                    "championsKilled": 15,
                    "consumablesPurchased": 1,
                    "doubleKills": 1,
                    "dragonKills": 0,
                    "exp": 20875,
                    "gameScore": 113633,
                    "goldEarned": 18052,
                    "goldSpent": 17100,
                    "hqKilled": 1,
                    "item0": 6692,
                    "item1": 3047,
                    "item2": 3026,
                    "item3": 3071,
                    "item4": 6694,
                    "item5": 6333,
                    "item6": 3340,
                    "itemsPurchased": 24,
                    "keystoneId": 8010,
                    "killingSpress": 5,
                    "largestCriticalStrike": 0,
                    "largestKillingSpree": 4,
                    "largestMultiKill": 3,
                    "level": 18,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 0,
                    "magicDamageTaken": 7020,
                    "magicDamageToChampions": 0,
                    "minionsKilled": 168,
                    "name": "%E5%A4%8D%E6%97%A6Uzi",
                    "neutralMinionsKilled": 28,
                    "numDeaths": 11,
                    "openid": "O1Y4chCRHPt4vmSI/arkIQ==",
                    "pentaKills": 0,
                    "perkStyle": 8000,
                    "perkSubStyle": 8400,
                    "physicalDamageDealtPlayer": 196154,
                    "physicalDamageTaken": 37655,
                    "physicalDamageToChampions": 46461,
                    "position": "TOP",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 0,
                    "spell1Cast": 257,
                    "spell2Cast": 76,
                    "spell3Cast": 148,
                    "spell4Cast": 13,
                    "summonSpell1Cast": 6,
                    "summonSpell1Id": 4,
                    "summonSpell2Cast": 8,
                    "summonSpell2Id": 14,
                    "teamId": "200",
                    "teamMadeSize": 5,
                    "timeCcingOthers": 40,
                    "totalDamageDealt": 212374,
                    "totalDamageTaken": 55635,
                    "totalDamageToChampions": 50918,
                    "totalHealth": 30140,
                    "totalTimeSpentDead": 367,
                    "tripleKills": 1,
                    "trueDemageToChampions": 4456,
                    "turretsKilled": 2,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 19,
                    "visionWardsBoughtInGame": 0,
                    "wardKilled": 0,
                    "wardPlaced": 11,
                    "wardPlacedDetector": 0,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Win"
                },
                {
                    "PERK0": 8010,
                    "PERK1": 8009,
                    "PERK2": 9103,
                    "PERK3": 8014,
                    "PERK4": 8226,
                    "PERK5": 8210,
                    "STAT_PERK_0": 5005,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5002,
                    "allMinionsKilled": 184,
                    "assists": 9,
                    "baronKills": 0,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"1\",\"league_points\":\"8\",\"rank\":\"2\"}",
                        "isDoubleKills": 1,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 81,
                    "championUsedExp": 15161,
                    "championsKilled": 8,
                    "consumablesPurchased": 2,
                    "doubleKills": 2,
                    "dragonKills": 0,
                    "exp": 15357,
                    "gameScore": 81778,
                    "goldEarned": 15138,
                    "goldSpent": 14913,
                    "hqKilled": 0,
                    "item0": 3110,
                    "item1": 3042,
                    "item2": 3078,
                    "item3": 3158,
                    "item4": 6694,
                    "item5": 3155,
                    "item6": 3363,
                    "itemsPurchased": 28,
                    "keystoneId": 8010,
                    "killingSpress": 3,
                    "largestCriticalStrike": 0,
                    "largestKillingSpree": 2,
                    "largestMultiKill": 2,
                    "level": 16,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 18680,
                    "magicDamageTaken": 13437,
                    "magicDamageToChampions": 10437,
                    "minionsKilled": 172,
                    "name": "Lookuself",
                    "neutralMinionsKilled": 12,
                    "numDeaths": 9,
                    "openid": "FCV/lNy2/Ejcin4AbjTlig==",
                    "pentaKills": 0,
                    "perkStyle": 8000,
                    "perkSubStyle": 8200,
                    "physicalDamageDealtPlayer": 158419,
                    "physicalDamageTaken": 20405,
                    "physicalDamageToChampions": 29206,
                    "position": "BOTTOM",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 3,
                    "spell1Cast": 343,
                    "spell2Cast": 63,
                    "spell3Cast": 33,
                    "spell4Cast": 10,
                    "summonSpell1Cast": 8,
                    "summonSpell1Id": 7,
                    "summonSpell2Cast": 5,
                    "summonSpell2Id": 4,
                    "teamId": "100",
                    "teamMadeSize": 1,
                    "timeCcingOthers": 18,
                    "totalDamageDealt": 195899,
                    "totalDamageTaken": 37696,
                    "totalDamageToChampions": 44591,
                    "totalHealth": 5248,
                    "totalTimeSpentDead": 347,
                    "tripleKills": 0,
                    "trueDemageToChampions": 4947,
                    "turretsKilled": 2,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 24,
                    "visionWardsBoughtInGame": 0,
                    "wardKilled": 1,
                    "wardPlaced": 3,
                    "wardPlacedDetector": 0,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Fail"
                },
                {
                    "PERK0": 8229,
                    "PERK1": 8226,
                    "PERK2": 8210,
                    "PERK3": 8236,
                    "PERK4": 8139,
                    "PERK5": 8138,
                    "STAT_PERK_0": 5005,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5002,
                    "allMinionsKilled": 142,
                    "assists": 12,
                    "baronKills": 0,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "",
                        "isDoubleKills": 1,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 127,
                    "championUsedExp": 9423,
                    "championsKilled": 3,
                    "consumablesPurchased": 4,
                    "doubleKills": 1,
                    "dragonKills": 0,
                    "exp": 14718,
                    "gameScore": 55287,
                    "goldEarned": 11741,
                    "goldSpent": 10875,
                    "hqKilled": 0,
                    "item0": 3020,
                    "item1": 6656,
                    "item2": 3157,
                    "item3": 1058,
                    "item4": 1056,
                    "item5": 3165,
                    "item6": 3363,
                    "itemsPurchased": 22,
                    "keystoneId": 8229,
                    "killingSpress": 1,
                    "largestCriticalStrike": 0,
                    "largestKillingSpree": 2,
                    "largestMultiKill": 2,
                    "level": 16,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 111210,
                    "magicDamageTaken": 9761,
                    "magicDamageToChampions": 18362,
                    "minionsKilled": 134,
                    "name": "%E6%88%98%E7%A5%9E%E5%AE%88%E6%8A%A4%E8%80%852",
                    "neutralMinionsKilled": 8,
                    "numDeaths": 12,
                    "openid": "thbX8YKL0pJGl9JIEe2/Kw==",
                    "pentaKills": 0,
                    "perkStyle": 8200,
                    "perkSubStyle": 8100,
                    "physicalDamageDealtPlayer": 14664,
                    "physicalDamageTaken": 21925,
                    "physicalDamageToChampions": 978,
                    "position": "MIDDLE",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 0,
                    "spell1Cast": 126,
                    "spell2Cast": 47,
                    "spell3Cast": 85,
                    "spell4Cast": 14,
                    "summonSpell1Cast": 5,
                    "summonSpell1Id": 4,
                    "summonSpell2Cast": 3,
                    "summonSpell2Id": 14,
                    "teamId": "100",
                    "teamMadeSize": 1,
                    "timeCcingOthers": 62,
                    "totalDamageDealt": 132240,
                    "totalDamageTaken": 34105,
                    "totalDamageToChampions": 21570,
                    "totalHealth": 3274,
                    "totalTimeSpentDead": 365,
                    "tripleKills": 0,
                    "trueDemageToChampions": 2229,
                    "turretsKilled": 3,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 36,
                    "visionWardsBoughtInGame": 1,
                    "wardKilled": 3,
                    "wardPlaced": 8,
                    "wardPlacedDetector": 1,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Fail"
                },
                {
                    "PERK0": 8112,
                    "PERK1": 8139,
                    "PERK2": 8138,
                    "PERK3": 8135,
                    "PERK4": 8234,
                    "PERK5": 8232,
                    "STAT_PERK_0": 5008,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5002,
                    "allMinionsKilled": 156,
                    "assists": 11,
                    "baronKills": 0,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"5\",\"league_points\":\"98\",\"rank\":\"1\"}",
                        "isDoubleKills": 1,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 1,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 1,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 1,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 876,
                    "championUsedExp": 7335,
                    "championsKilled": 18,
                    "consumablesPurchased": 3,
                    "doubleKills": 3,
                    "dragonKills": 0,
                    "exp": 18995,
                    "gameScore": 122080,
                    "goldEarned": 16341,
                    "goldSpent": 15675,
                    "hqKilled": 0,
                    "item0": 3742,
                    "item1": 6653,
                    "item2": 3157,
                    "item3": 3020,
                    "item4": 3116,
                    "item5": 3075,
                    "item6": 3340,
                    "itemsPurchased": 23,
                    "keystoneId": 8112,
                    "killingSpress": 6,
                    "largestCriticalStrike": 0,
                    "largestKillingSpree": 5,
                    "largestMultiKill": 3,
                    "level": 18,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 106357,
                    "magicDamageTaken": 7522,
                    "magicDamageToChampions": 31957,
                    "minionsKilled": 147,
                    "name": "%E5%BD%A1Hermosa%E9%9B%AA%E6%99%B4",
                    "neutralMinionsKilled": 9,
                    "numDeaths": 8,
                    "openid": "/Dpqp63n/uvNOzmllbdjUA==",
                    "pentaKills": 0,
                    "perkStyle": 8100,
                    "perkSubStyle": 8200,
                    "physicalDamageDealtPlayer": 15553,
                    "physicalDamageTaken": 28624,
                    "physicalDamageToChampions": 1577,
                    "position": "MIDDLE",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 0,
                    "spell1Cast": 119,
                    "spell2Cast": 43,
                    "spell3Cast": 75,
                    "spell4Cast": 13,
                    "summonSpell1Cast": 8,
                    "summonSpell1Id": 14,
                    "summonSpell2Cast": 5,
                    "summonSpell2Id": 4,
                    "teamId": "200",
                    "teamMadeSize": 5,
                    "timeCcingOthers": 44,
                    "totalDamageDealt": 163639,
                    "totalDamageTaken": 39701,
                    "totalDamageToChampions": 46952,
                    "totalHealth": 14955,
                    "totalTimeSpentDead": 296,
                    "tripleKills": 1,
                    "trueDemageToChampions": 13417,
                    "turretsKilled": 0,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 25,
                    "visionWardsBoughtInGame": 1,
                    "wardKilled": 0,
                    "wardPlaced": 13,
                    "wardPlacedDetector": 1,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Win"
                },
                {
                    "PERK0": 8008,
                    "PERK1": 8009,
                    "PERK2": 9104,
                    "PERK3": 8017,
                    "PERK4": 8139,
                    "PERK5": 8106,
                    "STAT_PERK_0": 5005,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5001,
                    "allMinionsKilled": 241,
                    "assists": 17,
                    "baronKills": 0,
                    "barracksKilled": 1,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"4\",\"league_points\":\"27\",\"rank\":\"3\"}",
                        "isDoubleKills": 1,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 1,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 1,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 15,
                    "championUsedExp": 7353,
                    "championsKilled": 11,
                    "consumablesPurchased": 3,
                    "doubleKills": 2,
                    "dragonKills": 0,
                    "exp": 19403,
                    "gameScore": 103882,
                    "goldEarned": 16998,
                    "goldSpent": 14300,
                    "hqKilled": 0,
                    "item0": 2420,
                    "item1": 3033,
                    "item2": 3031,
                    "item3": 3046,
                    "item4": 6672,
                    "item5": 3006,
                    "item6": 3363,
                    "itemsPurchased": 23,
                    "keystoneId": 8008,
                    "killingSpress": 3,
                    "largestCriticalStrike": 684,
                    "largestKillingSpree": 4,
                    "largestMultiKill": 2,
                    "level": 18,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 0,
                    "magicDamageTaken": 3766,
                    "magicDamageToChampions": 0,
                    "minionsKilled": 225,
                    "name": "%E5%88%AB%E6%8A%93%E6%88%91%E7%83%A6%E5%91%90",
                    "neutralMinionsKilled": 16,
                    "numDeaths": 6,
                    "openid": "jzmDTNQHZFCCxotDCr/olQ==",
                    "pentaKills": 0,
                    "perkStyle": 8000,
                    "perkSubStyle": 8100,
                    "physicalDamageDealtPlayer": 219485,
                    "physicalDamageTaken": 15258,
                    "physicalDamageToChampions": 26149,
                    "position": "BOTTOM",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 0,
                    "spell1Cast": 78,
                    "spell2Cast": 76,
                    "spell3Cast": 16,
                    "spell4Cast": 11,
                    "summonSpell1Cast": 6,
                    "summonSpell1Id": 3,
                    "summonSpell2Cast": 7,
                    "summonSpell2Id": 6,
                    "teamId": "200",
                    "teamMadeSize": 5,
                    "timeCcingOthers": 6,
                    "totalDamageDealt": 236949,
                    "totalDamageTaken": 19599,
                    "totalDamageToChampions": 32453,
                    "totalHealth": 4477,
                    "totalTimeSpentDead": 176,
                    "tripleKills": 0,
                    "trueDemageToChampions": 6303,
                    "turretsKilled": 6,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 24,
                    "visionWardsBoughtInGame": 2,
                    "wardKilled": 1,
                    "wardPlaced": 9,
                    "wardPlacedDetector": 2,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Win"
                },
                {
                    "PERK0": 8010,
                    "PERK1": 9111,
                    "PERK2": 9105,
                    "PERK3": 8014,
                    "PERK4": 8139,
                    "PERK5": 8138,
                    "STAT_PERK_0": 5005,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5002,
                    "allMinionsKilled": 104,
                    "assists": 6,
                    "baronKills": 0,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"3\",\"league_points\":\"26\",\"rank\":\"2\"}",
                        "isDoubleKills": 0,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 157,
                    "championUsedExp": 9905,
                    "championsKilled": 4,
                    "consumablesPurchased": 1,
                    "doubleKills": 0,
                    "dragonKills": 0,
                    "exp": 13871,
                    "gameScore": 35336,
                    "goldEarned": 9928,
                    "goldSpent": 9700,
                    "hqKilled": 0,
                    "item0": 1055,
                    "item1": 3031,
                    "item2": 6673,
                    "item3": 3006,
                    "item4": 1031,
                    "item5": 1036,
                    "item6": 3340,
                    "itemsPurchased": 19,
                    "keystoneId": 8010,
                    "killingSpress": 1,
                    "largestCriticalStrike": 571,
                    "largestKillingSpree": 2,
                    "largestMultiKill": 1,
                    "level": 15,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 5327,
                    "magicDamageTaken": 8701,
                    "magicDamageToChampions": 1135,
                    "minionsKilled": 104,
                    "name": "%E6%9C%80%E7%88%B1BBQ%E4%B8%B6",
                    "neutralMinionsKilled": 0,
                    "numDeaths": 11,
                    "openid": "YenHAzcT0x7R40Y8e4XKAg==",
                    "pentaKills": 0,
                    "perkStyle": 8000,
                    "perkSubStyle": 8100,
                    "physicalDamageDealtPlayer": 101051,
                    "physicalDamageTaken": 16844,
                    "physicalDamageToChampions": 7014,
                    "position": "BOTTOM",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 3,
                    "spell1Cast": 189,
                    "spell2Cast": 19,
                    "spell3Cast": 69,
                    "spell4Cast": 10,
                    "summonSpell1Cast": 5,
                    "summonSpell1Id": 14,
                    "summonSpell2Cast": 5,
                    "summonSpell2Id": 4,
                    "teamId": "100",
                    "teamMadeSize": 3,
                    "timeCcingOthers": 15,
                    "totalDamageDealt": 128265,
                    "totalDamageTaken": 27942,
                    "totalDamageToChampions": 8547,
                    "totalHealth": 2954,
                    "totalTimeSpentDead": 353,
                    "tripleKills": 0,
                    "trueDemageToChampions": 398,
                    "turretsKilled": 0,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 20,
                    "visionWardsBoughtInGame": 0,
                    "wardKilled": 2,
                    "wardPlaced": 11,
                    "wardPlacedDetector": 0,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Fail"
                },
                {
                    "PERK0": 8230,
                    "PERK1": 8275,
                    "PERK2": 8234,
                    "PERK3": 8232,
                    "PERK4": 8143,
                    "PERK5": 8120,
                    "STAT_PERK_0": 5008,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5001,
                    "allMinionsKilled": 147,
                    "assists": 21,
                    "baronKills": 1,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"2\",\"league_points\":\"1\",\"rank\":\"3\"}",
                        "isDoubleKills": 0,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 1,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 78,
                    "championUsedExp": 5138,
                    "championsKilled": 6,
                    "consumablesPurchased": 3,
                    "doubleKills": 0,
                    "dragonKills": 4,
                    "exp": 18141,
                    "gameScore": 96335,
                    "goldEarned": 12337,
                    "goldSpent": 11125,
                    "hqKilled": 0,
                    "item0": 6662,
                    "item1": 3742,
                    "item2": 1057,
                    "item3": 3047,
                    "item4": 3075,
                    "item5": 0,
                    "item6": 3364,
                    "itemsPurchased": 25,
                    "keystoneId": 8230,
                    "killingSpress": 2,
                    "largestCriticalStrike": 28,
                    "largestKillingSpree": 3,
                    "largestMultiKill": 1,
                    "level": 17,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 39150,
                    "magicDamageTaken": 7602,
                    "magicDamageToChampions": 5147,
                    "minionsKilled": 11,
                    "name": "%E5%87%AF%E5%BE%B7sex%E5%8F%B7",
                    "neutralMinionsKilled": 136,
                    "numDeaths": 4,
                    "openid": "0bPswWbXQdZT2YwLOlegwQ==",
                    "pentaKills": 0,
                    "perkStyle": 8200,
                    "perkSubStyle": 8100,
                    "physicalDamageDealtPlayer": 95062,
                    "physicalDamageTaken": 29360,
                    "physicalDamageToChampions": 13173,
                    "position": "JUNGLE",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 7,
                    "spell1Cast": 162,
                    "spell2Cast": 45,
                    "spell3Cast": 62,
                    "spell4Cast": 14,
                    "summonSpell1Cast": 4,
                    "summonSpell1Id": 4,
                    "summonSpell2Cast": 21,
                    "summonSpell2Id": 11,
                    "teamId": "200",
                    "teamMadeSize": 5,
                    "timeCcingOthers": 51,
                    "totalDamageDealt": 145480,
                    "totalDamageTaken": 38206,
                    "totalDamageToChampions": 20414,
                    "totalHealth": 13180,
                    "totalTimeSpentDead": 139,
                    "tripleKills": 0,
                    "trueDemageToChampions": 2093,
                    "turretsKilled": 0,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 29,
                    "visionWardsBoughtInGame": 3,
                    "wardKilled": 2,
                    "wardPlaced": 4,
                    "wardPlacedDetector": 3,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Win"
                },
                {
                    "PERK0": 8010,
                    "PERK1": 9111,
                    "PERK2": 9105,
                    "PERK3": 8299,
                    "PERK4": 8444,
                    "PERK5": 8453,
                    "STAT_PERK_0": 5008,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5002,
                    "allMinionsKilled": 163,
                    "assists": 14,
                    "baronKills": 0,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"3\",\"league_points\":\"12\",\"rank\":\"3\"}",
                        "isDoubleKills": 0,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 1,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 0,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 266,
                    "championUsedExp": 9587,
                    "championsKilled": 6,
                    "consumablesPurchased": 2,
                    "doubleKills": 0,
                    "dragonKills": 0,
                    "exp": 16394,
                    "gameScore": 68464,
                    "goldEarned": 13165,
                    "goldSpent": 13150,
                    "hqKilled": 0,
                    "item0": 3156,
                    "item1": 6630,
                    "item2": 3133,
                    "item3": 3047,
                    "item4": 6333,
                    "item5": 3067,
                    "item6": 3364,
                    "itemsPurchased": 27,
                    "keystoneId": 8010,
                    "killingSpress": 1,
                    "largestCriticalStrike": 0,
                    "largestKillingSpree": 3,
                    "largestMultiKill": 1,
                    "level": 16,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 0,
                    "magicDamageTaken": 14985,
                    "magicDamageToChampions": 0,
                    "minionsKilled": 145,
                    "name": "%E6%88%91%E7%9A%84%E7%81%B5%E9%AD%82%E4%B8%87%E9%87%8C%E6%8C%91%E4%B8%80",
                    "neutralMinionsKilled": 18,
                    "numDeaths": 12,
                    "openid": "CPbaFCJfYL5Mb5FwuyMf+A==",
                    "pentaKills": 0,
                    "perkStyle": 8000,
                    "perkSubStyle": 8400,
                    "physicalDamageDealtPlayer": 146554,
                    "physicalDamageTaken": 29973,
                    "physicalDamageToChampions": 26686,
                    "position": "TOP",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 2,
                    "spell1Cast": 233,
                    "spell2Cast": 42,
                    "spell3Cast": 95,
                    "spell4Cast": 16,
                    "summonSpell1Cast": 9,
                    "summonSpell1Id": 14,
                    "summonSpell2Cast": 6,
                    "summonSpell2Id": 4,
                    "teamId": "100",
                    "teamMadeSize": 3,
                    "timeCcingOthers": 34,
                    "totalDamageDealt": 152149,
                    "totalDamageTaken": 58063,
                    "totalDamageToChampions": 29675,
                    "totalHealth": 20996,
                    "totalTimeSpentDead": 440,
                    "tripleKills": 0,
                    "trueDemageToChampions": 2988,
                    "turretsKilled": 1,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 5,
                    "visionWardsBoughtInGame": 0,
                    "wardKilled": 0,
                    "wardPlaced": 3,
                    "wardPlacedDetector": 0,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Fail"
                },
                {
                    "PERK0": 8369,
                    "PERK1": 8304,
                    "PERK2": 8321,
                    "PERK3": 8347,
                    "PERK4": 8135,
                    "PERK5": 8143,
                    "STAT_PERK_0": 5008,
                    "STAT_PERK_1": 5008,
                    "STAT_PERK_2": 5002,
                    "allMinionsKilled": 209,
                    "assists": 5,
                    "baronKills": 1,
                    "barracksKilled": 0,
                    "battleHonour": {
                        "gameLevel": "{\"tier\":\"3\",\"league_points\":\"51\",\"rank\":\"2\"}",
                        "isDoubleKills": 0,
                        "isGodlike": 0,
                        "isLargestAllMinionsKilled": 0,
                        "isLargestAssists": 0,
                        "isLargestChampionsKilled": 0,
                        "isLargestGoldEarned": 0,
                        "isLargestTotalDamageDealtToChampions": 0,
                        "isLargestTotalDamageTaken": 0,
                        "isLargestTurretsKilled": 0,
                        "isMvp": 0,
                        "isPentaKills": 0,
                        "isQuadraKills": 0,
                        "isSvp": 1,
                        "isTripleKills": 0,
                        "isUnrealKills": 0,
                        "isWinWithLessTeammate": 0,
                        "isZeroDeath": 0
                    },
                    "championId": 141,
                    "championUsedExp": 21487,
                    "championsKilled": 12,
                    "consumablesPurchased": 2,
                    "doubleKills": 0,
                    "dragonKills": 1,
                    "exp": 16415,
                    "gameScore": 111631,
                    "goldEarned": 17432,
                    "goldSpent": 17025,
                    "hqKilled": 0,
                    "item0": 6693,
                    "item1": 6333,
                    "item2": 6694,
                    "item3": 3158,
                    "item4": 6609,
                    "item5": 3042,
                    "item6": 3364,
                    "itemsPurchased": 25,
                    "keystoneId": 8369,
                    "killingSpress": 4,
                    "largestCriticalStrike": 0,
                    "largestKillingSpree": 3,
                    "largestMultiKill": 1,
                    "level": 16,
                    "loginIp": "",
                    "lolId": "",
                    "lpl": "",
                    "magicDamageDealtPlayer": 6299,
                    "magicDamageTaken": 11404,
                    "magicDamageToChampions": 0,
                    "minionsKilled": 45,
                    "name": "%E7%99%BD%E8%A1%A3%E9%AA%91%E9%B9%A4%E4%B8%8B%E6%B1%9F%E5%8D%97",
                    "neutralMinionsKilled": 164,
                    "numDeaths": 10,
                    "openid": "8h7XZg7zosGkebU2RtPJVw==",
                    "pentaKills": 0,
                    "perkStyle": 8300,
                    "perkSubStyle": 8100,
                    "physicalDamageDealtPlayer": 190086,
                    "physicalDamageTaken": 25892,
                    "physicalDamageToChampions": 33164,
                    "position": "JUNGLE",
                    "puuId": "",
                    "quadraKills": 0,
                    "sightWardsBoughtInGame": 0,
                    "skinIndex": 9,
                    "spell1Cast": 179,
                    "spell2Cast": 92,
                    "spell3Cast": 55,
                    "spell4Cast": 21,
                    "summonSpell1Cast": 19,
                    "summonSpell1Id": 11,
                    "summonSpell2Cast": 6,
                    "summonSpell2Id": 4,
                    "teamId": "100",
                    "teamMadeSize": 3,
                    "timeCcingOthers": 34,
                    "totalDamageDealt": 219618,
                    "totalDamageTaken": 47156,
                    "totalDamageToChampions": 35893,
                    "totalHealth": 18280,
                    "totalTimeSpentDead": 413,
                    "tripleKills": 0,
                    "trueDemageToChampions": 2729,
                    "turretsKilled": 0,
                    "uinId": "",
                    "unrealKills": 0,
                    "visionScore": 13,
                    "visionWardsBoughtInGame": 1,
                    "wardKilled": 3,
                    "wardPlaced": 1,
                    "wardPlacedDetector": 0,
                    "wardSkinIndex": 0,
                    "wasAfk": 0,
                    "win": "Fail"
                }
            ]
        },
        "openid": "jzmDTNQHZFCCxotDCr/olQ==",
        "exts": [
            {
                "openid": "CPbaFCJfYL5Mb5FwuyMf+A==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 9587,
                "ext_flag": 0
            },
            {
                "openid": "O1Y4chCRHPt4vmSI/arkIQ==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 6398,
                "ext_flag": 0
            },
            {
                "openid": "/Dpqp63n/uvNOzmllbdjUA==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 7335,
                "ext_flag": 0
            },
            {
                "openid": "thbX8YKL0pJGl9JIEe2/Kw==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 9423,
                "ext_flag": 0
            },
            {
                "openid": "0bPswWbXQdZT2YwLOlegwQ==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 5138,
                "ext_flag": 0
            },
            {
                "openid": "fDdlvWxPBkNwZRhK0qgJAQ==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 4527,
                "ext_flag": 0
            },
            {
                "openid": "YenHAzcT0x7R40Y8e4XKAg==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 9905,
                "ext_flag": 0
            },
            {
                "openid": "FCV/lNy2/Ejcin4AbjTlig==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 15161,
                "ext_flag": 0
            },
            {
                "openid": "8h7XZg7zosGkebU2RtPJVw==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 21487,
                "ext_flag": 0
            },
            {
                "openid": "jzmDTNQHZFCCxotDCr/olQ==",
                "attack": 0,
                "armor": 0,
                "magic": 0,
                "magic_resist": 0,
                "attack_speed": 0,
                "crit": 0,
                "move_speed": 0,
                "cd_ratio": 0,
                "champion_used_exp": 7353,
                "ext_flag": 0
            }
        ]
    }
    ```
    </details>
