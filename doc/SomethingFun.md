# 抓包时发现的一些有意思的东西

## 1. 游戏关键字映射表

1. 段位、模式
```
GET https://wegame.gtimg.com/g.26-r.c2d3c/helper/lol/conf/LOLKeywords.2625c4299d31a447f94244fd60d8fbda.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
```

```js
HTTP/1.1 200 OK
Last-Modified: Fri, 23 Jul 2021 03:28:57 GMT
Server: NWS_X2_MID
Date: Tue, 27 Sep 2022 11:51:15 GMT
Expires: Thu, 27 Oct 2022 11:51:15 GMT
Content-Type: application/x-javascript
X-Verify-Code: 07ba02ea4763a410db14ac5b01bab2a6
X-Daa-Tunnel: hop_count=1
Cache-Control: max-age=2592000
Age: 186109
Content-Length: 8643
Accept-Ranges: bytes
X-NWS-LOG-UUID: 2805090714032177842
Connection: keep-alive
X-Cache-Lookup: Cache Hit
Access-Control-Allow-Origin: *

/**
 * Created by beanmao on 2014/11/28.
 * 游戏内的一些关键字映射关系说明
 */
!function(){
	var config = {
		"tier" : ["最强王者", "钻石", "铂金", "黄金", "白银", "青铜", "超凡大师", "傲世宗师", "黑铁"],
		"level" : ["Ⅰ","Ⅱ","Ⅲ","Ⅳ","Ⅴ"],
		"tierTime" : [10*86400,28*86400,28*86400,28*86400,28*86400,10*86400],//掉段保护期
        //type将会废弃,逐步改用game_mode
		"type" : {"1":"自定义","2":"新手关","3":"匹配赛","4":"排位赛","5":"战队赛","6":"大乱斗","7":"人机","8":"统治战场","9":"大对决","11":"克隆赛",
                  "14":"无限火力","15":"镜像赛","16":"末日赛","17":"飞升赛","18":"六杀丛林", "19" : "魄罗乱斗", "20" : "互选征召", "21" : "佣兵战",
                  "22" : "新统治", "23": "枢纽攻防", "24": "无限乱斗", "25": "提莫人机"},
        /**
        <macro name="TLB_BATTLE_TYPE_UNKNOWN" value="0" desc="未知模式" />
        <macro name="TLB_BATTLE_TYPE_CLASSIC" value="1" desc="经典模式" />
        <macro name="TLB_BATTLE_TYPE_COMPUTER" value="2" desc="人机模式" />
        <macro name="TLB_BATTLE_TYPE_5V5_TEAM" value="3" desc="5V5组队" />
        <macro name="TLB_BATTLE_TYPE_5V5_ONE" value="4" desc="5V5单人" />
        <macro name="TLB_BATTLE_TYPE_3V3_TEAM" value="5" desc="3V3组队" />
        <macro name="TLB_BATTLE_TYPE_ARAM" value="6" desc="大乱斗" />
        <macro name="TLB_BATTLE_TYPE_UNRANKED3X3" value="7" desc="经典模式3x3" />
        <macro name="TLB_BATTLE_TYPE_CUSTOM" value="8" desc="自定义" />
        <macro name="TLB_BATTLE_TYPE_ODIN" value="9" desc="统治战场" />
        <macro name="TLB_BATTLE_TYPE_TUTORIAL" value="10" desc="新手指导" />
        <macro name="TLB_BATTLE_TYPE_ONE4ALL" value="11" desc="克隆赛" />
        <macro name="TLB_BATTLE_TYPE_FIRST_BLOOD_1V1"  value="12" desc="大对决1v1" />
        <macro name="TLB_BATTLE_TYPE_FIRST_BLOOD_2V2"  value="13" desc="大对决2v2" />
        <macro name="TLB_BATTLE_TYPE_URF"              value="14" desc="无限火力" />
        <macro name="TLB_BATTLE_TYPE_ONE4ALLX"         value="15" desc="镜像赛" />
        <macro name="TLB_BATTLE_TYPE_NIGHTMARE_BOTS"   value="16" desc="末日人机赛" />
        <macro name="TLB_BATTLE_TYPE_ASCENSION"        value="17" desc="飞升赛" />
        <macro name="TLB_BATTLE_TYPE_UNRANKED6X6"      value="18" desc="6v6丛林赛" />
        <macro name="TLB_BATTLE_TYPE_KINGPORO"         value="19" desc="魄罗大乱斗" />
        <macro name="TLB_BATTLE_TYPE_COUNTER_PICK"     value="20" desc="互选征召" />
        <macro name="TLB_BATTLE_TYPE_BILGEWATER"       value="21" desc="佣兵大作战" />
        <macro name="TLB_BATTLE_TYPE_NEW_ODIN"         value="22" desc="新统治战场" />
        <macro name="TLB_BATTLE_TYPE_SIEGE"            value="23" desc="枢纽攻防战" />
        <macro name="TLB_BATTLE_TYPE_URF_REROLL"       value="24" desc="无限乱斗" />
        <macro name="TLB_BATTLE_TYPE_NEW_NIGHTMARE_BOTS"   value="25"  desc="新末日人机赛(提摸人机)" />
         **/
        "GAME_MODE": {
            "1": "匹配赛", "2": "人机", "3": "灵活排位", "4": "排位赛", "5": "灵活排位", "6": "大乱斗",
            "7": "匹配赛", "8": "自定义", "9": "统治战场", "10": "新手指导", "11": "克隆赛",
            "12": "大对决", "13": "大对决", "14": "无限火力", "15": "镜像赛", "16": "末日赛",
            "17": "飞升赛", "18": "六杀丛林", "19": "魄罗乱斗", "20": "互选征召", "21": "佣兵战",
            "22": "新统治", "23": "枢纽攻防", "24": "无限乱斗", "25": "提莫人机", "26": "红月决", "27": "重开局",
            "28": "峡谷大乱斗", "29": "死兆星", "30": "怪兽入侵", "31": "过载", "32": "冰雪火力",
            "33": "冠军赛", "34": "极限闪击", "35": "奥德赛", "46": "终极魔典"
        },
		"map" : {"0":"未知地图","1":"召唤师峡谷","3":"试炼之地","8":"水晶之痕","10":"扭曲丛林","12":"嚎哭深渊","11":"召唤师峡谷","14":"屠夫之桥","18":"瓦洛兰城市公园"},
		getGameType : function(gameType, gameMode){
			// 游戏中，客户端只能上报gameType和gameMode，通过这两个值来确定要显示比赛类型
			var GAME_TYPES = {
				"0":"匹配",		// PvP匹配赛 (不包括排位)
				"1":"排位赛",	// 排位赛
				"2":"人机",		// 人机
				"3":"自定义",	// 自定义
				"4":"新手",		// 新手
				"5":"自定义",	// 练习
				"6":"未知"		// 未知
			},
			GAME_MODES = {
				"0":"匹配赛",		// 经典模式
				"1":"大乱斗",		// 大乱斗
				"2":"统治战场",		// 统治战场
				"3":"克隆赛",		// 克隆模式
				"4":"未知",			// 未知
				"5":"新手关",		//练习模式
				"6":"飞升模式",		//飞升模式
				"7":"魄罗乱斗",		//魄罗乱斗
				"8":"互选征召"		//互选征召
			},
			result;
			if(gameType * 1 === 0 || gameType * 1 === 6){
				// 匹配
				result = GAME_MODES[gameMode];
			}else{
				result = GAME_TYPES[gameType];
			}
			return result;
        },
        getJudgementHtml : function(battleData){
            var judgementDict = {
                1 : {
                    html : '<i class="flag-icon flag-icon1">Carry局</i>',
                        p : 0
                },
                2 : {
                    //html : '<i class="flag-icon flag-icon2">背锅局</i>',
                    html : '',//产品需求不显示
                        p : 0
                },
                4 : {
                    //html : '<i class="flag-icon flag-icon3">被虐局</i>',
                    html : '',//产品需求不显示
                        p : 1
                },
                8 : {
                    html : '<i class="flag-icon flag-icon4">翻盘局</i>',
                        p : 0.1
                },
                16 : {
                    html : '<i class="flag-icon flag-icon5">福利局</i>',
                        p : 0.1
                },
                32 : {
                    html : '<i class="flag-icon flag-icon6">挂机局</i>',
                        p : 0.1
                },
                64 : {
                    html : '<i class="flag-icon flag-icon7">尽力局</i>',
                        p : 0
                },
                128 : {
                    html : '<i class="flag-icon flag-icon8">浪输局</i>',
                        p : 0.1
                },
                256 : {
                    html : '<i class="flag-icon flag-icon9">碾压局</i>',
                        p : 1
                },
                512 : {
                    html : '<i class="flag-icon flag-icon10">甩锅局</i>',
                        p : 0
                },
                1024 : {
                    html : '<i class="flag-icon flag-icon11">躺赢局</i>',
                        p : 0
                },
                2048 : {
                    html : '<span class="roundtype44 roundtype44-12"></span>',//重开局
                    p : 0
                }
            }

            var judgementList = [];
            for(var key in judgementDict){
                var item = judgementDict[key];
                item['key'] = key * 1;
                judgementList.push(judgementDict[key]);
            }
            //排序是因为最多只显示一个判定
            judgementList.sort(function(a, b){
                return a['p'] - b['p'];
            });

            //游戏判定最多只显示一个
            var ext_flag = battleData['ext_flag'];
            var judgementHtml = '';

            //4号服务端才开始全量
            var judgementTime = (new Date("2015/12/04 00:00:00")).getTime();
            var battleTime = (new Date(battleData['battle_time'].replace("-","/"))).getTime();
            if(battleTime >= judgementTime){
                for(var i = 0, l = judgementList.length; i < l; i++){
                    var item = judgementList[i];
                    if(ext_flag & item['key']){
                        judgementHtml = judgementDict[item['key']]['html'];
                        break;
                    }
                }
            }
            return judgementHtml;
        }
	};
	if(typeof define === "function"){
		define(config);
	}else{
		if(!window["PLS"]){
			window["PLS"] = {};
		}
		window["PLS"]["LOLKeywords"] = config;
	}
}();
```

2. 英雄

```
GET https://wegame.gtimg.com/g.26-r.c2d3c/helper/lol/conf/LOLChampSearch.966b4aa9bceb70334c152517a5ca7a6f.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
```

```js
HTTP/1.1 200 OK
Last-Modified: Fri, 23 Sep 2022 03:37:58 GMT
Server: NWS_X2_MID
Date: Tue, 27 Sep 2022 11:51:15 GMT
Expires: Thu, 27 Oct 2022 11:51:15 GMT
Content-Type: application/x-javascript
X-Verify-Code: 07bf221263678369a7a5baa23ac2494c
X-Daa-Tunnel: hop_count=1
Cache-Control: max-age=2592000
Age: 186109
Content-Length: 27292
Accept-Ranges: bytes
X-NWS-LOG-UUID: 15692187733376247195
Connection: keep-alive
X-Cache-Lookup: Cache Hit
Access-Control-Allow-Origin: *

window["PLS"] = PLS || {};
PLS.LOLChampSearch = {
    "1": {
        "champion_id": "1",
        "search_string": "黑暗之女,安妮,Annie,火女,萝莉,小红帽,anni,heianzhinv,huonv,辅助,中单,安"
    },
    "2": {
        "champion_id": "2",
        "search_string": "狂战士,奥拉夫,Olaf,狂战,aolafu,kuangzhanshi,战士,上单,奥拉"
    },
    "3": {
        "champion_id": "3",
        "search_string": "加里奥,Galio,jialiao,shaobingzhishang,石像,shixiang,中单,正义巨像,zhengyijuxiang,英雄登场,doinb,faker"
    },
    "4": {
        "champion_id": "4",
        "search_string": "卡牌大师,崔斯特,卡牌,kapaidashi,cuisite,卡,ka,中单,若风,misaya,法师"
    },
    "5": {
        "champion_id": "5",
        "search_string": "德邦总管,赵信,debangzongguan,zhaoxin,总管,菊花信,菊花,德邦,打野,赵"
    },
    "6": {
        "champion_id": "6",
        "search_string": "厄加特,无畏战车,wuweizhanche,Urgot,螃蟹,ejiate"
    },
    "7": {
        "champion_id": "7",
        "search_string": "诡术妖姬,乐芙兰,Leblanc,妖姬,lefulan,guishuyaoji,yaoji,中单"
    },
    "8": {
        "champion_id": "8",
        "search_string": "猩红收割者,弗拉基米尔,Vladimir,吸血鬼,xixuegui,xinghongshougezhe,中单"
    },
    "9": {
        "champion_id": "9",
        "search_string": "远古恐惧,费德提克,FiddleSticks,稻草,稻草人,daocaoren,vancal,morishizhe,打野"
    },
    "10": {
        "champion_id": "10",
        "search_string": "正义天使,凯尔,Kayle,天使,zhengyitianshi,kaier,tianshi,中单"
    },
    "11": {
        "champion_id": "11",
        "search_string": "无极剑圣,易,MasterYi,剑圣,易大师,JS,jiansheng,打野,无极"
    },
    "12": {
        "champion_id": "12",
        "search_string": "牛头酋长,阿利斯塔,The Minotaur,Alistar,牛头,老牛,牛哥,niutouqiuzhang,辅助"
    },
    "13": {
        "champion_id": "13",
        "search_string": "流浪法师,瑞兹,Ryze,光头,ruizi,liulang,上单,符文法师,fuwenfashi,流浪"
    },
    "14": {
        "champion_id": "14",
        "search_string": "亡灵勇士,亡灵战神,wanglingzhanshen,赛恩,Sion,wanglingyongshi,老司机,saien,塞恩,上单"
    },
    "15": {
        "champion_id": "15",
        "search_string": "战争女神,希维尔,Sivir,轮子妈,zhanzhengnvshen,ADC,射手,xiweier,战争,女神"
    },
    "16": {
        "champion_id": "16",
        "search_string": "众星之子,索拉卡,Soraka,星妈,奶妈,naima,suolaka,zhongxinzhizi,xingma,辅助"
    },
    "17": {
        "champion_id": "17",
        "search_string": "迅捷斥候,提莫,Teemo,timo,提莫,蘑菇,xunjiechihou,mogu,上单,迅捷,xunjie"
    },
    "18": {
        "champion_id": "18",
        "search_string": "麦林炮手,崔丝塔娜,Tristana,小炮,炮娘,麦林,mailinpaoshou,xiaopao,ADC,射手"
    },
    "19": {
        "champion_id": "19",
        "search_string": "嗜血猎手,沃里克,Warwick,狼人,langren,shixuelieshou,打野,祖安怒兽,zuannushou,zuan"
    },
    "20": {
        "champion_id": "20",
        "search_string": "雪原,双子,雪原双子,xueqiu,xueyuanshuangzi,雪人骑士,努努,Nunu,雪人,xuerenqishi,nunu,辅助,打野,xueren"
    },
    "21": {
        "champion_id": "21",
        "search_string": "赏金猎人,厄运小姐,MissFortune,女枪,好运姐,nvqiang,shangjinlieren,ADC,射手,赏金,猎人,shangjin"
    },
    "22": {
        "champion_id": "22",
        "search_string": "寒冰射手,艾希,The Frost Archer,Ashe,寒冰,爱射,冰弓,艾射,aixi,hanbingsheshou,ADC,射手"
    },
    "23": {
        "champion_id": "23",
        "search_string": "蛮族之王,泰达米尔,Tryndamere,蛮王,三秒蛮,蛮三刀,manzi,蛮子,manzuzhiwang,manwang,上单"
    },
    "24": {
        "champion_id": "24",
        "search_string": "武器大师,贾克斯,Grandmaster at Arms,Jax,武器,jiakesi,wuqidashi,上单,wuqi,大师,dashi"
    },
    "25": {
        "champion_id": "25",
        "search_string": "堕落天使,莫甘娜,Fallen Angel,Morgana,堕天使,moganna,duoluotianshi,辅助,中单"
    },
    "26": {
        "champion_id": "26",
        "search_string": "时光守护者,基兰,Chronokeeper,Zilean,时光老头,jilan,shiguangshouhuzhe,时光,shiguang,中单"
    },
    "27": {
        "champion_id": "27",
        "search_string": "炼金术士,辛吉德,Mad Chemist,Singed,炼金,lianjinshushi,xinjide,上单,术士,shushi"
    },
    "28": {
        "champion_id": "28",
        "search_string": "寡妇制造者,伊芙琳,The Widowmaker,Evelynn,寡妇,eve,guafuzhizaozhe,yifulin,打野,痛苦之拥,tongkuzhiyong"
    },
    "29": {
        "champion_id": "29",
        "search_string": "瘟疫之源,图奇,The Plague Rat,Twitch,老鼠,laoshu,wenyizhiyuan,tuqi,ADC,射手"
    },
    "30": {
        "champion_id": "30",
        "search_string": "死亡颂唱者,卡尔萨斯,The Deathsinger,Karthus,死歌,sige,siwangsongchangzhe,kaersasi,中单"
    },
    "31": {
        "champion_id": "31",
        "search_string": "虚空恐惧,科加斯,The Terror of the Void,Chogath,大虫子,虫子,xukongkongju,kejiasi,中单,dachongzi"
    },
    "32": {
        "champion_id": "32",
        "search_string": "殇之木乃伊,阿木木,The Sad Mummy,mumu,木木,amumu,magina,shangzhimunaiyi,打野"
    },
    "33": {
        "champion_id": "33",
        "search_string": "披甲龙龟,拉莫斯,The Armordillo,Rammus,龙龟,乌龟,pijialonggui,lamosi,longgui,打野,wugui"
    },
    "34": {
        "champion_id": "34",
        "search_string": "冰晶凤凰,艾尼维亚,The Cryophoenix,Anivia,凤凰,冰鸟,bingjingfenghuang,ainiweiya,fenghuang,中单,bingniao"
    },
    "35": {
        "champion_id": "35",
        "search_string": "恶魔小丑,萨科,The Demon Jester,Shaco,小丑,xiaochou,emoxiaochou,sake"
    },
    "36": {
        "champion_id": "36",
        "search_string": "祖安狂人,蒙多医生,The Madman of Zaun,Dr. Mundo,蒙多,zuankuangren,mengduo,上单,vito"
    },
    "37": {
        "champion_id": "37",
        "search_string": "琴瑟仙女,娑娜,Maven of the Strings,Sona,琴女,琴妈,suona,qingnv,qinsexiannv,辅助,linnea"
    },
    "38": {
        "champion_id": "38",
        "search_string": "虚空行者,卡萨丁,The Void Walker,Kassadin,KSD,凯撒丁,kasading,xukongxingzhe,虚空,中单"
    },
    "39": {
        "champion_id": "39",
        "search_string": "刀锋舞者,艾瑞莉娅,刀妹,daomei,daofengwuzhe,Irelia,女刀,刀女,daofengyizhi,airuiliya,上单,jy,"
    },
    "40": {
        "champion_id": "40",
        "search_string": "风暴之怒,迦娜,The Storms Fury,Janna,风女,fengbaozhinu,fengnv,jiana,辅助,"
    },
    "41": {
        "champion_id": "41",
        "search_string": "海洋之灾,普朗克,The Saltwater Scourge,Gangplank,船长,chuanzhang,pulangke,海盗,haiyangzhizai,上单,地火"
    },
    "42": {
        "champion_id": "42",
        "search_string": "英勇投弹手,库奇,The Daring Bombardier,Corki,飞机,kuqi,yingyongtoudanshou,feiji,kuqi,ADC,射手"
    },
    "43": {
        "champion_id": "43",
        "search_string": "天启者,卡尔玛,The Enlightened One,Karma,Karma,tianqizhe,扇子妈,shanzima,kaerma,辅助,"
    },
    "44": {
        "champion_id": "44",
        "search_string": "宝石骑士,塔里克,The Gem Knight,Taric,宝石,奶爸,baoshiqishi,talike,辅助,瓦洛兰之盾,waluolanzhidun"
    },
    "45": {
        "champion_id": "45",
        "search_string": "邪恶小法师,维迦,The Tiny Master of Evil,Veigar,小法,xieexiaofashi,weijia,中单"
    },
    "48": {
        "champion_id": "48",
        "search_string": "诅咒巨魔,特朗德尔,The Cursed Troll,Trundle,巨魔之王,巨魔,jumozhiwang,telangdeer,上单"
    },
    "50": {
        "champion_id": "50",
        "search_string": "诺克萨斯统领,策士统领,斯维因,nuokesasitongling,Swain,乌鸦,ceshitongling,siweiyin,wuya,中单"
    },
    "51": {
        "champion_id": "51",
        "search_string": "皮城女警,凯特琳,The Sheriff of Piltover,Caitlyn,皮城,女警,pichengnvjing,nvqiang,katelin,ADC,射手"
    },
    "53": {
        "champion_id": "53",
        "search_string": "蒸汽机器人,布里茨,The Great Steam Golem,Blitzcrank,机器人,jiqiren,yeyu,辅助,"
    },
    "54": {
        "champion_id": "54",
        "search_string": "熔岩巨兽,墨菲特,Shard of the Monolith,Malphite,石头,石头人,rongyanjushou,shitouren,mofeite,上单"
    },
    "55": {
        "champion_id": "55",
        "search_string": "不祥之刃,卡特琳娜,The Sinister Blade,Katarina,卡特,KT,不详,buxiangzhiren,katelinna,中单"
    },
    "56": {
        "champion_id": "56",
        "search_string": "永恒梦魇,魔腾,The External Nightmare,Nocturne,梦魇,yonghengmengyan,moteng,打野"
    },
    "57": {
        "champion_id": "57",
        "search_string": "扭曲树精,茂凯,The Twisted Treant,Maokai,树人,shuren,大树,niuqushujing,dashu,上单"
    },
    "58": {
        "champion_id": "58",
        "search_string": "荒漠屠夫,雷克顿,The Butcher of the Sands,Renekton,鳄鱼,eyu,huangmotufu,上单,kimi"
    },
    "59": {
        "champion_id": "59",
        "search_string": "德玛西亚皇子,嘉文四世,嘉文,JarvanIV,皇子,四阿哥,demaxiyahuangzi,jiawen,huangzi,上单"
    },
    "60": {
        "champion_id": "60",
        "search_string": "蜘蛛女皇,伊莉丝,The Spider Queen,Elise,蜘蛛,zhizhunvhuang,yilisi,打野"
    },
    "61": {
        "champion_id": "61",
        "search_string": "发条魔灵,奥莉安娜,The Lady of Clockwork,Orianna,发条,fatiaomoling,魔灵,球女,qiunv,中单,miss,"
    },
    "62": {
        "champion_id": "62",
        "search_string": "齐天大圣,孙悟空,The Monkey King,MonkeyKing,猴子,老孙,斗战神,qitiandasheng,sunwukong,leo,houzi,上单,leo"
    },
    "63": {
        "champion_id": "63",
        "search_string": "复仇焰魂,布兰德,The Burning Vengeance,Brand,火人,火男,huonan,fuchouyanhun,huoren,中单"
    },
    "64": {
        "champion_id": "64",
        "search_string": "盲僧,李青,The Blind Monk,LeeSin,瞎子,和尚,xiazi,mangseng,liqing,魔力瞎,molixia,"
    },
    "67": {
        "champion_id": "67",
        "search_string": "暗夜猎手,薇恩,The Night Hunter,Vayne,VN,weien,anyelieshou,UZI,小狗,ADC,射手"
    },
    "68": {
        "champion_id": "68",
        "search_string": "机械公敌,兰博,The Mechanized Menace,Rumble,喷火娃,jixiegongdi,lanbo,上单"
    },
    "69": {
        "champion_id": "69",
        "search_string": "魔蛇之拥,卡西奥佩娅,The Serpents Embrace,Cassiopeia,蛇女,shenv,moshezhiyong,中单"
    },
    "72": {
        "champion_id": "72",
        "search_string": "水晶先锋,斯卡纳,The Crystal Vanguard,Skarner,shuijingxianfeng,xiezi,蝎子,sikana,打野"
    },
    "74": {
        "champion_id": "74",
        "search_string": "大发明家,黑默丁格,The Revered Inventor,Heimerdinger,大头,dafamingjia,heimodingge,datou,中单"
    },
    "75": {
        "champion_id": "75",
        "search_string": "沙漠死神,内瑟斯,The Curator of the Sands,Nasus,狗头,goutou,shamosishen,neisesi,上单"
    },
    "76": {
        "champion_id": "76",
        "search_string": "狂野女猎手,奈德丽,The Bestial Huntress,Nidalee,豹女,naidali,baonv,奶大力,kuangyenvlieshou,中单"
    },
    "77": {
        "champion_id": "77",
        "search_string": "野兽之灵,乌迪尔,The Animal Spirit,Ud,德鲁伊,兽灵行者,wudier,bond,yeshouzhiling,打野"
    },
    "78": {
        "champion_id": "78",
        "search_string": "圣锤之毅,波比,The Iron Ambassador,Poppy,bobi,gangtiedashi,上单"
    },
    "79": {
        "champion_id": "79",
        "search_string": "酒桶,古拉加斯,The Rabble Rouser,Gragas,大胡子,jiutong,gulajiasi,打野"
    },
    "80": {
        "champion_id": "80",
        "search_string": "不屈之枪,潘森,The Artisan of War,Pantheon,SBD,斯巴达,pansen,zhanzhengzhiwang,PS,上单,打野,辅助"
    },
    "81": {
        "champion_id": "81",
        "search_string": "探险家,伊泽瑞尔,The Prodigal Explorer,Ezreal,EZ,小黄毛,tanxianjia,美男子,meinanzi,ADC,射手"
    },
    "82": {
        "champion_id": "82",
        "search_string": "铁铠冥魂,莫德凯撒,金属,Mordekaiser,铁男,jinshudashi,modekaisa,tienan,上单,tiekaiminghun"
    },
    "83": {
        "champion_id": "83",
        "search_string": "掘墓者,约里克,The Gravedigger,Yorick,掘墓,juemuzhe,yuelike,上单,牧魂人,muhunren"
    },
    "84": {
        "champion_id": "84",
        "search_string": "离群之刺,阿卡丽,The Fist of Shadow,Akali,AKL,liqunzhici,akali,中单,上单"
    },
    "85": {
        "champion_id": "85",
        "search_string": "狂暴之心,凯南,Kennen,凯南,电耗子,电猫,kainan,dianhaozi,kuangbaozhixin,上单,天雷"
    },
    "86": {
        "champion_id": "86",
        "search_string": "德玛西亚之力,盖伦,The Might of Demacia,Garen,盖伦,草丛伦,gailun,study,demaxiyazhili,上单"
    },
    "89": {
        "champion_id": "89",
        "search_string": "曙光女神,蕾欧娜,The Radiant Dawn,Leona,日女,rinv,shuguangnvshen,女坦,辅助,roger"
    },
    "90": {
        "champion_id": "90",
        "search_string": "虚空先知,玛尔扎哈,The Prophet of the Void,Malzahar,蚂蚱,先知,xukongxianzhi,mazha,中单"
    },
    "91": {
        "champion_id": "91",
        "search_string": "刀锋之影,泰隆,The Blades Shadow,Talon,男刀,男刀锋,daofengzhiying,tailong,中单"
    },
    "92": {
        "champion_id": "92",
        "search_string": "放逐之刃,锐雯,The Exile,Riven,瑞文,ruiwen,fangzhuzhiren,放逐,兔女郎,tunvlang,上单"
    },
    "96": {
        "champion_id": "96",
        "search_string": "深渊巨口,克格莫,The Mouth of the Abyss,KogMaw,大嘴,shenyuanjukou,dazui,ADC,射手"
    },
    "98": {
        "champion_id": "98",
        "search_string": "暮光之眼,慎,Eye of Twilight,Shen,暮光,muguangzhiyan,上单"
    },
    "99": {
        "champion_id": "99",
        "search_string": "光辉女郎,拉克丝,The Lady of Luminosity,Lux,光女,lakesi,guanghui,中单,辅助,janet"
    },
    "101": {
        "champion_id": "101",
        "search_string": "远古巫灵,泽拉斯,The Magus Ascendant,Xerath,yuanguwuling,zelasi,guancaiban,中单"
    },
    "102": {
        "champion_id": "102",
        "search_string": "龙血武姬,希瓦娜,The Half-Dragon,Shyvana,龙女,longnv,xiwana,longxuewuji,上单"
    },
    "103": {
        "champion_id": "103",
        "search_string": "九尾妖狐,阿狸,The Nine Tails Fox,Ahri,九尾,狐狸,阿狸,ali,huli,jiuweiyaohu,妖狐,yaohu,中单,反向E"
    },
    "104": {
        "champion_id": "104",
        "search_string": "法外狂徒,格雷福斯,The Outlaw,Graves,男枪,nanqiang,fawaikuangtu,geleifusi,ADC,射手"
    },
    "105": {
        "champion_id": "105",
        "search_string": "潮汐海灵,菲兹,The Tidal Trickster,Fizz,yuren,chaoxihailing,小鱼人,上单,中单"
    },
    "106": {
        "champion_id": "106",
        "search_string": "不灭狂雷,雷霆咆哮,沃利贝尔,The Thunders Roar,Volibear,大白熊,狗熊,leitingpaoxiao,gouxiong,上单"
    },
    "107": {
        "champion_id": "107",
        "search_string": "傲之追猎者,雷恩加尔,The Pridestalker,Rengar,aozhizhuiliezhe,shizi,狮子狗,leienjiaer,打野"
    },
    "110": {
        "champion_id": "110",
        "search_string": "惩戒之箭,韦鲁斯,The Arrow of Retribution,Varus,weilusi,chengjiezhijian,ADC,射手,中单,反向Q,反向q"
    },
    "111": {
        "champion_id": "111",
        "search_string": "深海泰坦,诺提勒斯,The Titan of the Depths,Nautilus,taitan,泰坦,shenhaitaitan,辅助,"
    },
    "112": {
        "champion_id": "112",
        "search_string": "机械先驱,维克托,The Machine Herald,Viktor,jixiexianqu,三只手,lc,sanzhishou,jixiexianqu,中单"
    },
    "113": {
        "champion_id": "113",
        "search_string": "凛冬之怒,瑟庄妮,北地之怒,beidizhinu,Sejuani,lindongzhinu,猪女,zhunv,lindongzhinu,猪妹,zhumei,打野"
    },
    "114": {
        "champion_id": "114",
        "search_string": "无双剑姬,菲奥娜,The Grand Duelist,Fiora,JJ,jianji,剑姬,wushuangjianji,feiaona,上单,norland"
    },
    "115": {
        "champion_id": "115",
        "search_string": "爆破鬼才,吉格斯,The Hexplosives Expert,Ziggs,zhadanren,baopoguicai,炸弹人,jigesi,zhadan,中单"
    },
    "117": {
        "champion_id": "117",
        "search_string": "仙灵女巫,璐璐,The Fae Sorceress,lulu,xianlingnvwu,中单,辅助,露露"
    },
    "119": {
        "champion_id": "119",
        "search_string": "荣耀行刑官,德莱文,Draven,delaiwen,rongyaoxingxingguan,文森特,vincent,wensente,ADC,射手"
    },
    "120": {
        "champion_id": "120",
        "search_string": "战争之影,赫卡里姆,The Shadow of War,Hecarim,renma,zhanzhengzhiying,人马,木马,muma,上单"
    },
    "121": {
        "champion_id": "121",
        "search_string": "虚空掠夺者,卡兹克,The Void Reaver,Khazix,螳螂,tanglang,kazike,xukonglueduozhe,tiaozao,打野"
    },
    "122": {
        "champion_id": "122",
        "search_string": "诺克萨斯之手,德莱厄斯,The Hand of Noxus,Darius,断头台,nuokesasizhishou,小学生之手,delaiesi,上单"
    },
    "126": {
        "champion_id": "126",
        "search_string": "未来守护者,杰斯,The Defender of Tomorrow,Jayce,jiesi,weilaishouhuzhe,高富帅,gaofushuai,中单"
    },
    "127": {
        "champion_id": "127",
        "search_string": "石女,Lissandra,冰霜女巫,丽桑卓,bingshuangnvwu,冰女,lisangzhuo,女巫,nvwu,中单,上单"
    },
    "131": {
        "champion_id": "131",
        "search_string": "皎月女神,黛安娜,Scorn of The Moon,Diana,jiaoyuenvshen,daianna,皎月,月女,中单"
    },
    "133": {
        "champion_id": "133",
        "search_string": "鸟人,Quinn,奎因,德玛西亚之翼,kuiyin,demaxiyazhiyi,ADC,射手"
    },
    "134": {
        "champion_id": "134",
        "search_string": "暗黑元首,辛德拉,The Dark Sovereigh,Syndra,anheiyuanshou,dannv,蛋女,xindela,中单"
    },
    "136": {
        "champion_id": "136",
        "search_string": "铸星龙王,奥瑞利安,索尔,suoer,aurelion,sol,zhuxinglongwang"
    },
    "141": {
        "champion_id": "141",
        "search_string": "凯隐,影流之镰,Kayn,kaiyin,yingliuzhilian,上路,战士"
    },
    "142": {
        "champion_id": "142",
        "search_string": "佐伊,暮光星灵,Zoe,小精灵,跳绳,灵动,zuoyi,muguangxingling,xiaojingling,tiaosheng,中路,法师"
    },
    "143": {
        "champion_id": "143",
        "search_string": "荆棘之兴,婕拉,Rise of The Thorns,Zyra,jiela,jingjizhixing,杰拉,辅助,"
    },
    "145": {
        "champion_id": "145",
        "search_string": "卡莎,虚空之女,Kaisa,卡萨丁之女,kasha,xukongzhinv,kashadingzhinv,ADC,射手,UZI"
    },
    "147": {
        "champion_id": "147",
        "search_string": "歌姬,萨勒芬妮,萨勒,芬妮,星籁,星籁歌姬,Seraphine,xinglaigeji,salefenni,法师,辅助,中单"
    },
    "150": {
        "champion_id": "150",
        "search_string": "迷失之牙,纳尔,mishizhiya,naer,上单"
    },
    "154": {
        "champion_id": "154",
        "search_string": "橡皮,橡皮人,Zac,鼻涕怪,扎克,生化魔人,zake,shenghuamoren,绿巨人,翔战士,zhake,上单"
    },
    "157": {
        "champion_id": "157",
        "search_string": "疾风剑豪,亚索,Yasuo,jifengjianhao,托儿所,托儿索,tuoersuo,中单"
    },
    "161": {
        "champion_id": "161",
        "search_string": "虚空之眼,维克兹,Velkoz,触手,触手怪,xukongzhiyan,weikezi,chushou,辅助,中单"
    },
    "163": {
        "champion_id": "163",
        "search_string": "岩雀,塔莉垭,yanque,taliya,taliyah,shitounv"
    },
    "164": {
        "champion_id": "164",
        "search_string": "青钢影,Camille,卡蜜尔,卡密尔,刀锋女战士,kamier,qinggangying,上单"
    },
    "166": {
        "champion_id": "166",
        "search_string": ""
    },
    "200": {
        "champion_id": "200",
        "search_string": "卑尔维斯,Belveth,虚空女皇,xukongnvhuang,beierweisi,beier,xukong,阿尔卑斯,卑斯"
    },
    "201": {
        "champion_id": "201",
        "search_string": "弗雷尔卓德,弗雷尔卓德之心,布隆,Braum,bulong,fuleierzhuodezhixin,大叔,dashu,辅助,"
    },
    "202": {
        "champion_id": "202",
        "search_string": "烬,戏命师,jhin,ximing,jin,鬼面,百分百胜率"
    },
    "203": {
        "champion_id": "203",
        "search_string": "永猎双子,千珏,shuangzi,qianyu,qianjue,yonglieshuangzi"
    },
    "221": {
        "champion_id": "221",
        "search_string": "ADC,泽丽,射手,祖安花火,祖安,泽,花火,zeli,Zeli,Zeri,zuanhuahuo,zuan,"
    },
    "222": {
        "champion_id": "222",
        "search_string": "金克丝,Jinx,萝莉,暴走萝莉,jinkesi,baozouluoli,pingxiong,ADC,射手,aven"
    },
    "223": {
        "champion_id": "223",
        "search_string": "塔姆,河流之王,tamu,heliuzhiwang,dazuiguai,bitichong,辅助,fuzhu,hama,蛤蟆,chengkai"
    },
    "234": {
        "champion_id": "234",
        "search_string": "佛耶戈,破败之王,偷男,pobai,pobaizhiwang,viego"
    },
    "235": {
        "champion_id": "235",
        "search_string": "赛娜,涤魂圣枪,涤魂,黑枪,圣枪,Senna,辅助,saina"
    },
    "236": {
        "champion_id": "236",
        "search_string": "圣枪游侠,卢锡安,Lucian,luxian,aobama,shengqiangyouxia,ADC,射手"
    },
    "238": {
        "champion_id": "238",
        "search_string": "影流之主,劫,The Master of Shadows,Zed,jie,火影,儿童劫,lingliuzhizhu,儿童节,ertongjie,中单,faker"
    },
    "240": {
        "champion_id": "240",
        "search_string": "暴怒骑士,骑士,克雷,baonuqishi,kelie,克烈,上单"
    },
    "245": {
        "champion_id": "245",
        "search_string": "艾克,时间刺客,刺客,aike,shijiancike,ekko,中单"
    },
    "246": {
        "champion_id": "246",
        "search_string": "奇亚娜,qiyana,daye,刺客,打野,中单,刺客,Qiyana,元素女皇,呼啦圈,奇亚"
    },
    "254": {
        "champion_id": "254",
        "search_string": "皮城执法官,蔚,The Piltover Enforcer,Vi,拳头,铁拳,pichengzhifaguan,wei,打野"
    },
    "266": {
        "champion_id": "266",
        "search_string": "剑魔,蝙蝠,亚托克斯,暗裔剑魔,Aatrox,anyijianmo,yatuokesi,上单"
    },
    "267": {
        "champion_id": "267",
        "search_string": "唤潮鲛姬,娜美,人鱼,renyu,The Tidecaller,Nami,namei,huanchaojiaoji,辅助,raina"
    },
    "268": {
        "champion_id": "268",
        "search_string": "azier,shamohuangdi,沙漠皇帝,阿兹尔,皇帝,huangdi,shamo,沙漠,脆皮鸡,黄金,huangjin,cuipiji,中单"
    },
    "350": {
        "champion_id": "350",
        "search_string": "悠米,youmi,猫咪,maomi,mao,辅助,猫,Yuumi,yuumi,悠,辅助,魔法猫咪,魔法,小猫咪,悠咪"
    },
    "360": {
        "champion_id": "360",
        "search_string": "莎弥拉,沙漠玫瑰,Samira,刺客,射手,shamila"
    },
    "412": {
        "champion_id": "412",
        "search_string": "魂锁典狱长,锤石,Thresh,chuishi,hunsuodianyuzhang,辅助,"
    },
    "420": {
        "champion_id": "420",
        "search_string": "海兽祭司,俄洛伊,Illaoi,eluoyi,haishoujisi,jisi,上单"
    },
    "421": {
        "champion_id": "421",
        "search_string": "雷克塞,虚空遁地兽,leikesa,虚空遁地,挖掘机,wajueji,xukongdundishou,打野"
    },
    "427": {
        "champion_id": "427",
        "search_string": "森林之友,Ivern,艾翁,树人i,senlinzhiyou,cuishen,树灵,翠神,打野,辅助"
    },
    "429": {
        "champion_id": "429",
        "search_string": "卡莉斯塔,卡莉丝塔,kalisita,复仇之矛,fuchouzhimao,滑板鞋,huabanxie,摩擦,moca,ADC,射手"
    },
    "432": {
        "champion_id": "432",
        "search_string": "巴德,星界,游神,星界游神,bard,xingjieyoushen,bade,辅助,"
    },
    "497": {
        "champion_id": "497",
        "search_string": "洛,幻翎,luo,huanling,Rakan,辅助"
    },
    "498": {
        "champion_id": "498",
        "search_string": "霞,逆羽,xia,niyu,Xayah,ADC,射手"
    },
    "516": {
        "champion_id": "516",
        "search_string": "奥恩,山隐之焰,Ornn,工匠,公羊角,aoen,shanyinzhiyan,gongjiang,gongyangjiao,上路,战士,坦克"
    },
    "517": {
        "champion_id": "517",
        "search_string": "塞拉斯,Sylas,sailasi,jietuozhe,法师,解脱者,中单,塞,塞拉,锁链"
    },
    "518": {
        "champion_id": "518",
        "search_string": "妮蔻,万花通灵wanhuatongling,nikou,尼扣,niko,Neeko,辅助"
    },
    "523": {
        "champion_id": "523",
        "search_string": "残月之肃,厄斐琉斯,残月,Aphelios,ADC,皎月,canyue"
    },
    "526": {
        "champion_id": "526",
        "search_string": "马,镕铁少女,芮尔,ruier,rell,rull,女骑士,qishi"
    },
    "555": {
        "champion_id": "555",
        "search_string": "派克,血港鬼影,Paike,paike,xuegangguiying,辅助"
    },
    "711": {
        "champion_id": "711",
        "search_string": "Vex,薇古丝,熬夜波比,中路,法师,weigusi,薇古,vex,薇,约德尔"
    },
    "777": {
        "champion_id": "777",
        "search_string": "Yone,封魔剑魂,永恩,yongen,上单,上路,疾风"
    },
    "875": {
        "champion_id": "875",
        "search_string": "瑟提,腕豪,残月,Sett,seti,wanhao,上单,上路"
    },
    "876": {
        "champion_id": "876",
        "search_string": "Lillia,莉莉娅,含羞蓓蕾,liliya,中路,法师"
    },
    "887": {
        "champion_id": "887",
        "search_string": "格温,Gwen,灵罗娃娃,刺客,战士"
    },
    "888": {
        "champion_id": "888",
        "search_string": "烈娜塔戈拉斯克,烈娜塔,Renata,法师,辅助,炼金男爵,炼金,男爵,lienata,烈娜,戈拉斯克,烈,娜塔,"
    },
    "895": {
        "champion_id": "895",
        "search_string": "尼菈,Nilah,nila,尼拉,不羁之悦,鞭子,水"
    }
};

PLS.LOLHeroType = {
    "战士": {
        "champion_ids": "2,5,6,10,19,23,24,36,39,41,48,58,62,64,68,72,75,77,79,80,82,83,86,92,102,106,114,120,122,126,131,141,150,157,164,200,240,254,266,420,421,517,777,875,887"
    },
    "法师": {
        "champion_ids": "1,4,8,9,13,25,30,34,43,45,50,60,61,63,69,74,85,90,99,101,103,112,115,127,134,136,142,143,161,163,268,427,518,711,876,888"
    },
    "刺客": {
        "champion_ids": "7,11,28,35,38,55,56,76,84,91,105,107,121,234,238,245,246"
    },
    "坦克": {
        "champion_ids": "3,12,14,20,27,31,32,33,53,54,57,59,78,89,98,111,113,154,516"
    },
    "射手": {
        "champion_ids": "15,17,18,21,22,29,42,51,67,81,96,104,110,119,133,145,166,202,203,221,222,236,360,429,498,523,895"
    },
    "辅助": {
        "champion_ids": "16,26,37,40,44,117,147,201,223,235,267,350,412,432,497,526,555"
    }
};
```

3. 成长属性

```
GET https://wegame.gtimg.com/g.26-r.c2d3c/helper/lol/conf/LOLHeroNewInfo.2f4cec1935d5adc6085f253dd2997c47.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
```

```js
HTTP/1.1 200 OK
Last-Modified: Fri, 23 Sep 2022 01:33:03 GMT
Server: NWS_X2_MID
Date: Tue, 27 Sep 2022 11:51:24 GMT
Expires: Thu, 27 Oct 2022 11:51:24 GMT
Content-Type: application/x-javascript
X-Verify-Code: c7c7ccf07ca4210f89ed69258a17972e
X-Daa-Tunnel: hop_count=1
Cache-Control: max-age=2592000
Age: 186101
Content-Length: 7476
Accept-Ranges: bytes
X-NWS-LOG-UUID: 6191496158906500672
Connection: keep-alive
X-Cache-Lookup: Cache Hit
Access-Control-Allow-Origin: *

window["LOL"] = window["LOL"] || {};
window["LOL"]["LOLHeroNewInfo"] = {
    "21": {
        "champion_id": "21",
        "heroname": "厄运小姐",
        "id": "MissFortune",
        "change_type": "1",
        "data": [
            {
                "type": "basic",
                "description": "成长攻击力：2.7 → 2.4<br>成长生命值：107 → 103",
                "name": "",
                "image": ""
            }
        ]
    },
    "22": {
        "champion_id": "22",
        "heroname": "艾希",
        "id": "Ashe",
        "change_type": "0",
        "data": [
            {
                "type": "spells_q",
                "description": "额外攻速：20/25/30/35/40% → 25/32.5/40/47.5/55%",
                "name": "射手的专注",
                "image": "22_Q.png"
            }
        ]
    },
    "56": {
        "champion_id": "56",
        "heroname": "魔腾",
        "id": "Nocturne",
        "change_type": "1",
        "data": [
            {
                "type": "basic",
                "description": "成长攻击力：3.1 → 2.6",
                "name": "",
                "image": ""
            }
        ]
    },
    "57": {
        "champion_id": "57",
        "heroname": "茂凯",
        "id": "Maokai",
        "change_type": "0",
        "data": [
            {
                "type": "passive",
                "description": "治疗：4.8-14% (基于等级) → 4.5 -12% (基于等级)",
                "name": "吸元秘术",
                "image": "57_P.png"
            },
            {
                "type": "spells_q",
                "description": "对野怪的额外伤害：40/60/80/100/120 → 80/100/120/140/160",
                "name": "荆棘重击",
                "image": "57_Q.png"
            },
            {
                "type": "spells_e",
                "description": "伤害：55/80/105/130/155 (+ 6% 额外生命值) (+ 42.5% 法术强度) → 55/80/105/130/155 (+ 6% 额外生命值) (+ 40% 法术强度)<br>强化伤害：110/160/210/260/310 (+ 12% 额外生命值) (+ 85% 法术强度) → 110/160/210/260/310 (+ 12% 额外生命值) (+ 80% 法术强度)",
                "name": "树苗投掷",
                "image": "57_E.png"
            }
        ]
    },
    "64": {
        "champion_id": "64",
        "heroname": "李青",
        "id": "LeeSin",
        "change_type": "0",
        "data": [
            {
                "type": "basic",
                "description": "成长生命值：99 → 105",
                "name": "",
                "image": ""
            },
            {
                "type": "spells_w",
                "description": "生命偷取和法术吸血：5/9.5/14/18.5/23% → 5/10.5/16/21.5/27%",
                "name": "金钟罩/铁布衫",
                "image": "64_W.png"
            }
        ]
    },
    "77": {
        "champion_id": "77",
        "heroname": "乌迪尔",
        "id": "Udyr",
        "change_type": "0",
        "data": [
            {
                "type": "basic",
                "description": "成长生命值：106 → 98<br>成长护甲：5.2 → 4.7",
                "name": "",
                "image": ""
            },
            {
                "type": "spells_q",
                "description": "法力消耗：45-28 (基于等级) → 20<br>强化后的闪电打击法强收益：+0.6% 每100点法术强度 → +0.8% 每100点法术强度<br>【新增】乌迪尔初始的两次攻击提升50点攻击距离，匹配他觉醒Q的功能性<br>【新增】现在觉醒Q初始的两次攻击造成额外2-5% (基于等级) (+0.03% 额外攻击力) 最大生命值物理伤害",
                "name": "狂暴爪击",
                "image": "77_Q.png"
            },
            {
                "type": "spells_w",
                "description": "百分比治疗： 1.2/1.26/1.32/1.38/1.44/1.5% → 1.2%<br>百分比生命值护盾：2/2.4/2.8/3.2/3.6/4.0% → 2/2.3/2.6/2.8/3.2/3.5%<br>生命偷取：15% → 15/16/17/18/19/20%",
                "name": "坚铁甲胄",
                "image": "77_W.png"
            },
            {
                "type": "spells_r",
                "description": "魔法伤害：20/38/56/74/92/110 (+40% 法术强度) → 20/36/52/68/84/100 (+35% 法术强度)<br>对小兵伤害：50/60/70/80% (于1/6/11/16级) → 40/55/70/85% (于1/6/11/16级)",
                "name": "极凌飓风",
                "image": "77_R.png"
            }
        ]
    },
    "117": {
        "champion_id": "117",
        "heroname": "璐璐",
        "id": "Lulu",
        "change_type": "1",
        "data": [
            {
                "type": "spells_w",
                "description": "移动速度：30% → 25%<br>变形时长：1.25/1.5/1.75/2.0/2.25 → 1.2/1.4/1.6/1.8/2.0秒<br>冷却时间：17/16/15/14/13 → 17/16.5/16/15.5/15秒",
                "name": "奇思妙想",
                "image": "117_W.png"
            }
        ]
    },
    "120": {
        "champion_id": "120",
        "heroname": "赫卡里姆",
        "id": "Hecarim",
        "change_type": "1",
        "data": [
            {
                "type": "basic",
                "description": "基础生命值：650 → 625",
                "name": "",
                "image": ""
            },
            {
                "type": "spells_q",
                "description": "物理伤害的额外攻击力收益率：95% → 90%<br>每层伤害提升：4% (+6%每100额外攻击力) → 4% (+5%每100额外攻击力)",
                "name": "暴走",
                "image": "120_Q.png"
            },
            {
                "type": "spells_w",
                "description": "实际伤害的治疗百分比：30% (+2.5% 每100额外攻击力) → 25% (+2% 每100额外攻击力) (备注：非赫卡里姆造成的伤害的治疗百分比依然减半)",
                "name": "恐惧之灵",
                "image": "120_W.png"
            }
        ]
    },
    "141": {
        "champion_id": "141",
        "heroname": "凯隐",
        "id": "Kayn",
        "change_type": "1",
        "data": [
            {
                "type": "spells_q",
                "description": "暗裔化身伤害：65% 攻击力 (+5% 目标最大生命值 (+5% 每100%额外攻击力)) → 65% 攻击力 (+5% 目标最大生命值 (+3.5% 每100%额外攻击力))",
                "name": "巨镰横扫",
                "image": "141_Q.png"
            }
        ]
    },
    "412": {
        "champion_id": "412",
        "heroname": "锤石",
        "id": "Thresh",
        "change_type": "0",
        "data": [
            {
                "type": "basic",
                "description": "成长生命值：115 → 120",
                "name": "",
                "image": ""
            },
            {
                "type": "spells_e",
                "description": "魔法伤害：65/95/125/155/185 (+40% 法术强度) → 75/110/145/180/215 (+40% 法术强度)",
                "name": "厄运钟摆",
                "image": "412_E.png"
            }
        ]
    },
    "429": {
        "champion_id": "429",
        "heroname": "卡莉丝塔",
        "id": "Kalista",
        "change_type": "1",
        "data": [
            {
                "type": "basic",
                "description": "基础生命值：604 → 574",
                "name": "",
                "image": ""
            }
        ]
    }
};
```

4. 物品

```
GET https://wegame.gtimg.com/g.26-r.c2d3c/helper/lol/conf/item_S6.ea504ac638fa3f2da1e51ef90008cd9f.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7
```

```js
HTTP/1.1 200 OK
Last-Modified: Thu, 22 Sep 2022 04:03:21 GMT
Server: NWS_X2_MID
Date: Tue, 27 Sep 2022 11:51:15 GMT
Expires: Thu, 27 Oct 2022 11:51:15 GMT
Content-Type: application/x-javascript
X-Verify-Code: 55ba79700e7e751aa60ce9e8304c8455
X-Daa-Tunnel: hop_count=1
Cache-Control: max-age=2592000
Age: 186109
Content-Length: 357276
Accept-Ranges: bytes
X-NWS-LOG-UUID: 2851692486889645509
Connection: keep-alive
X-Cache-Lookup: Cache Hit
Access-Control-Allow-Origin: *

window["PLS"] = window["PLS"] || {};
window["PLS"]["LOLitem"] = {
  "data": {
    "1001": {
        "name": "鞋子",
        "description": "<mainText><stats><attention>25</attention>移动速度</stats></mainText><br>",
        "gold": {
            "base": 300,
            "total": 300
        },
        "pic": "",
        "icon": "1001.png"
    },
    "1004": {
        "name": "仙女护符",
        "description": "<mainText><stats><attention>50%</attention>基础法力回复</stats></mainText><br>",
        "gold": {
            "base": 250,
            "total": 250
        },
        "pic": "",
        "icon": "1004.png"
    },
    "1005": {
        "name": "梅吉坠饰",
        "description": "<stats>+0法力回复/5秒</stats>",
        "gold": {
            "base": 390,
            "total": 390
        },
        "pic": "1005.png",
        "icon": "1005.png"
    },
    "1006": {
        "name": "治疗宝珠",
        "description": "<mainText><stats><attention>100%</attention>基础生命回复</stats></mainText><br>",
        "gold": {
            "base": 300,
            "total": 300
        },
        "pic": "",
        "icon": "1006.png"
    },
    "1007": {
        "name": "再生坠饰",
        "description": "<stats>+15生命回复/5秒</stats>",
        "gold": {
            "base": 435,
            "total": 435
        },
        "pic": "1007.png",
        "icon": "1007.png"
    },
    "1011": {
        "name": "巨人腰带",
        "description": "<mainText><stats><attention>350</attention>生命值</stats></mainText><br>",
        "gold": {
            "base": 500,
            "total": 900
        },
        "pic": "",
        "icon": "1011.png"
    },
    "1018": {
        "name": "灵巧披风",
        "description": "<mainText><stats><attention>15%</attention>暴击几率</stats></mainText><br>",
        "gold": {
            "base": 600,
            "total": 600
        },
        "pic": "",
        "icon": "1018.png"
    },
    "1026": {
        "name": "爆裂魔杖",
        "description": "<mainText><stats><attention>40</attention>法术强度</stats></mainText><br>",
        "gold": {
            "base": 850,
            "total": 850
        },
        "pic": "",
        "icon": "1026.png"
    },
    "1027": {
        "name": "蓝水晶",
        "description": "<mainText><stats><attention>250</attention>法力</stats></mainText><br>",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "",
        "icon": "1027.png"
    },
    "1028": {
        "name": "红水晶",
        "description": "<mainText><stats><attention>150</attention>生命值</stats></mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "1028.png"
    },
    "1029": {
        "name": "布甲",
        "description": "<mainText><stats><attention>15</attention>护甲</stats></mainText><br>",
        "gold": {
            "base": 300,
            "total": 300
        },
        "pic": "",
        "icon": "1029.png"
    },
    "1031": {
        "name": "锁子甲",
        "description": "<mainText><stats><attention>40</attention>护甲</stats></mainText><br>",
        "gold": {
            "base": 500,
            "total": 800
        },
        "pic": "",
        "icon": "1031.png"
    },
    "1033": {
        "name": "抗魔斗篷",
        "description": "<mainText><stats><attention>25</attention>魔法抗性</stats></mainText><br>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1033.png"
    },
    "1035": {
        "name": "灰烬小刀",
        "description": "<mainText><stats></stats><li><passive>烙印：</passive>对野怪造成伤害时会持续灼烧它们。<li><passive>挑战之途：</passive>在使用5次【惩戒】后，会将这件装备消耗掉，以将你的【惩戒】升级为<attention>挑战惩戒</attention>并提升它对野怪的伤害。【挑战惩戒】会标记英雄。在此期间，你会对目标英雄造成额外真实伤害并且降低来自目标英雄的伤害。<li><passive>狩猎人：</passive>击杀大型野怪会提供额外经验值。<li><passive>取食于野：</passive>在野区或河道时会回复法力值。<br><br><rules><status>吞噬</status>这件装备时会永久提供它的所有效果并提升【惩戒】对野怪的伤害。如果你从小兵处获得的金币多于你从野怪处获得的金币，那么来自小兵的金币和经验将被大幅降低。群体攻击的治疗效果不会降低。 如果落后于对局内平均英雄等级且等级差达到2级，那么击杀野怪会提供额外经验值。</rules><br><br><rules>只有攻击和技能会施加【挑战惩戒】的灼烧效果。</rules></mainText><br>",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "",
        "icon": "1035.png"
    },
    "1036": {
        "name": "长剑",
        "description": "<mainText><stats><attention>10</attention>攻击力</stats></mainText><br>",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "",
        "icon": "1036.png"
    },
    "1037": {
        "name": "十字镐",
        "description": "<mainText><stats><attention>25</attention>攻击力</stats></mainText><br>",
        "gold": {
            "base": 875,
            "total": 875
        },
        "pic": "",
        "icon": "1037.png"
    },
    "1038": {
        "name": "暴风之剑",
        "description": "<mainText><stats><attention>40</attention>攻击力</stats></mainText><br>",
        "gold": {
            "base": 1300,
            "total": 1300
        },
        "pic": "",
        "icon": "1038.png"
    },
    "1039": {
        "name": "冰雹刀刃",
        "description": "<mainText><stats></stats><li><passive>烙印：</passive>对野怪造成伤害时会持续灼烧它们。<li><passive>深寒之途：</passive>在使用5次【惩戒】后，会将这件装备消耗掉，以将你的【惩戒】升级为<attention>深寒惩戒</attention>并提升它对野怪的伤害。在对英雄使用【深寒惩戒】时会造成真实伤害并偷取目标英雄的移动速度。<li><passive>狩猎人：</passive>击杀大型野怪会提供额外经验值。<li><passive>取食于野：</passive>在野区或河道时会回复法力值。<br><br><rules><status>吞噬</status>这件装备时会永久提供它的所有效果并提升【惩戒】对野怪的伤害。如果你从小兵处获得的金币多于你从野怪处获得的金币，那么来自小兵的金币和经验将被大幅降低。群体攻击的治疗效果不会降低。 如果落后于对局内平均英雄等级且等级差达到2级，那么击杀野怪会提供额外经验值。</rules><br><br></mainText><br>",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "",
        "icon": "1039.png"
    },
    "1040": {
        "name": "黑曜石锋刃",
        "description": "<mainText><stats></stats><li><passive>烙印：</passive>对野怪造成伤害时会持续灼烧它们。<li><passive>普攻之途：</passive>在使用5次【惩戒】后，会将这件装备消耗掉，以将你的【惩戒】升级为【普攻惩戒】并提升它对野怪的伤害。<li><passive>狩猎人：</passive>击杀大型野怪会提供额外经验值。<li><passive>取食于野：</passive>在野区或河道时会回复法力值。<br><br><rules><status>吞噬</status>这件装备时会永久提供它的所有效果并提升【惩戒】对野怪的伤害。如果你从小兵处获得的金币多于你从野怪处获得的金币，那么来自小兵的金币和经验将被大幅降低。群体攻击的治疗效果不会降低。 如果落后于对局内平均英雄等级且等级差达到2级，那么击杀野怪会提供额外经验值。</rules></mainText><br>",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "",
        "icon": "1040.png"
    },
    "1041": {
        "name": "猎人的宽刃刀",
        "description": "<stats>对野怪+10%生命偷取</stats><br><br><unique>唯一被动—利爪：</unique>对野怪发起的普攻会附带35额外伤害。这个装备会提供<font color='#99BBBB'>怪物猎手</font>。在生命值低于30%时，这个装备的治疗效果将提升50%。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "1041.png",
        "icon": "1041.png"
    },
    "1042": {
        "name": "短剑",
        "description": "<mainText><stats><attention>12%</attention>攻击速度</stats></mainText><br>",
        "gold": {
            "base": 300,
            "total": 300
        },
        "pic": "",
        "icon": "1042.png"
    },
    "1043": {
        "name": "反曲之弓",
        "description": "<mainText><stats><attention>25%</attention>攻击速度</stats><br><li><passive>镶钢：</passive>攻击附带物理伤害。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 1000
        },
        "pic": "",
        "icon": "1043.png"
    },
    "1051": {
        "name": "格斗手套",
        "description": "<stats>+10%暴击几率</stats>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "1051_brawlers_gloves.png",
        "icon": "1051.png"
    },
    "1052": {
        "name": "增幅典籍",
        "description": "<mainText><stats><attention>20</attention>法术强度</stats></mainText><br>",
        "gold": {
            "base": 435,
            "total": 435
        },
        "pic": "",
        "icon": "1052.png"
    },
    "1053": {
        "name": "吸血鬼节杖",
        "description": "<mainText><stats><attention>15</attention>攻击力<br><attention>7%</attention>生命偷取</stats></mainText><br>",
        "gold": {
            "base": 550,
            "total": 900
        },
        "pic": "",
        "icon": "1053.png"
    },
    "1054": {
        "name": "多兰之盾",
        "description": "<mainText><stats><attention>80</attention>生命值</stats><br><li><passive>专注：</passive>攻击对小兵会附带额外伤害。<li><passive>复原力：</passive>持续回复生命值。<li><passive>耐久：</passive>在受到来自一名敌方英雄、大型野怪或史诗级野怪的伤害后，回复生命值。回复额会在你生命值较低时提升。<br><br><rules>被远程英雄持有时，或受到群体伤害或周期型伤害时，<passive>耐久</passive>的效能为66%。</rules></mainText><br>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1054.png"
    },
    "1055": {
        "name": "多兰之刃",
        "description": "<mainText><stats><attention>8</attention>攻击力<br><attention>80</attention>生命值</stats><br><li><passive>好战者：</passive>获得全能吸血。<br><br><rules>在造成群体伤害或通过宠物造成伤害时，全能吸血只有33%效能。</rules></mainText><br>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1055.png"
    },
    "1056": {
        "name": "多兰之戒",
        "description": "<mainText><stats><attention>15</attention>法术强度<br><attention>70</attention>生命值</stats><br><li><passive>专注：</passive>攻击对小兵附带额外伤害。<li><passive>汲取：</passive>每秒回复法力值。对一名敌方英雄造成伤害时，会提升法力回复数额。如果你无法回复法力值，那么会回复生命值作为替代。 </mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "1056.png"
    },
    "1057": {
        "name": "负极斗篷",
        "description": "<mainText><stats><attention>50</attention>魔法抗性</stats></mainText><br>",
        "gold": {
            "base": 450,
            "total": 900
        },
        "pic": "",
        "icon": "1057.png"
    },
    "1058": {
        "name": "无用大棒",
        "description": "<mainText><stats><attention>60</attention>法术强度</stats></mainText><br>",
        "gold": {
            "base": 1250,
            "total": 1250
        },
        "pic": "",
        "icon": "1058.png"
    },
    "1059": {
        "name": "太空吸血鬼节杖",
        "description": "<stats>+15攻击力<br>+2.5%生命偷取</stats>",
        "gold": {
            "base": 550,
            "total": 900
        },
        "pic": "",
        "icon": "1059.png"
    },
    "1062": {
        "name": "勘探者之刃",
        "description": "<stats>+16攻击力<br>+15%攻击速度</stats><br><br><unique>唯一被动—勘探者：</unique>+150生命值",
        "gold": {
            "base": 950,
            "total": 950
        },
        "pic": "1062_prospectorsblade.png",
        "icon": "1062.png"
    },
    "1063": {
        "name": "勘探者之戒",
        "description": "<stats>+35法术强度</stats><br><br><passive>被动：</passive><mana>+6法力回复</mana><br><br><unique>唯一被动—勘探者：</unique>+150生命值",
        "gold": {
            "base": 950,
            "total": 950
        },
        "pic": "1063_prospectorsring2.png",
        "icon": "1063.png"
    },
    "1065": {
        "name": "game_item_displayname_1065",
        "description": "game_item_description_1065",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1065.png"
    },
    "1066": {
        "name": "game_item_displayname_1066",
        "description": "game_item_description_1066",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1066.png"
    },
    "1067": {
        "name": "game_item_displayname_1067",
        "description": "game_item_description_1067",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1067.png"
    },
    "1070": {
        "name": "game_item_displayname_1070",
        "description": "game_item_description_1070",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1070.png"
    },
    "1080": {
        "name": "精魄之石",
        "description": "<br><br><unique>唯一被动—屠夫：</unique>对野怪造成的伤害提升20%，并且对野怪造成的伤害值的6%将用来恢复自身的生命值，4%将用来恢复自身的法力值（群伤技能的恢复效果减半）。<br><br><i>（同名的唯一被动效果或主动效果不叠加。）</i>",
        "gold": {
            "base": 15,
            "total": 640
        },
        "pic": "1080_souleater.png",
        "icon": "1080.png"
    },
    "1082": {
        "name": "黑暗封印",
        "description": "<mainText><stats><attention>15</attention>法术强度<br><attention>40</attention>生命值</stats><br><li><passive>荣耀：</passive>每次击杀提供2层，每次助攻提供1层(至多可达10层)。每次死亡损失5层。<li><passive>畏惧：</passive>每层<passive>荣耀</passive>提供<scaleAP>4法术强度</scaleAP>。<br><br><rules>已获得的<passive>荣耀</passive>层数可在这件装备和<rarityLegendary>梅贾的窃魂卷</rarityLegendary>之间保存。</rules></mainText><br>",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "",
        "icon": "1082.png"
    },
    "1083": {
        "name": "萃取",
        "description": "<mainText><stats><attention>7</attention>攻击力</stats><br><li>攻击时每一击都会回复生命值。<li><passive>收割：</passive>击杀1个线上小兵时提供<goldGain>1</goldGain>额外金币。击杀100个线上小兵时会立刻提供额外的<goldGain>350</goldGain>额外金币，并使<passive>收割</passive>失效。<br></mainText><br>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "1083.png"
    },
    "1300": {
        "name": "附魔：喧哗",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【喧哗】的加成。<br><br><unique>唯一被动—喧哗：</unique>每当你通过攻击或者技能对一个单体目标造成伤害时，你都会获得12%的移动速度加成，这个加速效果会在2秒里持续衰减。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3006_berserkers_greaves_c.png",
        "icon": "1300.png"
    },
    "1301": {
        "name": "附魔：欢欣",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【欢欣】的加成。<br><br><unique>唯一被动—欢欣：</unique>你获得+20移动速度。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3006_berserkers_greaves_e.png",
        "icon": "1301.png"
    },
    "1302": {
        "name": "附魔：统帅",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【统帅】的加成。<br><br><unique>唯一被动—统帅：</unique>正在朝着你奔跑的友军英雄会获得10%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3006_berserkers_greaves_b.png",
        "icon": "1302.png"
    },
    "1303": {
        "name": "附魔：失真",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【失真】的加成。<br><br><unique>唯一被动—失真：</unique>传送、闪现和幽灵疾步这三个召唤师技能会减少15%的冷却时间，并获得额外的机动能力：<br><br><font color='#FFDD00'>幽灵疾步：</font>移动速度加成从27%提升至40%。<br><font color='#FFDD00'>闪现：</font>在施法后的1秒里，拥有20%的移动速度加成。<br><font color='#FFDD00'>传送：</font>在使用后的3秒里，拥有30%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3006_berserkers_greaves_d.png",
        "icon": "1303.png"
    },
    "1304": {
        "name": "附魔：家园卫士",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【家园卫士】的加成。<br><br><unique>唯一被动—家园卫士：</unique>在你访问商店时，你的生命回复和法力回复会得到极大提升，且获得200%的移动速度加成，该移动速度加成会在8秒里持续衰减。在造成或受到伤害时，移动速度加成和回复加成会失效6秒。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3006_berserkers_greaves_a.png",
        "icon": "1304.png"
    },
    "1305": {
        "name": "附魔：喧哗",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【喧哗】的加成。<br><br><unique>唯一被动—喧哗：</unique>每当你通过攻击或者技能对一个单体目标造成伤害时，你都会获得12%的移动速度加成，这个加速效果会在2秒里持续衰减。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3009_boots_of_teleportation_c.png",
        "icon": "1305.png"
    },
    "1306": {
        "name": "附魔：欢欣",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【欢欣】的加成。<br><br><unique>唯一被动—欢欣：</unique>你获得+20移动速度。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3009_boots_of_teleportation_e.png",
        "icon": "1306.png"
    },
    "1307": {
        "name": "附魔：统帅",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【统帅】的加成。<br><br><unique>唯一被动—统帅：</unique>正在朝着你奔跑的友军英雄会获得10%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3009_boots_of_teleportation_b.png",
        "icon": "1307.png"
    },
    "1308": {
        "name": "附魔：失真",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【失真】的加成。<br><br><unique>唯一被动—失真：</unique>传送、闪现和幽灵疾步这三个召唤师技能会减少15%的冷却时间，并获得额外的机动能力：<br><br><font color='#FFDD00'>幽灵疾步：</font>移动速度加成从27%提升至40%。<br><font color='#FFDD00'>闪现：</font>在施法后的1秒里，拥有20%的移动速度加成。<br><font color='#FFDD00'>传送：</font>在使用后的3秒里，拥有30%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3009_boots_of_teleportation_d.png",
        "icon": "1308.png"
    },
    "1309": {
        "name": "附魔：家园卫士",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【家园卫士】的加成。<br><br><unique>唯一被动—家园卫士：</unique>在你访问商店时，你的生命回复和法力回复会得到极大提升，且获得200%的移动速度加成，该移动速度加成会在8秒里持续衰减。在造成或受到伤害时，移动速度加成和回复加成会失效6秒。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3009_boots_of_teleportation_a.png",
        "icon": "1309.png"
    },
    "1310": {
        "name": "附魔：喧哗",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【喧哗】的加成。<br><br><unique>唯一被动—喧哗：</unique>每当你通过攻击或者技能对一个单体目标造成伤害时，你都会获得12%的移动速度加成，这个加速效果会在2秒里持续衰减。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3020_flamewalkers_c.png",
        "icon": "1310.png"
    },
    "1311": {
        "name": "附魔：欢欣",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【欢欣】的加成。<br><br><unique>唯一被动—欢欣：</unique>你获得+20移动速度。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3020_flamewalkers_e.png",
        "icon": "1311.png"
    },
    "1312": {
        "name": "附魔：统帅",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【统帅】的加成。<br><br><unique>唯一被动—统帅：</unique>正在朝着你奔跑的友军英雄会获得10%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3020_flamewalkers_b.png",
        "icon": "1312.png"
    },
    "1313": {
        "name": "附魔：失真",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【失真】的加成。<br><br><unique>唯一被动—失真：</unique>传送、闪现和幽灵疾步这三个召唤师技能会减少15%的冷却时间，并获得额外的机动能力：<br><br><font color='#FFDD00'>幽灵疾步：</font>移动速度加成从27%提升至40%。<br><font color='#FFDD00'>闪现：</font>在施法后的1秒里，拥有20%的移动速度加成。<br><font color='#FFDD00'>传送：</font>在使用后的3秒里，拥有30%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3020_flamewalkers_d.png",
        "icon": "1313.png"
    },
    "1314": {
        "name": "附魔：家园卫士",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【家园卫士】的加成。<br><br><unique>唯一被动—家园卫士：</unique>在你访问商店时，你的生命回复和法力回复会得到极大提升，且获得200%的移动速度加成，该移动速度加成会在8秒里持续衰减。在造成或受到伤害时，移动速度加成和回复加成会失效6秒。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3020_flamewalkers_a.png",
        "icon": "1314.png"
    },
    "1315": {
        "name": "game_item_displayname_1315",
        "description": "game_item_description_1315",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3047_phase_striders_c.png",
        "icon": "1315.png"
    },
    "1316": {
        "name": "game_item_displayname_1316",
        "description": "game_item_description_1316",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3047_phase_striders_e.png",
        "icon": "1316.png"
    },
    "1317": {
        "name": "game_item_displayname_1317",
        "description": "game_item_description_1317",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3047_phase_striders_b.png",
        "icon": "1317.png"
    },
    "1318": {
        "name": "game_item_displayname_1318",
        "description": "game_item_description_1318",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3047_phase_striders_d.png",
        "icon": "1318.png"
    },
    "1319": {
        "name": "game_item_displayname_1319",
        "description": "game_item_description_1319",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3047_phase_striders_a.png",
        "icon": "1319.png"
    },
    "1320": {
        "name": "附魔：喧哗",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【喧哗】的加成。<br><br><unique>唯一被动—喧哗：</unique>每当你通过攻击或者技能对一个单体目标造成伤害时，你都会获得12%的移动速度加成，这个加速效果会在2秒里持续衰减。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3008_boots_of_swiftness_c.png",
        "icon": "1320.png"
    },
    "1321": {
        "name": "附魔：欢欣",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【欢欣】的加成。<br><br><unique>唯一被动—欢欣：</unique>你获得+20移动速度。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3008_boots_of_swiftness_e.png",
        "icon": "1321.png"
    },
    "1322": {
        "name": "附魔：统帅",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【统帅】的加成。<br><br><unique>唯一被动—统帅：</unique>正在朝着你奔跑的友军英雄会获得10%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3008_boots_of_swiftness_b.png",
        "icon": "1322.png"
    },
    "1323": {
        "name": "附魔：失真",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【失真】的加成。<br><br><unique>唯一被动—失真：</unique>传送、闪现和幽灵疾步这三个召唤师技能会减少15%的冷却时间，并获得额外的机动能力：<br><br><font color='#FFDD00'>幽灵疾步：</font>移动速度加成从27%提升至40%。<br><font color='#FFDD00'>闪现：</font>在施法后的1秒里，拥有20%的移动速度加成。<br><font color='#FFDD00'>传送：</font>在使用后的3秒里，拥有30%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3008_boots_of_swiftness_d.png",
        "icon": "1323.png"
    },
    "1324": {
        "name": "附魔：家园卫士",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【家园卫士】的加成。<br><br><unique>唯一被动—家园卫士：</unique>在你访问商店时，你的生命回复和法力回复会得到极大提升，且获得200%的移动速度加成，该移动速度加成会在8秒里持续衰减。在造成或受到伤害时，移动速度加成和回复加成会失效6秒。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1550
        },
        "pic": "3008_boots_of_swiftness_a.png",
        "icon": "1324.png"
    },
    "1325": {
        "name": "附魔：喧哗",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【喧哗】的加成。<br><br><unique>唯一被动—喧哗：</unique>每当你通过攻击或者技能对一个单体目标造成伤害时，你都会获得12%的移动速度加成，这个加速效果会在2秒里持续衰减。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1450
        },
        "pic": "3004_assault_treads_c.png",
        "icon": "1325.png"
    },
    "1326": {
        "name": "附魔：欢欣",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【欢欣】的加成。<br><br><unique>唯一被动—欢欣：</unique>你获得+20移动速度。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1450
        },
        "pic": "3004_assault_treads_e.png",
        "icon": "1326.png"
    },
    "1327": {
        "name": "附魔：统帅",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【统帅】的加成。<br><br><unique>唯一被动—统帅：</unique>正在朝着你奔跑的友军英雄会获得10%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1450
        },
        "pic": "3004_assault_treads_b.png",
        "icon": "1327.png"
    },
    "1328": {
        "name": "附魔：失真",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【失真】的加成。<br><br><unique>唯一被动—失真：</unique>传送、闪现和幽灵疾步这三个召唤师技能会减少15%的冷却时间，并获得额外的机动能力：<br><br><font color='#FFDD00'>幽灵疾步：</font>移动速度加成从27%提升至40%。<br><font color='#FFDD00'>闪现：</font>在施法后的1秒里，拥有20%的移动速度加成。<br><font color='#FFDD00'>传送：</font>在使用后的3秒里，拥有30%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1450
        },
        "pic": "3004_assault_treads_d.png",
        "icon": "1328.png"
    },
    "1329": {
        "name": "附魔：家园卫士",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【家园卫士】的加成。<br><br><unique>唯一被动—家园卫士：</unique>在你访问商店时，你的生命回复和法力回复会得到极大提升，且获得200%的移动速度加成，该移动速度加成会在8秒里持续衰减。在造成或受到伤害时，移动速度加成和回复加成会失效6秒。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1450
        },
        "pic": "3004_assault_treads_a.png",
        "icon": "1329.png"
    },
    "1330": {
        "name": "附魔：喧哗",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【喧哗】的加成。<br><br><unique>唯一被动—喧哗：</unique>每当你通过攻击或者技能对一个单体目标造成伤害时，你都会获得12%的移动速度加成，这个加速效果会在2秒里持续衰减。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3158_ionian_boots_of_lucidity_c.png",
        "icon": "1330.png"
    },
    "1331": {
        "name": "附魔：欢欣",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【欢欣】的加成。<br><br><unique>唯一被动—欢欣：</unique>你获得+20移动速度。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3158_ionian_boots_of_lucidity_e.png",
        "icon": "1331.png"
    },
    "1332": {
        "name": "附魔：统帅",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【统帅】的加成。<br><br><unique>唯一被动—统帅：</unique>正在朝着你奔跑的友军英雄会获得10%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3158_ionian_boots_of_lucidity_b.png",
        "icon": "1332.png"
    },
    "1333": {
        "name": "附魔：失真",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【失真】的加成。<br><br><unique>唯一被动—失真：</unique>传送、闪现和幽灵疾步这三个召唤师技能会减少15%的冷却时间，并获得额外的机动能力：<br><br><font color='#FFDD00'>幽灵疾步：</font>移动速度加成从27%提升至40%。<br><font color='#FFDD00'>闪现：</font>在施法后的1秒里，拥有20%的移动速度加成。<br><font color='#FFDD00'>传送：</font>在使用后的3秒里，拥有30%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3158_ionian_boots_of_lucidity_d.png",
        "icon": "1333.png"
    },
    "1334": {
        "name": "附魔：家园卫士",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【家园卫士】的加成。<br><br><unique>唯一被动—家园卫士：</unique>在你访问商店时，你的生命回复和法力回复会得到极大提升，且获得200%的移动速度加成，该移动速度加成会在8秒里持续衰减。在造成或受到伤害时，移动速度加成和回复加成会失效6秒。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 1350
        },
        "pic": "3158_ionian_boots_of_lucidity_a.png",
        "icon": "1334.png"
    },
    "1400": {
        "name": "附魔：战士",
        "description": "<stats>+60攻击力<br>+10%冷却缩减</stats><br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 525,
            "total": 2625
        },
        "pic": "1400.png",
        "icon": "1400.png"
    },
    "1401": {
        "name": "附魔：熔渣巨人",
        "description": "<stats>+300生命值<br>+15%额外生命值</stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒灼烧附近的敌人造成<scaleLevel>[12到29]</scaleLevel>魔法伤害。每过12秒，你的下一个定身技能造成<scaleLevel>[12到29]</scaleLevel><scaleHealth>(+你3%的额外生命值)</scaleHealth>额外魔法伤害，并释放一次火焰新星，在你周围的区域造成该额外伤害。【献祭】对小兵和野怪的伤害会提升300%。<br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 600,
            "total": 2500
        },
        "pic": "1401.png",
        "icon": "1401.png"
    },
    "1402": {
        "name": "附魔：符能回声",
        "description": "<stats>+80法术强度<br>+10%冷却缩减<br><mana>+300法力</mana></stats><br><br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下一个伤害型技能会将充能数全部释放，对最多4个目标造成60(+10%法术强度)魔法伤害。<br><br>这个效果会对大型野怪造成250%伤害。用这个效果命中一个大型野怪的同时，会为你回复25%的已损失法力值。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 250,
            "total": 2500
        },
        "pic": "1402.png",
        "icon": "1402.png"
    },
    "1404": {
        "name": "附魔：战士",
        "description": "<stats>+60攻击力<br>+10%冷却缩减</stats>",
        "gold": {
            "base": 525,
            "total": 2675
        },
        "pic": "1404.png",
        "icon": "1404.png"
    },
    "1405": {
        "name": "附魔：熔渣巨人",
        "description": "<stats>+400生命值<br>+15%额外生命值</stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒对附近的敌人造成7(+2x英雄等级)魔法伤害。对野怪造成100%额外伤害。",
        "gold": {
            "base": 525,
            "total": 2475
        },
        "pic": "1405.png",
        "icon": "1405.png"
    },
    "1406": {
        "name": "附魔：符能回声",
        "description": "<stats>+60法术强度<br>+7%移动速度</stats><br><br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下个伤害型技能会将充能数全部释放，对最多4个目标造成60(+10%法术强度)魔法伤害。<br><br>这个效果会对大型野怪造成250%伤害。用这个效果命中一个大型野怪的同时，会为你回复18%的已损失法力值。",
        "gold": {
            "base": 340,
            "total": 2675
        },
        "pic": "1406.png",
        "icon": "1406.png"
    },
    "1408": {
        "name": "附魔：战士",
        "description": "<stats>+60攻击力<br>+10%冷却缩减</stats>",
        "gold": {
            "base": 525,
            "total": 2625
        },
        "pic": "1408.png",
        "icon": "1408.png"
    },
    "1409": {
        "name": "附魔：熔渣巨人",
        "description": "<stats>+300生命值<br>+20%额外生命值</stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒对附近的敌人造成11(+1x英雄等级)魔法伤害。对小兵和野怪造成200%额外伤害。",
        "gold": {
            "base": 600,
            "total": 2500
        },
        "pic": "1409.png",
        "icon": "1409.png"
    },
    "1410": {
        "name": "附魔：符能回声",
        "description": "<stats>+60法术强度<br>+7%移动速度</stats><br><br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下一个伤害型技能会将充能数全部释放，对最多4个目标造成60(+10%法术强度)魔法伤害。这个效果会对大型野怪造成250%伤害。用这个效果命中一个大型野怪的同时，会为你回复25%的已损失法力值。",
        "gold": {
            "base": 340,
            "total": 2625
        },
        "pic": "1410.png",
        "icon": "1410.png"
    },
    "1412": {
        "name": "附魔：战士",
        "description": "<stats>+60攻击力<br>+10%冷却缩减</stats><br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 525,
            "total": 2625
        },
        "pic": "1412.png",
        "icon": "1412.png"
    },
    "1413": {
        "name": "附魔：熔渣巨人",
        "description": "<stats>+300生命值<br>+15%额外生命值</stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒灼烧附近的敌人造成<scaleLevel>[12到29]</scaleLevel>魔法伤害。每过12秒，你的下一个定身技能造成<scaleLevel>[12到29]</scaleLevel><scaleHealth>(+你3%的额外生命值)</scaleHealth>额外魔法伤害，并释放一次火焰新星，在你周围的区域造成该额外伤害。【献祭】对小兵和野怪的伤害会提升300%。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 600,
            "total": 2500
        },
        "pic": "1413.png",
        "icon": "1413.png"
    },
    "1414": {
        "name": "附魔：符能回声",
        "description": "<stats>+80法术强度<br>+10%冷却缩减<br><mana>+300法力</mana></stats><br><br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下个伤害型技能会将充能数全部释放，对最多4个目标造成60(+10%法术强度)魔法伤害。<br><br>这个效果会对大型野怪造成250%伤害。用这个效果命中一个大型野怪的同时，会为你回复25%的已损失法力值。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 250,
            "total": 2500
        },
        "pic": "1414.png",
        "icon": "1414.png"
    },
    "1416": {
        "name": "附魔：血刃",
        "description": "<stats>+50%攻击速度</stats><br><br><unique>唯一被动：</unique>普攻会在命中时造成目标4%最大生命值的额外物理伤害（对野怪和小兵的最大伤害：75）。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 625,
            "total": 2625
        },
        "pic": "1416.png",
        "icon": "1416.png"
    },
    "1417": {
        "name": "附魔：血刃",
        "description": "<stats>+50%攻击速度</stats><br><br><unique>唯一被动：</unique>普攻会在命中时造成目标4%最大生命值的额外物理伤害（对野怪和小兵的最大伤害：75）。",
        "gold": {
            "base": 625,
            "total": 2675
        },
        "pic": "1417.png",
        "icon": "1417.png"
    },
    "1418": {
        "name": "附魔：血刃",
        "description": "<stats>+50%攻击速度</stats><br><br><unique>唯一被动：</unique>普攻会在命中时造成目标4%最大生命值的额外物理伤害（对野怪和小兵的最大伤害：75）。",
        "gold": {
            "base": 625,
            "total": 2625
        },
        "pic": "1418.png",
        "icon": "1418.png"
    },
    "1419": {
        "name": "附魔：血刃",
        "description": "<stats>+50%攻击速度</stats><br><br><unique>唯一被动：</unique>普攻会在命中时造成目标4%最大生命值的额外物理伤害（对野怪和小兵的最大伤害：75）。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 625,
            "total": 2625
        },
        "pic": "1419.png",
        "icon": "1419.png"
    },
    "1500": {
        "name": "穿透型子弹",
        "description": "GeneratedTip_Item_1500_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1500.png"
    },
    "1501": {
        "name": "钢铁防线",
        "description": "GeneratedTip_Item_1501_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1501.png"
    },
    "1502": {
        "name": "加固城防",
        "description": "<mainText><stats></stats><unique>唯一被动—加固城防：</unique>附近没有敌方小兵时，吸收即将到来的0%伤害并免疫真实伤害。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1502.png"
    },
    "1503": {
        "name": "典狱官之眼",
        "description": "GeneratedTip_Item_1503_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1503.png"
    },
    "1504": {
        "name": "前卫",
        "description": "GeneratedTip_Item_1504_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1504.png"
    },
    "1505": {
        "name": "闪电杖",
        "description": "GeneratedTip_Item_1505_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1505.png"
    },
    "1506": {
        "name": "加固城防",
        "description": "<mainText><stats></stats><unique>唯一被动—加固城防：</unique>附近没有敌方小兵时，减少0%即将到来的伤害并免疫真实伤害。基础防御塔拥有生命回复，但回复上限不会超过它们目前的生命值节点。基础防御塔拥有3个生命值节点：33%，66%和100%。 </mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1506.png"
    },
    "1507": {
        "name": "过载",
        "description": "GeneratedTip_Item_1507_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1507.png"
    },
    "1508": {
        "name": "反防御塔袜子",
        "description": "GeneratedTip_Item_1508_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1508.png"
    },
    "1509": {
        "name": "嗜好",
        "description": "GeneratedTip_Item_1509_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1509.png"
    },
    "1510": {
        "name": "弗瑞克风格的嗜好",
        "description": "GeneratedTip_Item_1510_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1510.png"
    },
    "1511": {
        "name": "超级士兵 装甲",
        "description": "GeneratedTip_Item_1511_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1511.png"
    },
    "1512": {
        "name": "超级士兵 能量场",
        "description": "GeneratedTip_Item_1512_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1512.png"
    },
    "1515": {
        "name": "防御塔镀层",
        "description": "GeneratedTip_Item_1515_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1515.png"
    },
    "1516": {
        "name": "建筑物赏金",
        "description": "GeneratedTip_Item_1516_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1516.png"
    },
    "1517": {
        "name": "建筑物赏金",
        "description": "GeneratedTip_Item_1516_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1517.png"
    },
    "1518": {
        "name": "建筑物赏金",
        "description": "GeneratedTip_Item_1516_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1518.png"
    },
    "1519": {
        "name": "建筑物赏金",
        "description": "GeneratedTip_Item_1516_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "1519.png"
    },
    "2001": {
        "name": "回城",
        "description": "GeneratedTip_Item_2001_ExternalDescription",
        "gold": {
            "base": 60,
            "total": 60
        },
        "pic": "",
        "icon": "2001.png"
    },
    "2003": {
        "name": "生命药水",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>饮用药水，以在15秒里持续回复共<healing>120生命值</healing>。<br><br><rules>你最多可携带5瓶生命药水。</rules></mainText><br>",
        "gold": {
            "base": 50,
            "total": 50
        },
        "pic": "",
        "icon": "2003.png"
    },
    "2004": {
        "name": "法力药水",
        "description": "<groupLimit>限持5瓶。</groupLimit><br><br><consumable>点击使用：</consumable><mana>15秒内回复100法力值。</mana>",
        "gold": {
            "base": 30,
            "total": 30
        },
        "pic": "",
        "icon": "2004.png"
    },
    "2006": {
        "name": "大对决版生命药水",
        "description": "<groupLimit>限持2瓶。限持1种生命药水。</groupLimit><br><br><consumable>点击饮用：</consumable>在15秒里持续回复共150生命值。",
        "gold": {
            "base": 50,
            "total": 50
        },
        "pic": "",
        "icon": "2006.png"
    },
    "2007": {
        "name": "",
        "description": "GeneratedTip_Item_2007_ExternalDescription",
        "gold": {
            "base": 60,
            "total": 60
        },
        "pic": "",
        "icon": "2007.png"
    },
    "2008": {
        "name": "",
        "description": "GeneratedTip_Item_2008_ExternalDescription",
        "gold": {
            "base": 60,
            "total": 60
        },
        "pic": "",
        "icon": "2008.png"
    },
    "2009": {
        "name": "活力夹心饼干",
        "description": "<consumable>点击使用：</consumable>10秒内回复80生命值和50法力值。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "2009.png",
        "icon": "2009.png"
    },
    "2010": {
        "name": "永续意志夹心饼干",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>食用饼干，以在5秒里持续回复共<healing>8%的已损失生命值</healing>和<scaleMana>法力值</scaleMana>。消耗或出售一块饼干，都会永久提供<scaleMana>40最大法力值</scaleMana>。 </mainText><br>",
        "gold": {
            "base": 50,
            "total": 50
        },
        "pic": "",
        "icon": "2010.png"
    },
    "2011": {
        "name": "技能合剂",
        "description": "<consumable>点击饮用：</consumable>提供<font color='29E3D6'>+1技能点数</font>。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "2011.png"
    },
    "2012": {
        "name": "夺来的饼干",
        "description": "<consumable>点击使用：</consumable>在15秒里持续回复共15%的已损失生命值和已损失法力值。",
        "gold": {
            "base": 75,
            "total": 75
        },
        "pic": "",
        "icon": "2012.png"
    },
    "2013": {
        "name": "夺来的神谕精粹",
        "description": "<consumable>点击使用：</consumable>提供侦测能力，可侦测出附近的隐形或未被看见的敌方单位，持续15到40秒，基于等级。",
        "gold": {
            "base": 60,
            "total": 60
        },
        "pic": "",
        "icon": "2013.png"
    },
    "2015": {
        "name": "基舍艾斯碎片",
        "description": "<mainText><stats><attention>15%</attention>攻击速度</stats><br><li><passive>盈能：</passive>移动和攻击将生成一次【盈能】攻击。<li><passive>突震：</passive>盈能攻击会造成额外的魔法伤害。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 700
        },
        "pic": "",
        "icon": "2015.png"
    },
    "2031": {
        "name": "复用型药水",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>消耗一层充能，以在12秒里持续回复共<healing>100生命值</healing>。最多可持有2层充能，并且每当你造访商店时，都会将充能数填满。</mainText><br>",
        "gold": {
            "base": 150,
            "total": 150
        },
        "pic": "",
        "icon": "2031.png"
    },
    "2032": {
        "name": "猎人药水",
        "description": "<groupLimit>限持1种生命药水。</groupLimit><br><br><active>唯一主动：</active>消耗一层充能，以在8秒里持续回复共60生命值和35法力值。最多可持有5层充能，并且每当你造访商店时，都会将充能数填满。<br><br>击杀一个大型野怪会提供一层充能。<br><br><rules>(在充能已满时击杀一个大型野怪，会自动消耗掉最新的充能。)</rules>",
        "gold": {
            "base": 250,
            "total": 400
        },
        "pic": "",
        "icon": "2032.png"
    },
    "2033": {
        "name": "腐败药水",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>消耗一层充能，以在12秒里持续回复共<healing>100生命值</healing>和<scaleMana>75法力值</scaleMana>。在此期间，伤害型技能和攻击会灼烧敌方英雄，在3秒里持续造成共<magicDamage>15(如果你无法回复法力值，则为20)魔法伤害</magicDamage>。至多可持有3层充能并会在访问商店时填满。<br><br><rules>如果由群体伤害或周期性伤害触发，那么腐败伤害降低至50%。</rules></mainText><br>",
        "gold": {
            "base": 350,
            "total": 500
        },
        "pic": "",
        "icon": "2033.png"
    },
    "2037": {
        "name": "坚韧合剂",
        "description": "<consumable>点击饮用：</consumable>提供+120—235生命值（基于英雄等级），和15攻击力，持续3分钟。装备栏已满后购买将自动饮用。",
        "gold": {
            "base": 350,
            "total": 350
        },
        "pic": "",
        "icon": "2037.png"
    },
    "2038": {
        "name": "灵巧合剂",
        "description": "<consumable>点击饮用：</consumable>增加15—24%攻击速度（基于英雄等级），和8%暴击几率，持续3分钟。装备栏已满后购买将自动饮用。",
        "gold": {
            "base": 250,
            "total": 250
        },
        "pic": "",
        "icon": "2038.png"
    },
    "2039": {
        "name": "智慧合剂",
        "description": "<consumable>点击饮用：</consumable>提供+25-40法术强度（基于英雄等级），以及+10%冷却缩减，持续3分钟。装备栏已满后购买将自动饮用。",
        "gold": {
            "base": 250,
            "total": 250
        },
        "pic": "",
        "icon": "2039.png"
    },
    "2040": {
        "name": "狂怒灵药",
        "description": "<consumable>点击饮用：</consumable>提供+20—40攻击力（基于英雄等级），+20—40%攻击速度（基于英雄等级），并且对防御塔的伤害提升15%，持续3分钟。装备栏已满后购买将自动饮用。",
        "gold": {
            "base": 500,
            "total": 500
        },
        "pic": "",
        "icon": "2040.png"
    },
    "2041": {
        "name": "水晶瓶",
        "description": "<unique>唯一被动：</unique>一开始有3个充能数，并且每当你靠近商店时，都会重新将充能数补满。<br><active>唯一主动：</active>消耗一个充能数，以在12秒里持续地回复共120生命值和60法力值。",
        "gold": {
            "base": 345,
            "total": 345
        },
        "pic": "",
        "icon": "2041.png"
    },
    "2042": {
        "name": "先知药剂",
        "description": "<consumable>点击饮用：</consumable>你的英雄将拥有侦测身边隐形单位的能力，最多持续4分钟。装备栏已满后购买将自动饮用。<br><br><rules>（用这种方式侦测到敌方守卫的话，会在该敌方守卫被摧毁时获得一部分金钱奖励。）</rules>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "2042.png"
    },
    "2043": {
        "name": "真视守卫",
        "description": "<groupLimit>装备栏中只能携带2个真视守卫。</groupLimit><br><br><consumable>点击使用：</consumable>放置一个能侦测隐形单位的守卫，来监视一个区域，持续到被敌人摧毁为止。每个玩家最多只能在地图上同时放置1个<font color='#BBFFFF'>真视守卫</font>。<br><br><rules>（用这种方式侦测到敌方守卫的话，会在该敌方守卫被摧毁时获得一部分金钱奖励。）</rules>",
        "gold": {
            "base": 75,
            "total": 75
        },
        "pic": "096_eye_of_the_observer.png",
        "icon": "2043.png"
    },
    "2044": {
        "name": "野怪之眼",
        "description": "<groupLimit>装备栏中只能携带3个侦查守卫。</groupLimit><br><br><consumable>点击使用：</consumable>放置一只隐形的青蛙来监视附近的区域，持续3分钟。",
        "gold": {
            "base": 75,
            "total": 75
        },
        "pic": "",
        "icon": "2044.png"
    },
    "2045": {
        "name": "洞察红宝石",
        "description": "<stats>+500生命值</stats><br><br><unique>唯一被动：</unique>装备的主动效果的冷却时间减少20%。<br><active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有4层充能并在访问商店时填满充能。<br><br><rules>(一个玩家最多只能在地图上同时放置3个<font color='#BBFFFF'>侦查守卫</font>。同名的唯一被动不叠加。)</rules>",
        "gold": {
            "base": 400,
            "total": 1600
        },
        "pic": "2049_ruby_ward.png",
        "icon": "2045.png"
    },
    "2046": {
        "name": "",
        "description": "",
        "gold": {
            "base": 99999,
            "total": 99999
        },
        "pic": "2046.png",
        "icon": "2046.png"
    },
    "2047": {
        "name": "神谕精粹",
        "description": "<consumable>点击饮用：</consumable>你的英雄将拥有侦测身边的隐形或无法看到的敌方单位的能力，持续5分钟。装备栏已满后购买将自动饮用。",
        "gold": {
            "base": 300,
            "total": 300
        },
        "pic": "2047_oraclesextract.png",
        "icon": "2047.png"
    },
    "2048": {
        "name": "启示灵药",
        "description": "<consumable>点击饮用：</consumable>+30-64法术强度（基于英雄等级），10%冷却缩减，并提升法力和能量回复，持续3分钟。装备栏已满后购买将自动饮用。",
        "gold": {
            "base": 500,
            "total": 500
        },
        "pic": "",
        "icon": "2048.png"
    },
    "2049": {
        "name": "洞察之石",
        "description": "<stats>+150生命值</stats><br><br><active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有3层充能并在访问商店时填满充能。<br><br><rules>(一个玩家最多只能在地图上同时放置3个<font color='#BBFFFF'>侦查守卫</font>。同名的唯一被动不叠加。)</rules>",
        "gold": {
            "base": 400,
            "total": 800
        },
        "pic": "2049_sightstone.png",
        "icon": "2049.png"
    },
    "2050": {
        "name": "探索者守卫",
        "description": "<consumable>点击使用：</consumable>放置一个隐形的侦查守卫（无法反隐），持续60秒。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "2050.png"
    },
    "2051": {
        "name": "守护者号角",
        "description": "<mainText><stats><attention>150</attention>生命值</stats><br><li><passive>复原力：</passive>持续回复生命值。<li><passive>不屈不挠：</passive>格挡来自英雄的攻击和技能的伤害。<li><passive>传说：</passive>这个单位会被视为一件<rarityLegendary>传说</rarityLegendary>装备。</mainText><br>",
        "gold": {
            "base": 950,
            "total": 950
        },
        "pic": "",
        "icon": "2051.png"
    },
    "2052": {
        "name": "魄罗佳肴",
        "description": "<mainText><stats></stats>用一勺美味来招待附近的一只魄罗，来让它体型长大。<br><br><flavorText>这道由自由放养、草料喂养的阿瓦罗萨考尼什鸡，与绿色无毒害的弗雷尔卓德香草所搭配的美味，包含了多种必备精华营养素，绝对能让你的魄罗发出愉悦的呼噜声。</flavorText></mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "2052.png"
    },
    "2053": {
        "name": "猛禽斗篷",
        "description": "<stats>+30护甲<br>+125%基础生命回复</stats><br><br><unique>唯一被动—据点冲刺：</unique>当你在防御塔、被摧毁的防御塔和虚空之门附近时，你会获得逐步提升的移动速度加成。在2秒后，这个移动速度加成会达到最大值20%。",
        "gold": {
            "base": 450,
            "total": 900
        },
        "pic": "2053.png",
        "icon": "2053.png"
    },
    "2054": {
        "name": "特制魄罗佳肴",
        "description": "与魄罗佳肴味道一样，但不含卡路里！让你的魄罗保持愉悦和健康。<br><br><consumable>点击使用：</consumable>给你的魄罗们来一顿美味又健康的大餐。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "2052.png",
        "icon": "2054.png"
    },
    "2055": {
        "name": "控制守卫",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>放置一个强大的控制守卫来提供附近区域的视野。这个设备还会使<keywordStealth>隐形</keywordStealth>的陷阱显形，使<keywordStealth>伪装</keywordStealth>的敌人们显形，并使敌方守卫显形和失效。 <br><br><rules>你至多可以携带2个控制守卫。控制守卫不会使其它控制守卫失效。</rules></mainText><br>",
        "gold": {
            "base": 75,
            "total": 75
        },
        "pic": "",
        "icon": "2055.png"
    },
    "2056": {
        "name": "窃来的侦查守卫",
        "description": "<groupLimit>装备栏中只能携带3个侦查守卫。</groupLimit><br><br><consumable>点击使用：</consumable>放置一个隐形的<font color='#BBFFFF'>侦查守卫</font>来监视附近的区域，持续<scaleLevel>60 - 120</scaleLevel>秒。",
        "gold": {
            "base": 60,
            "total": 60
        },
        "pic": "",
        "icon": "2056.png"
    },
    "2057": {
        "name": "微现的远见守卫",
        "description": "<consumable>点击使用：</consumable>揭示2000码内的一个区域并放置一个可见且脆弱的守卫。这个守卫对友军而言是不可被选取的。",
        "gold": {
            "base": 60,
            "total": 60
        },
        "pic": "",
        "icon": "2057.png"
    },
    "2058": {
        "name": "旅行款合剂：钢铁",
        "description": "<consumable>点击饮用：</consumable>提供+150生命值，25%韧性，并提升英雄体型，以及<font color='#FF8811'><u>钢铁之路</u></font>，持续45到90秒，基于等级。<br><br><font color='#FF8811'><u>钢铁之路：</u></font>移动时会在身后留下一条道路，友方英雄在这条道路上会提升15%移动速度。<br><br><rules>(【旅行款合剂】可相互叠加。)</rules>",
        "gold": {
            "base": 80,
            "total": 80
        },
        "pic": "",
        "icon": "2058.png"
    },
    "2059": {
        "name": "旅行款合剂：巫术",
        "description": "<consumable>点击饮用：</consumable>提供+25法术强度、7.5额外法力回复/5秒，以及<font color='#FF8811'><u>巫术</u></font>，持续45到90秒，基于等级。<br><br><font color='#FF8811'><u>巫术：</u></font>在对英雄和防御塔造成伤害时会附带15真实伤害。这个效果在对抗英雄时有5秒冷却时间，但在对抗防御塔时没有冷却时间。<br><br><rules>(【旅行款合剂】可相互叠加。)</rules>",
        "gold": {
            "base": 80,
            "total": 80
        },
        "pic": "",
        "icon": "2059.png"
    },
    "2060": {
        "name": "旅行款合剂：愤怒",
        "description": "<consumable>点击饮用：</consumable>提供+15攻击力，以及<font color='#FF8811'><u>嗜血</u></font>，持续45到90秒，基于等级。<br><br><font color='#FF8811'><u>嗜血：</u></font>在对英雄造成物理伤害时会将实际伤害值的10%转化为自己的生命值。<br><br><rules>(【旅行款合剂】可相互叠加。)</rules>",
        "gold": {
            "base": 80,
            "total": 80
        },
        "pic": "",
        "icon": "2060.png"
    },
    "2061": {
        "name": "窃来的生命药水",
        "description": "<consumable>点击饮用：</consumable>在5秒里持续回复共50生命值。",
        "gold": {
            "base": 40,
            "total": 40
        },
        "pic": "",
        "icon": "2061.png"
    },
    "2062": {
        "name": "窃来的侠盗药水",
        "description": "<consumable>点击饮用：</consumable>提供10 (+1/等级)适应之力，持续45秒。",
        "gold": {
            "base": 80,
            "total": 80
        },
        "pic": "",
        "icon": "2062.png"
    },
    "2065": {
        "name": "舒瑞娅的战歌",
        "description": "<mainText><stats><attention>40</attention>法术强度<br><attention>200</attention>生命值<br><attention>20</attention>技能急速<br><attention>100%</attention>基础法力回复</stats><br><br><active>主动 - </active><active>鼓舞：</active>为你和附近的友方英雄提供移动速度。<li><passive>激发：</passive>强化或保护另一名己方英雄时，会为你和目标都提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。<br></mainText><br>",
        "gold": {
            "base": 750,
            "total": 2500
        },
        "pic": "",
        "icon": "2065.png"
    },
    "2137": {
        "name": "废墟合剂",
        "description": "<stats><levelLimit>需要达到9级才能购买。</levelLimit></stats><br><br><consumable>点击饮用：</consumable>提供+250生命值，对防御塔造成15%额外伤害，以及<font color='#FF8811'><u>攻城指挥官</u></font>，持续3分钟。<br><br><font color='#FF8811'><u>攻城指挥官：</u></font>附近的小兵对防御塔造成15%额外伤害，并获得50护甲和魔法抗性，以及移动速度加成（基于你的移动速度）。<br><br><i>(同一时间只能存在一种合剂效果。)</i>",
        "gold": {
            "base": 500,
            "total": 500
        },
        "pic": "2137.png",
        "icon": "2137.png"
    },
    "2138": {
        "name": "钢铁合剂",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>饮用以获得<scaleHealth>300生命值</scaleHealth>，25%韧性，并提升英雄体型，持续3分钟。在合剂生效期间，移动时会在身后留下一条道路，友方英雄在这条道路上会提升<speed>15%移动速度</speed>。<br><br><rules>饮用一瓶不同的合剂将替换掉现有合剂的效果。</rules></mainText><br>",
        "gold": {
            "base": 500,
            "total": 500
        },
        "pic": "",
        "icon": "2138.png"
    },
    "2139": {
        "name": "巫术合剂",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>饮用以获得<scaleAP>50法术强度</scaleAP>和<scaleMana>15%法力回复</scaleMana>，持续3分钟。在合剂生效期间，对英雄或防御塔造成伤害时会造成<trueDamage>25额外真实伤害</trueDamage>(5秒冷却时间)。<br><br><rules>需要英雄等级达到<attention>9</attention>级或以上才能购买。【巫术合剂】的真实伤害效果在攻击防御塔时没有冷却时间。饮用一瓶不同的合剂将替换掉现有合剂的效果。</rules></mainText><br>",
        "gold": {
            "base": 500,
            "total": 500
        },
        "pic": "",
        "icon": "2139.png"
    },
    "2140": {
        "name": "愤怒合剂",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>饮用以获得<scaleAD>30攻击力</scaleAD>和<lifeSteal>12%物理吸血</lifeSteal>(对英雄)，持续3分钟。<br><br><rules>饮用一瓶不同的合剂将替换掉现有合剂的效果。</rules></mainText><br>",
        "gold": {
            "base": 500,
            "total": 500
        },
        "pic": "",
        "icon": "2140.png"
    },
    "2301": {
        "name": "守望之眼",
        "description": "<stats>+200生命值<br><mana>+25%基础法力回复</mana><br>+35法术强度<br>+10%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—贡品：</unique>对敌方英雄或建筑物施放技能和进行普攻时，会造成18额外魔法伤害并且每次独特的技能施放都会获得22金币。这个效果每30秒最多触发3次。<br><active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有4层充能并在访问商店时填满充能。<br><unique>唯一被动：</unique> 提供探云手。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>贡品</font>会升级为<font color='#CFBF84'>女皇的贡品</font>。<br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 550,
            "total": 2200
        },
        "pic": "2301.png",
        "icon": "2301.png"
    },
    "2302": {
        "name": "绿洲之眼",
        "description": "<stats>+200生命值<br>+125%基础生命回复<br>+10%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你提供<font color='#D4AF37'>40</font>金币或回复<font color='#44DDFF'>6%</font>已损失的法力值（最低回复10）。攻城小兵总会掉落钱币。<br><active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有4层充能并在访问商店时填满充能。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>恩惠</font>会升级为<font color='#CFBF84'>皇帝的恩惠</font>，并且友方英雄在朝你移动时会获得8%移动速度。<br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 250,
            "total": 1900
        },
        "pic": "2302.png",
        "icon": "2302.png"
    },
    "2303": {
        "name": "季分之眼",
        "description": "<stats>+500生命值<br>+200%基础生命回复<br>+10%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在320(+20x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和最近的友军英雄会恢复15到90生命值(基于已损失生命值)，并为该友军英雄提供等额的小兵赏金。这个效果需要附近有一名友军。每20秒获得一层充能，最多拥有4层充能。<br><active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有4层充能并在访问商店时填满充能。.<br><unique>唯一被动：</unique> 提供探云手。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>护盾电池</font>，一个可以在非战斗状态下缓慢再生的永久护盾。<br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 650,
            "total": 2300
        },
        "pic": "2303.png",
        "icon": "2303.png"
    },
    "2319": {
        "name": "黄金福袋",
        "description": "<mainText><font color='#FF9900'>点击使用：</font>包含40-110金币。<br><br>售价@Value@金币。</mainText>",
        "gold": {
            "base": 65,
            "total": 65
        },
        "pic": "",
        "icon": "2319.png"
    },
    "2403": {
        "name": "小兵去质器",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>击杀目标线上小兵(10秒)。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "2403.png"
    },
    "2419": {
        "name": "始动的秒表",
        "description": "<mainText><stats></stats><li>在对局开始14分钟后变为一个<rarityGeneric>秒表</rarityGeneric>。你每次参与击杀后都会使这个时间点提前2分钟。该<rarityGeneric>秒表</rarityGeneric>可在合成进阶装备时贡献250金。<br><br><rules>(【秒表】一般会贡献750金)</rules></mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "2419.png"
    },
    "2420": {
        "name": "秒表",
        "description": "<mainText><stats></stats><active>主动 - </active> <active>凝滞：</active>一次性使用，在2.5秒里<status>免疫伤害</status>且<status>不可被选取</status>，但在此期间里无法采取任何其它行动(转变为一个<rarityGeneric>破损的秒表</rarityGeneric>)。</mainText><br>",
        "gold": {
            "base": 750,
            "total": 750
        },
        "pic": "",
        "icon": "2420.png"
    },
    "2421": {
        "name": "破损的秒表",
        "description": "<mainText><stats></stats><br><li><passive>支离破碎的时间：</passive>【秒表】目前是破损状态，但仍然可以用于升级。<br><br><rules>在打破一个【秒表】后，商店主人就只会卖给你<rarityGeneric>破损的秒表</rarityGeneric>了。</rules></mainText><br>",
        "gold": {
            "base": 750,
            "total": 750
        },
        "pic": "",
        "icon": "2421.png"
    },
    "2422": {
        "name": "有点神奇之鞋",
        "description": "<mainText><stats><attention>25</attention>移动速度</stats><br><li>提供额外的<speed>10移动速度</speed>。通过【有点神奇之鞋】合成的鞋类装备都会保持这个移动速度加成。</mainText><br>",
        "gold": {
            "base": 300,
            "total": 300
        },
        "pic": "",
        "icon": "2422.png"
    },
    "2423": {
        "name": "完美时机秒表",
        "description": "<mainText><stats></stats><active>主动 - </active> <active>凝滞：</active>一次性使用，在2.5秒里<status>免疫伤害</status>且<status>不可被选取</status>，但在此期间里无法采取任何其它行动(转变为一个<rarityGeneric>破损的秒表</rarityGeneric>)。</mainText><br>",
        "gold": {
            "base": 750,
            "total": 750
        },
        "pic": "",
        "icon": "2423.png"
    },
    "2424": {
        "name": "破损的秒表",
        "description": "<mainText><stats></stats><br><li><passive>支离破碎的时间：</passive>【秒表】目前是破损状态，但仍然可以用于升级。<br><br><rules>在打破一个【秒表】后，商店主人就只会卖给你<rarityGeneric>破损的秒表</rarityGeneric>了。</rules></mainText><br>",
        "gold": {
            "base": 750,
            "total": 750
        },
        "pic": "",
        "icon": "2424.png"
    },
    "3001": {
        "name": "薄暮法袍",
        "description": "<mainText><stats><attention>200</attention>生命值<br><attention>20</attention>技能急速<br><attention>30</attention>护甲<br><attention>30</attention>魔法抗性</stats><br><li><passive>闪烁：</passive>在<status>定身</status>英雄或<status>被定身</status>时，使该目标和附近的所有敌方英雄受到伤害提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得 <attention>护甲和魔法抗性</attention></mainText><br>",
        "gold": {
            "base": 300,
            "total": 2500
        },
        "pic": "",
        "icon": "3001.png"
    },
    "3003": {
        "name": "大天使之杖",
        "description": "<mainText><stats><attention>60</attention>法术强度<br><attention>500</attention>法力<br><attention>200</attention>生命值</stats><br><li><passive>敬畏：</passive>提供基于额外法力值的技能急速。<li><passive>法力积攒：</passive>用一个技能击中一个目标时，会消耗一层充能并提供3额外法力值，如果目标是英雄，则该次提供的额外法力值翻倍。至多提供360额外法力值，且此时这个装备会转变为<rarityLegendary>炽天使之拥</rarityLegendary>。<br><br><rules>每8秒提供一层新的<passive>法力积攒</passive>(至多4层)。</rules></mainText><br>",
        "gold": {
            "base": 550,
            "total": 2600
        },
        "pic": "",
        "icon": "3003.png"
    },
    "3004": {
        "name": "魔宗",
        "description": "<mainText><stats><attention>35</attention>攻击力<br><attention>500</attention>法力<br><attention>15</attention>技能急速</stats><br><li><passive>敬畏：</passive>提供<scaleAD>基于最大法力值的额外攻击力</scaleAD>。<li><passive>法力积攒：</passive>用一个技能或普攻击中一个目标时，会消耗一层充能并提供<scaleMana>3额外法力值</scaleMana>，如果目标是英雄，则该次提供的额外法力值翻倍。至多提供360额外法力值，且此时这个装备会转变为<rarityLegendary>魔切</rarityLegendary>。<br><br><rules>每8秒提供一层新的<passive>法力积攒</passive>(至多4层)。</rules></mainText><br>",
        "gold": {
            "base": 1050,
            "total": 2900
        },
        "pic": "",
        "icon": "3004.png"
    },
    "3005": {
        "name": "阿塔玛的清算",
        "description": "<stats>+25攻击力<br>+30护甲<br>+30魔法抗性</stats><br><br><unique>唯一被动：</unique>在与敌方英雄、防御塔或史诗级野怪作战时，每一秒获得攻击力，数额相当于0.5%最大生命值，最多提供2.5% 。",
        "gold": {
            "base": 925,
            "total": 2900
        },
        "pic": "3005_atmas_impaler.png",
        "icon": "3005.png"
    },
    "3006": {
        "name": "狂战士胫甲",
        "description": "<mainText><stats><attention>35%</attention>攻击速度<br><attention>45</attention>移动速度</stats></mainText><br>",
        "gold": {
            "base": 500,
            "total": 1100
        },
        "pic": "",
        "icon": "3006.png"
    },
    "3007": {
        "name": "大天使之杖（快速充能）",
        "description": "<stats>+50法术强度<br><mana>+650法力值</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—急速：</unique>这个装备会提供额外的10%冷却缩减。<br><mana><unique>唯一被动—敬畏：</unique>提供法术强度，相当于最大法力值的1%。<br><unique>唯一被动—法力积攒：</unique>你的英雄每次花费法力时，你的最大法力值都会提高12（每12秒最多触发3次）。法力值加成上限为750。<br><br>一旦法力值加成到达750时，这个物品就会变成【炽天使之拥】。</mana>",
        "gold": {
            "base": 1050,
            "total": 3200
        },
        "pic": "3003_archangelstaff.png",
        "icon": "3007.png"
    },
    "3008": {
        "name": "魔宗（快速充能）",
        "description": "<stats>+35攻击力<br><mana>+250法力值</mana></stats><br><br><mana><unique>唯一被动—敬畏：</unique>提供攻击力，相当于你最大法力值的2%。返还15%的法力花费。<br><unique>唯一被动—法力积攒：</unique>你的英雄进行普通攻击或花费法力时，你的最大法力值都会提高6（每12秒最多触发3次）。法力值加成上限为750。<br><br>一旦法力值加成到达750时，这个物品就会变成【魔切】。<br></mana>",
        "gold": {
            "base": 675,
            "total": 2400
        },
        "pic": "3008_manamune_cs.png",
        "icon": "3008.png"
    },
    "3009": {
        "name": "轻灵之靴",
        "description": "<mainText><stats><attention>60</attention>移动速度</stats><br><li>所受的移动减速效果的强度降低25%。</mainText><br>",
        "gold": {
            "base": 600,
            "total": 900
        },
        "pic": "",
        "icon": "3009.png"
    },
    "3010": {
        "name": "万世催化石",
        "description": "<stats>+225生命值<br><mana>+300法力</mana></stats><br><br><unique>唯一被动—永恒：</unique>承受来自英雄的伤害时，你会回复15%伤害值的法力。<br><br>花费法力时，你会回复20%法力消耗的生命值，每次施法最多回复15生命值。<br><br><rules>（持续消耗法力型技能每秒最多回复15生命值。）</rules>",
        "gold": {
            "base": 350,
            "total": 1100
        },
        "pic": "3010_catalyst_the_protector.png",
        "icon": "3010.png"
    },
    "3011": {
        "name": "炼金科技纯化器",
        "description": "<mainText><stats><attention>60</attention>法术强度<br><attention>20</attention>技能急速<br><attention>100%</attention>基础法力回复</stats><br><li><passive>芙顶之毒：</passive>对英雄们造成魔法伤害时会施加<status>25%重伤</status>效果，持续3秒。对另一名友方英雄提供治疗或护盾时，会使你和该英雄都获得强化，在下一次伤害敌方英雄时施加<status>40%重伤</status>效果。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 550,
            "total": 2300
        },
        "pic": "",
        "icon": "3011.png"
    },
    "3020": {
        "name": "法师之靴",
        "description": "<mainText><stats><attention>18</attention>法术穿透<br><attention>45</attention>移动速度</stats></mainText><br>",
        "gold": {
            "base": 800,
            "total": 1100
        },
        "pic": "",
        "icon": "3020.png"
    },
    "3022": {
        "name": "冰霜之锤",
        "description": "<stats>+700生命值<br>+30攻击力</stats><br><br><unique>唯一被动—钻石星辰击：</unique>近战的普通攻击将降低目标40%的移动速度，持续1.5秒。远程的普通攻击将降低目标20%的移动速度，持续1.5秒。",
        "gold": {
            "base": 900,
            "total": 3100
        },
        "pic": "3022_frozen_mallet.png",
        "icon": "3022.png"
    },
    "3023": {
        "name": "双生暗影",
        "description": "<stats>+80法术强度<br>+10%冷却缩减<br>+8%移动速度</stats><br><br><active>唯一主动：</active>召唤2个幽灵去寻找2个最近的敌人。如果幽灵触碰到了一名敌方英雄，就会暴露该英雄并使其减速40%，持续2.5秒。<br><br>如果幽灵在6秒后仍无法找到目标，那么它就会返回到施法者身上，并使这个道具的冷却时间最多减少40%（冷却时间：120秒）。",
        "gold": {
            "base": 750,
            "total": 2500
        },
        "pic": "3023_wraith_collar.png",
        "icon": "3023.png"
    },
    "3024": {
        "name": "冰川圆盾",
        "description": "<mainText><stats><attention>20</attention>护甲<br><attention>250</attention>法力<br><attention>10</attention>技能急速</stats></mainText><br>",
        "gold": {
            "base": 250,
            "total": 900
        },
        "pic": "",
        "icon": "3024.png"
    },
    "3025": {
        "name": "冰脉护手",
        "description": "<stats>+65护甲<br>+20%冷却缩减<br><mana>+500法力值</mana></stats><br><br><unique>唯一被动—咒刃：</unique>在施放一个技能后，你的下次普通攻击会对一个范围内的所有敌人造成相当于你100%基础攻击力的额外物理伤害，并制造一个持续2秒的冰冷地带，使地带内敌人的移动速度减少30%（1.5秒冷却时间）。<br><br>冰冷地带的半径会随着额外护甲的提升而提升。",
        "gold": {
            "base": 750,
            "total": 2700
        },
        "pic": "3025_frozen_fist.png",
        "icon": "3025.png"
    },
    "3026": {
        "name": "守护天使",
        "description": "<mainText><stats><attention>45</attention>攻击力<br><attention>40</attention>护甲</stats><br><li><passive>挽救恩赐：</passive>你的英雄在受到致命伤害时，会在凝滞4秒后原地复活，恢复<healing>50%基础生命值</healing>和<scaleMana>30%最大法力值</scaleMana>(300秒冷却时间)。</mainText><br>",
        "gold": {
            "base": 150,
            "total": 3000
        },
        "pic": "",
        "icon": "3026.png"
    },
    "3027": {
        "name": "时光之杖",
        "description": "<stats>+300生命值<br><mana>+300法力</mana><br>+60法术强度</stats><br><br><passive>被动：</passive>每层效果提供+20生命值，+10法力值，以及+4法术强度（最大+200生命值，+100法力值，以及+40法术强度）。每分钟提供1层（最大提供10层）。<br><unique>唯一被动—永恒：</unique>承受来自英雄的伤害时，你会回复15%伤害值的法力。花费法力时，你会回复20%法力消耗的生命值，每次施法最多回复25生命值。",
        "gold": {
            "base": 650,
            "total": 2600
        },
        "pic": "3027_guinsoos_rod_of_oblivion.png",
        "icon": "3027.png"
    },
    "3028": {
        "name": "和谐圣杯",
        "description": "<stats>+30魔法抗性<br><mana>+50%基础法力回复 </mana></stats><br><br><unique>唯一被动—和谐：</unique>提供相当于你百分比基础法力回复加成的百分比基础生命回复加成。",
        "gold": {
            "base": 100,
            "total": 800
        },
        "pic": "3028_harmony_ring.png",
        "icon": "3028.png"
    },
    "3029": {
        "name": "时光之杖（快速充能）",
        "description": "<stats>+300生命值<br><mana>+300法力值</mana><br>+60法术强度</stats><br><br><passive>被动：</passive>每层效果增加20生命值，10法力值，4法术强度（最多+200生命值，+100法力值，+40法术强度）。每40秒增加1层效果（最大10层）。<br><unique>唯一被动—永恒：</unique>承受来自英雄的伤害时，你会回复15%伤害值的法力。花费法力时，你会回复20%法力消耗的生命值，每次施法最多回复25生命值。",
        "gold": {
            "base": 650,
            "total": 2600
        },
        "pic": "3029_rod_of_ages_CS.png",
        "icon": "3029.png"
    },
    "3030": {
        "name": "海克斯科技GLP-800",
        "description": "<stats>+80法术强度<br><mana>+600法力</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—急速：</unique>这个装备提供额外的10%冷却缩减。<br><unique>唯一主动—冰霜弹：</unique>发射一排会爆炸的冰霜弹，在命中第一个敌人时爆炸，并对命中的所有敌人造成<scaleLevel>100 - 200</scaleLevel>(+20%法术强度)魔法伤害。（冷却时间：40秒，与其它<font color='#9999FF'>海克斯科技</font>装备共享冷却时间）。<br><br>被命中的敌人会受到65%减速效果，这个减速效果会在2秒里持续衰减。",
        "gold": {
            "base": 450,
            "total": 2800
        },
        "pic": "3030.png",
        "icon": "3030.png"
    },
    "3031": {
        "name": "无尽之刃",
        "description": "<mainText><stats><attention>70</attention>攻击力<br><attention>20%</attention>暴击几率</stats><br><li><passive>完美：</passive>如果你拥有至少60%暴击几率，就会获得 35%暴击伤害。</mainText><br>",
        "gold": {
            "base": 625,
            "total": 3400
        },
        "pic": "",
        "icon": "3031.png"
    },
    "3033": {
        "name": "凡性的提醒",
        "description": "<mainText><stats><attention>25</attention>攻击力<br><attention>25%</attention>攻击速度<br><attention>20%</attention>暴击几率<br><attention>7%</attention>移动速度</stats><br><li><passive>脓毒：</passive>对敌方英雄造成物理伤害时会施加<status>25%重伤</status>效果，持续3秒。对一名敌方英雄连续命中2次攻击时，会使该英雄身上的这个效果增强至<status>40%重伤</status>效果，持续到这个效果消逝为止。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 650,
            "total": 2500
        },
        "pic": "",
        "icon": "3033.png"
    },
    "3034": {
        "name": "巨人杀手",
        "description": "<stats>+10攻击力</stats><br><br><unique>唯一被动—巨人杀手：</unique>在对抗生命值多于你的敌方英雄时，最多提供+10%物理伤害(每相差200生命值提供+1%伤害，在相差2000生命值时达到最大值)。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 650,
            "total": 1000
        },
        "pic": "3034.png",
        "icon": "3034.png"
    },
    "3035": {
        "name": "最后的轻语",
        "description": "<mainText><stats><attention>20</attention>攻击力<br><attention>18%</attention>护甲穿透</stats></mainText><br>",
        "gold": {
            "base": 750,
            "total": 1450
        },
        "pic": "",
        "icon": "3035.png"
    },
    "3036": {
        "name": "多米尼克领主的致意",
        "description": "<mainText><stats><attention>30</attention>攻击力<br><attention>20%</attention>暴击几率<br><attention>30%</attention>护甲穿透</stats><br><li><passive>巨人杀手：</passive>对最大生命值高于你的敌方英雄造成额外物理伤害。</mainText><br>",
        "gold": {
            "base": 950,
            "total": 3000
        },
        "pic": "",
        "icon": "3036.png"
    },
    "3039": {
        "name": "game_item_displayname_3039",
        "description": "game_item_description_3039",
        "gold": {
            "base": 780,
            "total": 2350
        },
        "pic": "",
        "icon": "3039.png"
    },
    "3040": {
        "name": "炽天使之拥",
        "description": "<mainText><stats><attention>80</attention>法术强度<br><attention>860</attention>法力<br><attention>250</attention>生命值</stats><br><li><passive>敬畏：</passive>提供基于法力值的技能急速。<li><passive>至高天：</passive>基于法力花费回复生命值。激活型技能每秒可至多回复等额的生命值。 </mainText><br>",
        "gold": {
            "base": 2600,
            "total": 2600
        },
        "pic": "",
        "icon": "3040.png"
    },
    "3041": {
        "name": "梅贾的窃魂卷",
        "description": "<mainText><stats><attention>20</attention>法术强度<br><attention>100</attention>生命值</stats><br><li><passive>荣耀：</passive>每次击杀提供4层，每次助攻提供2层(至多可达25层)。每次死亡损失10层。<li><passive>畏惧：</passive>每层<passive>荣耀</passive>提供<scaleAP>5法术强度</scaleAP>。如果你拥有至少10层荣耀，就会提供<speed>10%移动速度</speed>。<br><br><rules>已获得的<passive>荣耀</passive>层数可在这件装备和<rarityGeneric>黑暗封印</rarityGeneric>之间保存。</rules></mainText><br>",
        "gold": {
            "base": 1250,
            "total": 1600
        },
        "pic": "",
        "icon": "3041.png"
    },
    "3042": {
        "name": "魔切",
        "description": "<mainText><stats><attention>35</attention>攻击力<br><attention>860</attention>法力<br><attention>15</attention>技能急速</stats><br><li><passive>敬畏：</passive>提供基于法力值的攻击力。<li><passive>冲击：</passive>攻击会对英雄造成额外物理伤害。</mainText><br>",
        "gold": {
            "base": 3000,
            "total": 3000
        },
        "pic": "",
        "icon": "3042.png"
    },
    "3043": {
        "name": "魔切",
        "description": "<mainText><stats><attention>35</attention>攻击力<br><attention>860</attention>法力<br><attention>15</attention>技能急速</stats><br><li><passive>敬畏：</passive>提供<scaleAD>相当于2.5%最大法力值的额外攻击力</scaleAD>。<li><passive>冲击：</passive>以英雄为目标时，技能和攻击(<OnHit>攻击特效</OnHit>)会附带额外的<physicalDamage>(2.5%最大法力值)物理伤害</physicalDamage>。 </mainText><br>",
        "gold": {
            "base": 2600,
            "total": 2600
        },
        "pic": "",
        "icon": "3043.png"
    },
    "3044": {
        "name": "净蚀",
        "description": "<mainText><stats><attention>15</attention>攻击力<br><attention>200</attention>生命值</stats><br><li><passive>顽强：</passive>在你对敌方英雄造成物理伤害后，持续回复生命值。<br><br><rules>远程持有者的回复效果减少。</rules></mainText><br>",
        "gold": {
            "base": 350,
            "total": 1100
        },
        "pic": "",
        "icon": "3044.png"
    },
    "3046": {
        "name": "幻影之舞",
        "description": "<mainText><stats><attention>20</attention>攻击力<br><attention>25%</attention>攻击速度<br><attention>20%</attention>暴击几率<br><attention>7%</attention>移动速度</stats><br><li><passive>幽影华尔兹：</passive>普攻会提供<status>幽灵</status>状态和可叠加的移动速度。此外，进行4次普攻后，还会使【幽影华尔兹】提供攻击速度。<br><br><rules><status>幽灵</status>状态的单位无视其它单位的碰撞体积。</rules></mainText><br>",
        "gold": {
            "base": 850,
            "total": 2600
        },
        "pic": "",
        "icon": "3046.png"
    },
    "3047": {
        "name": "铁板靴",
        "description": "<mainText><stats><attention>20</attention>护甲<br><attention>45</attention>移动速度</stats><br><li>使即将到来的攻击伤害降低12%。</mainText><br>",
        "gold": {
            "base": 500,
            "total": 1100
        },
        "pic": "",
        "icon": "3047.png"
    },
    "3048": {
        "name": "炽天使之拥",
        "description": "<mainText><stats><attention>65</attention>法术强度<br><attention>860</attention>法力</stats><br><li><passive>敬畏：</passive>提供额外的<scaleAP>相当于5%额外法力值的法术强度</scaleAP>。<li><passive>最高天：</passive>使你提升<scaleMana>5%(+2.5%每<scaleAP>100法术强度</scaleAP>)总法力值</scaleMana>。</mainText><br>",
        "gold": {
            "base": 3000,
            "total": 3000
        },
        "pic": "",
        "icon": "3048.png"
    },
    "3050": {
        "name": "基克的聚合",
        "description": "<mainText><stats><attention>250</attention>生命值<br><attention>35</attention>护甲<br><attention>250</attention>法力<br><attention>20</attention>技能急速</stats><br><br><active>主动 - </active><active>导管：</active>指定一名<attention>帮手</attention>。<br><li><passive>聚合：</passive>在你<status>定身</status>一名敌人后，你的<attention>帮手</attention>的技能和攻击对这个敌人附带额外伤害。<br><br><rules>同一个英雄同一时间只能被一个【基克的聚合】所连接。</rules></mainText><br>",
        "gold": {
            "base": 700,
            "total": 2400
        },
        "pic": "",
        "icon": "3050.png"
    },
    "3051": {
        "name": "缚炉之斧",
        "description": "<mainText><stats><attention>15</attention>攻击力<br><attention>15%</attention>攻击速度</stats><br><li><passive>灵光：</passive>攻击一名单位会提供移动速度。</mainText><br>",
        "gold": {
            "base": 350,
            "total": 1000
        },
        "pic": "",
        "icon": "3051.png"
    },
    "3052": {
        "name": "紫雨林之拳",
        "description": "<stats>+15攻击力<br>+200生命值</stats><br><br><unique>唯一被动：</unique>击杀一个单位会提供5最大生命值。这个加成最多可叠加20层。",
        "gold": {
            "base": 450,
            "total": 1200
        },
        "pic": "3052.png",
        "icon": "3052.png"
    },
    "3053": {
        "name": "斯特拉克的挑战护手",
        "description": "<mainText><stats><attention>400</attention>生命值</stats><br><li><passive>抓人双爪：</passive>获得基于基础攻击力的额外攻击力。<li><passive>救主灵刃：</passive>在受到将使你的生命值跌到30%以下的伤害时，提供持续衰减的护盾值。</mainText><br>",
        "gold": {
            "base": 725,
            "total": 3100
        },
        "pic": "",
        "icon": "3053.png"
    },
    "3056": {
        "name": "干扰水晶",
        "description": "<stats>+300生命值<br>+50护甲<br>+150%基础生命回复<br>+10%冷却缩减</stats><br><br><active>唯一主动：</active>阻止附近的敌方防御塔进行攻击，持续3秒（冷却时间：120秒）。该效果在8秒里仅能对同一防御塔使用一次。<br><br><unique>唯一被动—据点冲刺：</unique>当你在防御塔（包括被摧毁的防御塔）和虚空之门附近时，你会获得逐步提升的移动速度加成。在2秒后，该加成会达到最大值20%。",
        "gold": {
            "base": 950,
            "total": 2650
        },
        "pic": "3056_ohmwrecker.png",
        "icon": "3056.png"
    },
    "3057": {
        "name": "耀光",
        "description": "<mainText><stats></stats><li><passive>咒刃：</passive>施放技能后，你的下一次普通攻击因强化而附带额外伤害。</mainText><br>",
        "gold": {
            "base": 700,
            "total": 700
        },
        "pic": "",
        "icon": "3057.png"
    },
    "3060": {
        "name": "号令之旗",
        "description": "<stats>+60护甲<br>+30魔法抗性<br>+125%基础生命回复</stats><br><br><active>唯一主动—晋升：</active> 极大提升一个线上小兵的威力(120秒冷却时间)。<font color='#FF8811'>晋升过</font>的小兵会获得<font  color='#99BBBB'>特殊加成属性。</font><br><unique>唯一被动—据点冲刺：</unique>当你在防御塔（包括被摧毁的防御塔）和虚空之门附近时，你会获得逐步提升的移动速度加成。在2秒后，该加成会达到最大值20%。",
        "gold": {
            "base": 200,
            "total": 2200
        },
        "pic": "3060_banner_of_command.png",
        "icon": "3060.png"
    },
    "3065": {
        "name": "振奋盔甲",
        "description": "<mainText><stats><attention>450</attention>生命值<br><attention>50</attention>魔法抗性<br><attention>10</attention>技能急速<br><attention>100%</attention>基础生命回复</stats><br><li><passive>无拘活力：</passive>使你所受的全部治疗和护盾的效果提升。</mainText><br>",
        "gold": {
            "base": 850,
            "total": 2900
        },
        "pic": "",
        "icon": "3065.png"
    },
    "3066": {
        "name": "带翼的月板甲",
        "description": "<mainText><stats><attention>150</attention>生命值</stats><br><li><passive>飞翔：</passive>提供<speed>5%移动速度</speed>。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 800
        },
        "pic": "",
        "icon": "3066.png"
    },
    "3067": {
        "name": "燃烧宝石",
        "description": "<mainText><stats><attention>200</attention>生命值<br><attention>10</attention>技能急速</stats></mainText><br>",
        "gold": {
            "base": 400,
            "total": 800
        },
        "pic": "",
        "icon": "3067.png"
    },
    "3068": {
        "name": "日炎圣盾",
        "description": "<mainText><stats><attention>450</attention>生命值<br><attention>35</attention>护甲<br><attention>35</attention>魔法抗性<br><attention>20</attention>技能急速</stats><br><li><passive>献祭：</passive>承受或造成伤害会使你开始每秒对附近敌人造成魔法伤害(对抗小兵和野怪时提升)。用这个效果对敌方英雄或史诗级野怪造成伤害时会添加一层叠加效果，来提升后续的<passive>献祭</passive>伤害。<li><passive>火焰触摸：</passive>在最大<passive>献祭</passive>层数时，你的攻击会灼烧附近的敌人来每秒造成你的<passive>献祭</passive>伤害。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得韧性、减速抗性和生命值。</mainText><br>",
        "gold": {
            "base": 800,
            "total": 3200
        },
        "pic": "",
        "icon": "3068.png"
    },
    "3069": {
        "name": "飞升残存物",
        "description": "<stats>+200生命值<br>+10移动速度<br>+125%基础生命回复<br>+10%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你回复<scaleMana>6%</scaleMana>已损失的法力值（最低回复10）。如果附近有一名友方英雄，那么有时钱币会提供<gold>50</gold>金币作为替代。攻城小兵总会掉落钱币。<hr><passive>任务：</passive>使用这个装备赚取500金币。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有4层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br><rules><font color='#447777'>“赞美太阳！”—历史学家舒瑞娅，联盟历25年9月22日</font></rules>",
        "gold": {
            "base": 250,
            "total": 1500
        },
        "pic": "3069_shurelyas_firecrest.png",
        "icon": "3069.png"
    },
    "3070": {
        "name": "女神之泪",
        "description": "<mainText><stats><attention>240</attention>法力</stats><br><li><passive>专注：</passive>攻击对小兵附带额外的物理伤害。<li><passive>法力积攒：</passive>用一个技能击中一个目标时，会消耗一层充能并提供<scaleMana>3额外法力值</scaleMana>，如果目标是英雄，则该次提供的额外法力值翻倍。至多提供360额外法力值。<br><br><rules>每8秒获得一层新的<passive>法力积攒</passive>充能(至多4层)。</rules></mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3070.png"
    },
    "3071": {
        "name": "黑色切割者",
        "description": "<mainText><stats><attention>45</attention>攻击力<br><attention>350</attention>生命值<br><attention>30</attention>技能急速</stats><br><li><passive>切割：</passive>对一名英雄造成物理伤害时会施加一层护甲削减效果。<li><passive>狂怒：</passive>对一名英雄造成物理伤害时会提供基于目标身上<unique>切割</unique>层数的移动速度。</mainText><br>",
        "gold": {
            "base": 850,
            "total": 3100
        },
        "pic": "",
        "icon": "3071.png"
    },
    "3072": {
        "name": "饮血剑",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>20%</attention>暴击几率<br><attention>18%</attention>生命偷取</stats><br><li><passive>灵液护盾：</passive>来自攻击的生命偷取现在可以对你进行过量治疗。溢出的生命值会储存为护盾，如果你没有造成或承受任何伤害，那么这个护盾会缓慢衰减。</mainText><br>",
        "gold": {
            "base": 600,
            "total": 3400
        },
        "pic": "",
        "icon": "3072.png"
    },
    "3073": {
        "name": "女神之泪（快速充能）",
        "description": "<stats><mana>+250法力值</mana></stats><br><br><mana><unique>唯一被动—敬畏：</unique>返还10%的法力花费。<br><unique>唯一被动—法力积攒：</unique>每次花费法力时，你的最大法力值就会增加6（每12秒最多触发3次）。<br><br>最多+750法力。</mana>",
        "gold": {
            "base": 375,
            "total": 850
        },
        "pic": "3073_tear_of_the_goddess_CS.png",
        "icon": "3073.png"
    },
    "3074": {
        "name": "贪欲九头蛇",
        "description": "<mainText><stats><attention>70</attention>攻击力<br><attention>20</attention>技能急速<br><attention> 10%</attention>全能吸血</stats><br><li><passive>顺劈：</passive>攻击和技能会对命中目标附近的其它敌人造成伤害。<br></mainText><br>",
        "gold": {
            "base": 100,
            "total": 3300
        },
        "pic": "",
        "icon": "3074.png"
    },
    "3075": {
        "name": "荆棘之甲",
        "description": "<mainText><stats><attention>350</attention>生命值<br><attention>60</attention>护甲</stats><br><li><passive>荆棘：</passive>在被一次攻击命中后，对攻击者造成魔法伤害并且如果目标是英雄，还会施加25%<status>重伤</status>效果。定身敌方英雄时还会施加40%<status>重伤</status>效果。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 1000,
            "total": 2700
        },
        "pic": "",
        "icon": "3075.png"
    },
    "3076": {
        "name": "棘刺背心",
        "description": "<mainText><stats><attention>30</attention>护甲</stats><br><li><passive>荆棘：</passive>在被一次攻击命中后，对攻击者造成魔法伤害并且如果目标是英雄，还会施加25%重伤效果。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 200,
            "total": 800
        },
        "pic": "",
        "icon": "3076.png"
    },
    "3077": {
        "name": "提亚马特",
        "description": "<mainText><stats><attention>25</attention>攻击力</stats><br><li><passive>顺劈：</passive>攻击会对附近的其它敌人造成物理伤害。<br><br><br>顺劈不会在建筑物上触发。</mainText><br>",
        "gold": {
            "base": 325,
            "total": 1200
        },
        "pic": "",
        "icon": "3077.png"
    },
    "3078": {
        "name": "三相之力",
        "description": "<mainText><stats><attention>35</attention>攻击力<br><attention>30%</attention>攻击速度<br><attention>300</attention>生命值<br><attention>20</attention>技能急速</stats><br><li><passive>三重打击：</passive>攻击会提供移动速度。如果目标是英雄，则提升你的基础攻击力，可叠加。<li><passive>咒刃：</passive>施放技能后，你的下一次攻击因强化而附带额外伤害。<br> <br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得：攻击力、技能急速、和移动速度。</mainText><br>",
        "gold": {
            "base": 833,
            "total": 3333
        },
        "pic": "",
        "icon": "3078.png"
    },
    "3080": {
        "name": "太空饮血剑",
        "description": "<stats>+65攻击力</stats><br><br><unique>唯一被动：</unique> +5%生命偷取<br><unique>唯一被动：</unique>你的生命偷取效果可以对你进行过量治疗。溢出的生命力会储存为一个能够抵挡50-350伤害（基于英雄等级）的护盾。<br><br>如果你在之前的25秒里没有造成或承受任何伤害，那么这个护盾会缓慢衰减。",
        "gold": {
            "base": 750,
            "total": 3300
        },
        "pic": "",
        "icon": "3080.png"
    },
    "3082": {
        "name": "守望者铠甲",
        "description": "<mainText><stats><attention>40</attention>护甲</stats><br><li><passive>坚如磐石：</passive>使所受的来自普攻的伤害降低。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 1000
        },
        "pic": "",
        "icon": "3082.png"
    },
    "3083": {
        "name": "狂徒铠甲",
        "description": "<mainText><stats><attention>800</attention>生命值<br><attention>10</attention>技能急速<br><attention>200%</attention>基础生命回复</stats><br><li><passive>狂徒之心：</passive>如果你至少拥有1100额外生命值，并且在6秒内没有受到伤害，就会每秒回复一部分最大生命值。</mainText><br>",
        "gold": {
            "base": 500,
            "total": 3000
        },
        "pic": "",
        "icon": "3083.png"
    },
    "3084": {
        "name": "霸王血铠",
        "description": "<stats>+800生命值<br>+100%基础生命回复</stats><br><br><unique>唯一被动：</unique>每获得一次击杀或助攻，就会在5秒里恢复共300生命值。",
        "gold": {
            "base": 900,
            "total": 2550
        },
        "pic": "3084_overlords_bloodmail.png",
        "icon": "3084.png"
    },
    "3085": {
        "name": "卢安娜的飓风",
        "description": "<mainText><stats><attention>45%</attention>攻击速度<br><attention>20%</attention>暴击几率<br><attention>7%</attention>移动速度</stats><br><li><passive>风怒：</passive>你的普通攻击会朝目标附近的至多2个敌人发射弩箭。这些弩箭能够附带攻击特效并且可以暴击。<br><br><rules>这件装备仅远程英雄可用。</rules></mainText><br>",
        "gold": {
            "base": 950,
            "total": 2600
        },
        "pic": "",
        "icon": "3085.png"
    },
    "3086": {
        "name": "狂热",
        "description": "<mainText><stats><attention>18%</attention>攻击速度<br><attention>15%</attention>暴击几率</stats><br><li><passive>狂热：</passive>提供<speed>7%移动速度</speed>。</mainText><br>",
        "gold": {
            "base": 150,
            "total": 1050
        },
        "pic": "",
        "icon": "3086.png"
    },
    "3087": {
        "name": "斯塔缇克电刃",
        "description": "<stats>+40%攻击速度<br>+25%暴击几率<br>+7%移动速度</stats><br><br><unique>唯一被动—盈能：</unique>移动和攻击将积攒一次盈能攻击。<br><unique>唯一被动—电击：</unique>你的盈能攻击会造成<magicDamage>120额外魔法伤害</magicDamage>。盈能效果可弹射7个目标。",
        "gold": {
            "base": 500,
            "total": 2600
        },
        "pic": "3087_statikk_shiv.png",
        "icon": "3087.png"
    },
    "3089": {
        "name": "灭世者的死亡之帽",
        "description": "<mainText><stats><attention>120</attention>法术强度</stats><br><li><passive>魔法乐章：</passive>使你的总<scaleAP>法术强度提升35%</scaleAP>。</mainText><br>",
        "gold": {
            "base": 1100,
            "total": 3600
        },
        "pic": "",
        "icon": "3089.png"
    },
    "3090": {
        "name": "沃格勒特的巫师帽",
        "description": "<stats>+100法术强度<br>+45护甲</stats><br><br><unique>唯一被动：</unique>法术强度提升25%。<br><active>唯一主动—凝滞：</active>让英雄在2.5秒里免疫任何伤害且不可被选取，但无法移动、攻击、施法或者使用技能（冷却时间120秒）。",
        "gold": {
            "base": 450,
            "total": 3450
        },
        "pic": "3090_wooglets_witchcap.png",
        "icon": "3090.png"
    },
    "3091": {
        "name": "智慧末刃",
        "description": "<mainText><stats><attention>40</attention>攻击力<br><attention>40%</attention>攻击速度<br><attention>40</attention>魔法抗性</stats><br><li><passive>喧争：</passive>攻击附带魔法伤害并提供移动速度。</mainText><br>",
        "gold": {
            "base": 775,
            "total": 3100
        },
        "pic": "",
        "icon": "3091.png"
    },
    "3092": {
        "name": "监视残存物",
        "description": "<stats>+200生命值<br>+35法术强度<br>+10%冷却缩减<br>+2金币/10秒<br><mana>+50%基础法力回复</mana></stats><br><br><unique>唯一被动—贡品：</unique>对敌方英雄或建筑物施放技能和进行普攻时，每次会造成18额外魔法伤害。如果附近有一名友方英雄，那么这个效果还会提供<gold>22</gold>金币。这个效果每30秒最多触发3次。在任务完成前，击杀小兵和非史诗级野怪会减缓贡品效果和金币的生成速度。<hr><passive>任务：</passive>使用这个装备赚取500金币。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有4层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 550,
            "total": 1800
        },
        "pic": "",
        "icon": "3092.png"
    },
    "3093": {
        "name": "贪婪之刃",
        "description": "<stats>+15%攻击速度</stats><br><br><unique>唯一被动—贪财：</unique>每10秒获得+3枚金币。<br><unique>唯一被动—贪婪：</unique>每次击杀单位时额外获得2枚金币。<br><br><groupLimit>可以与其它金币收入型装备共存</groupLimit>",
        "gold": {
            "base": 500,
            "total": 800
        },
        "pic": "3093_avarice_blade.png",
        "icon": "3093.png"
    },
    "3094": {
        "name": "疾射火炮",
        "description": "<mainText><stats><attention>35%</attention>攻击速度<br><attention>20%</attention>暴击几率<br><attention>7%</attention>移动速度</stats><br><li><passive>盈能：</passive>移动和攻击将生成一次【盈能】攻击。<li><passive>神射手：</passive>你的【盈能】攻击附带额外伤害。此外，【盈能】攻击获得额外攻击距离。<br><br><rules>攻击距离的提升不能多于150码。</rules></mainText><br>",
        "gold": {
            "base": 750,
            "total": 2500
        },
        "pic": "",
        "icon": "3094.png"
    },
    "3095": {
        "name": "岚切",
        "description": "<mainText><stats><attention>40</attention>攻击力<br><attention>15%</attention>攻击速度<br><attention>20%</attention>暴击几率</stats><br><li><passive>盈能：</passive>移动和攻击将生成一次【盈能】攻击。<li><passive>麻痹：</passive>你的【盈能】攻击附带额外魔法伤害。此外，【盈能】攻击对敌人造成减速。<br></mainText><br>",
        "gold": {
            "base": 100,
            "total": 2700
        },
        "pic": "",
        "icon": "3095.png"
    },
    "3096": {
        "name": "游牧民印章",
        "description": "<stats>+10移动速度<br>+50%基础生命回复<br>+10%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你回复<scaleMana>6%</scaleMana>已损失的法力值（最低回复10）。如果附近有一名友方英雄，那么有时钱币会提供<gold>50</gold>金币作为替代。攻城小兵总会掉落钱币。<hr><passive>任务：</passive>使用这个装备赚取500金币。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有3层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br><rules><font color='#447777'>“在太阳的照射下，印章散发出蕴含着一千种声音的荣光。”——历史学家舒瑞娅，联盟历24年6月22日</font></rules>",
        "gold": {
            "base": 300,
            "total": 850
        },
        "pic": "3062_soul_pendant.png",
        "icon": "3096.png"
    },
    "3097": {
        "name": "巨神峰之擎",
        "description": "<stats>+125生命值<br>+50%基础生命回复<br>+1金币/10秒 </stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在200(+15x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和距离最近的友军英雄会恢复10到60生命值(基于已损失生命值)，并为该友军英雄提供等额的小兵赏金。如果装备持有者是远程英雄则治疗效果为50%。这个效果需要附近有一名友军。每30秒获得一层充能。最多拥有3层充能。<hr><passive>任务：</passive>使用这个装备赚取500金币。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有3层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 300,
            "total": 850
        },
        "pic": "3097_reaperemblem.png",
        "icon": "3097.png"
    },
    "3098": {
        "name": "冰霜之牙",
        "description": "<stats>+20法术强度<br>+2金币/10秒<br><mana>+50%基础法力回复</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—贡品：</unique>对敌方英雄或建筑物施放技能和进行普攻时，每次会造成18额外魔法伤害。如果附近有一名友方英雄，那么这个效果还会提供<gold>22</gold>金币。这个效果每30秒最多触发3次。在任务完成前，击杀小兵和非史诗级野怪会减缓贡品效果和金币的生成速度。<hr><passive>任务：</passive>使用这个装备赚取500金币。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有3层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 325,
            "total": 850
        },
        "pic": "3098_kagespick.png",
        "icon": "3098.png"
    },
    "3099": {
        "name": "灵魂法衣",
        "description": "<stats>+520生命值</stats><br><br><aura>唯一光环：</aura>增加周围友军12法力回复/5秒和10%冷却缩减。",
        "gold": {
            "base": 485,
            "total": 1685
        },
        "pic": "",
        "icon": "3099.png"
    },
    "3100": {
        "name": "巫妖之祸",
        "description": "<mainText><stats><attention>75</attention>法术强度<br><attention>15</attention>技能急速<br><attention>8%</attention>移动速度</stats><br><li><passive>咒刃：</passive>施放技能后，你的下一次普通攻击因强化而附带额外魔法伤害。</mainText><br>",
        "gold": {
            "base": 550,
            "total": 3000
        },
        "pic": "",
        "icon": "3100.png"
    },
    "3101": {
        "name": "蜂刺",
        "description": "<stats>+35%攻击速度</stats><br><br><unique>唯一被动：</unique>+10%冷却缩减",
        "gold": {
            "base": 500,
            "total": 1100
        },
        "pic": "059_sheen.png",
        "icon": "3101.png"
    },
    "3102": {
        "name": "女妖面纱",
        "description": "<mainText><stats><attention>80</attention>法术强度<br><attention>45</attention>魔法抗性<br><attention>10</attention>技能急速</stats><br><li><passive>废除：</passive>提供一层法术护盾来格挡下一个敌方技能。<br><br><rules>如果你在此装备冷却完毕之前受到来自英雄的伤害，那么它的冷却时间会重新开始计算。</rules></mainText><br>",
        "gold": {
            "base": 700,
            "total": 2600
        },
        "pic": "",
        "icon": "3102.png"
    },
    "3104": {
        "name": "范达姆领主的劫掠者",
        "description": "<stats>+300生命值<br>+50攻击力<br>+10%冷却缩减</stats><br><br><unique>唯一被动—尘归尘：</unique>在控制了最近的圣坛时，你会陷入火中，每秒对附近的敌人造成<scaleLevel>[26到43]</scaleLevel>魔法伤害。每过12秒，你的下一个定身技能造成<scaleLevel>[26到43]</scaleLevel><scaleHealth>(+你4%的额外生命值)</scaleHealth>额外魔法伤害，并释放一次火焰新星，在你周围的区域造成该额外伤害。【献祭】对小兵和野怪的伤害会提升50%并且它的冷却时间会从技能冷却缩减中获得收益。<br><br>在控制了最远的圣坛时，你的普攻会灼烧目标，在3秒里持续造成最多114真实伤害（基于英雄等级）。",
        "gold": {
            "base": 700,
            "total": 3000
        },
        "pic": "3104_lord_van_damms_pillager.png",
        "icon": "3104.png"
    },
    "3105": {
        "name": "军团圣盾",
        "description": "<mainText><stats><attention>30</attention>护甲<br><attention>30</attention>魔法抗性<br><attention>10</attention>技能急速</stats></mainText><br>",
        "gold": {
            "base": 650,
            "total": 1400
        },
        "pic": "",
        "icon": "3105.png"
    },
    "3107": {
        "name": "救赎",
        "description": "<mainText><stats><attention> 16%</attention>治疗和护盾强度<br><attention>200</attention>生命值<br><attention>15</attention>技能急速<br><attention>100%</attention>基础法力回复</stats><br><br><active>主动 - </active><active>干涉：</active>选择范围内的一个区域作为目标。在2.5秒后，召下一道光束来治疗友方英雄们并伤害敌方英雄们。<br><br><rules>这件装备可以在死亡时施放。对近期被其它<active>干涉</active>效果影响的目标造成的伤害和治疗效果降低50%。加成效果的强度是基于该友方英雄的等级。</rules></mainText><br>",
        "gold": {
            "base": 700,
            "total": 2300
        },
        "pic": "",
        "icon": "3107.png"
    },
    "3108": {
        "name": "恶魔法典",
        "description": "<mainText><stats><attention>35</attention>法术强度<br><attention>10</attention>技能急速</stats></mainText><br>",
        "gold": {
            "base": 465,
            "total": 900
        },
        "pic": "",
        "icon": "3108.png"
    },
    "3109": {
        "name": "骑士之誓",
        "description": "<mainText><stats><attention>400</attention>生命值<br><attention>20</attention>技能急速<br><attention>200%</attention>基础生命回复</stats><br><br><active>主动 - </active><active>立誓：</active>指定一名友方英雄作为你的<attention>誓约者</attention>。<br><li><passive>牺牲：</passive>当你的<attention>誓约者</attention>友军在附近时，将其所受的伤害转移到你身上，并为你提供基于<attention>誓约者</attention>对敌方英雄已造成伤害值的治疗效果。<br></mainText><br>",
        "gold": {
            "base": 400,
            "total": 2300
        },
        "pic": "",
        "icon": "3109.png"
    },
    "3110": {
        "name": "冰霜之心",
        "description": "<mainText><stats><attention>80</attention>护甲<br><attention>400</attention>法力<br><attention>20</attention>技能急速</stats><br><li><passive>凛冬之抚：</passive>使附近敌人的<attackSpeed>攻击速度</attackSpeed>降低。<li><passive>坚如磐石：</passive>使所受的来自普攻的伤害降低。</mainText><br>",
        "gold": {
            "base": 600,
            "total": 2500
        },
        "pic": "",
        "icon": "3110.png"
    },
    "3111": {
        "name": "水银之靴",
        "description": "<mainText><stats><attention>25</attention>魔法抗性<br><attention>45</attention>移动速度<br><attention>30%</attention>韧性</stats><br><br><rules>韧性会减少<status>晕眩</status>、<status>减速</status>、<status>嘲讽</status>、<status>恐惧</status>、<status>沉默</status>、<status>致盲</status>、<status>变形</status>和<status>定身</status>效果的持续时间。它对<status>浮空</status>或<status>压制</status>效果无效。</rules></mainText><br>",
        "gold": {
            "base": 350,
            "total": 1100
        },
        "pic": "",
        "icon": "3111.png"
    },
    "3112": {
        "name": "守护者法球",
        "description": "<mainText><stats><attention>50</attention>法术强度<br><attention>150</attention>生命值</stats><br><li><passive>复原力：</passive>持续回复法力。如果你不能获得法力值，则转而回复生命值。<li><passive>传说：</passive>这个单位会被视为一件<rarityLegendary>传说</rarityLegendary>装备。</mainText><br>",
        "gold": {
            "base": 950,
            "total": 950
        },
        "pic": "",
        "icon": "3112.png"
    },
    "3113": {
        "name": "以太精魂",
        "description": "<mainText><stats><attention>30</attention>法术强度</stats><br><li><passive>滑行：</passive>提供<speed>5%移动速度</speed>。</mainText><br>",
        "gold": {
            "base": 415,
            "total": 850
        },
        "pic": "",
        "icon": "3113.png"
    },
    "3114": {
        "name": "禁忌雕像",
        "description": "<mainText><stats><attention>50%</attention>基础法力回复<br><attention> 8%</attention>治疗和护盾强度</stats></mainText><br>",
        "gold": {
            "base": 550,
            "total": 800
        },
        "pic": "",
        "icon": "3114.png"
    },
    "3115": {
        "name": "纳什之牙",
        "description": "<mainText><stats><attention>100</attention>法术强度<br><attention>50%</attention>攻击速度</stats><br><li><passive>艾卡西亚之咬：</passive>攻击附带额外魔法伤害<OnHit>攻击特效</OnHit>。</mainText><br>",
        "gold": {
            "base": 715,
            "total": 3000
        },
        "pic": "",
        "icon": "3115.png"
    },
    "3116": {
        "name": "瑞莱的冰晶节杖",
        "description": "<mainText><stats><attention>75</attention>法术强度<br><attention>400</attention>生命值</stats><br><li><passive>凝霜：</passive>伤害型技能会使敌人<status>减速</status>。</mainText><br>",
        "gold": {
            "base": 415,
            "total": 2600
        },
        "pic": "",
        "icon": "3116.png"
    },
    "3117": {
        "name": "疾行之靴",
        "description": "<mainText><stats></stats><attention>25</attention>移动速度<li>当处于非战斗状态至少5秒时，使这个装备的效果提升至<attention>115</attention>。</mainText><br>",
        "gold": {
            "base": 700,
            "total": 1000
        },
        "pic": "",
        "icon": "3117.png"
    },
    "3118": {
        "name": "太空骑士之誓",
        "description": "<stats>+250生命值<br>+40护甲<br>+10%冷却缩减</stats><br><br><active>唯一主动：</active>指定一位友方英雄作为你的搭档(冷却时间：90秒)。<br><passive>唯一被动：</passive>如果你的搭档在附近，则提供+20护甲加成并在朝该英雄移动时+15%移动速度。<br><passive>唯一被动：</passive>如果你的搭档在附近，则获得相当于你的搭档对英雄造成伤害量的3%的治疗效果，并将你的搭档所受的来自英雄的伤害的12%以<font color='#FFFFFF'>真实</font>伤害的形式转移给自身(如果你是远程英雄，则治疗效果和伤害转移减少50%)。<br><br><rules>(相同英雄在同一时间只能被一个骑士之誓所连接。)</rules>",
        "gold": {
            "base": 600,
            "total": 2200
        },
        "pic": "",
        "icon": "3118.png"
    },
    "3119": {
        "name": "凛冬之临",
        "description": "<mainText><stats><attention>350</attention>生命值<br><attention>500</attention>法力<br><attention>15</attention>技能急速</stats><br><li><passive>敬畏：</passive>提供<scaleHealth>基于总法力值的额外生命值</scaleHealth>。<li><passive>法力积攒：</passive>用一个技能或普攻击中一个目标时，会消耗一层充能并提供<scaleMana>3额外法力值</scaleMana>，如果目标是英雄，则该次提供的额外法力值翻倍。至多提供360额外法力值，且此时这个装备会转变为<rarityLegendary>末日寒冬</rarityLegendary>。<br><br><rules>每8秒提供一层新的<passive>法力积攒</passive>(至多4层)。</rules></mainText><br>",
        "gold": {
            "base": 1100,
            "total": 2700
        },
        "pic": "",
        "icon": "3119.png"
    },
    "3121": {
        "name": "末日寒冬",
        "description": "<mainText><stats><attention>350</attention>生命值<br><attention>860</attention>法力<br><attention>15</attention>技能急速</stats><br><li><passive>敬畏：</passive>提供基于法力值的额外生命值。<li><passive>永续：</passive><status>定身</status>或<status>减速</status>一名敌方英雄时，会消耗当前法力值并提供护盾值。如果附近有1名以上的敌人，则护盾值会提升。</mainText><br>",
        "gold": {
            "base": 2700,
            "total": 2700
        },
        "pic": "",
        "icon": "3121.png"
    },
    "3122": {
        "name": "卑劣手斧",
        "description": "<stats>+20攻击力<br>+10%暴击几率</stats><br><br><unique>唯一被动：</unique>你的暴击会让敌方目标流血3秒，总共造成相当于你60%额外攻击力的魔法伤害。",
        "gold": {
            "base": 450,
            "total": 1200
        },
        "pic": "3122_wicked_hatchet.png",
        "icon": "3122.png"
    },
    "3123": {
        "name": "死刑宣告",
        "description": "<mainText><stats><attention>20</attention>攻击力</stats><br><li><passive>撕裂：</passive>对敌方英雄造成物理伤害时会施加持续3秒的<status>25%重伤</status>效果。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 450,
            "total": 800
        },
        "pic": "",
        "icon": "3123.png"
    },
    "3124": {
        "name": "鬼索的狂暴之刃",
        "description": "<mainText><stats><attention>45%</attention>攻击速度<br><attention>20%</attention>暴击几率</stats><br><li><passive>怨怒：</passive>你的暴击几率会被转化为<OnHit>攻击特效</OnHit>伤害。已转化的每20%暴击几率提供<physicalDamage>40</physicalDamage><OnHit>攻击特效</OnHit>。<li><passive>沸腾打击：</passive>每第三次普攻会施加2次攻击特效。<br><br><rules><passive>怨怒</passive>无法从超过了100%的那部分暴击几率中获得收益。<passive>怨怒</passive>的攻击特效伤害转换率会受到暴击伤害修正的影响。</rules></mainText><br>",
        "gold": {
            "base": 900,
            "total": 2600
        },
        "pic": "",
        "icon": "3124.png"
    },
    "3126": {
        "name": "麦瑞德裂血手套",
        "description": "<stats>+40攻击力<br>+30%攻击速度<br>+25护甲<unique>唯一被动：</unique>普通攻击会在命中时造成目标最大生命值的4%的魔法伤害。</stats>",
        "gold": {
            "base": 775,
            "total": 3250
        },
        "pic": "",
        "icon": "3126.png"
    },
    "3128": {
        "name": "冥火之拥",
        "description": "<stats>+120法术强度<br>+10%冷却缩减</stats><br><br><active>唯一主动：</active>造成目标英雄最大生命值的15%的魔法伤害，并在接下来的4秒里，使他们所受的魔法伤害提高20%（冷却时间90秒）。",
        "gold": {
            "base": 850,
            "total": 3000
        },
        "pic": "3128_deathfire_grasp.png",
        "icon": "3128.png"
    },
    "3131": {
        "name": "神圣之剑",
        "description": "<stats>+25攻击力<br>+25%攻击速度</stats><br><br><unique>唯一被动：</unique> +18穿甲<br><active>唯一主动：</active>提供+100%攻击速度和100%暴击几率，持续3秒或3次暴击(90秒冷却时间)。",
        "gold": {
            "base": 800,
            "total": 2500
        },
        "pic": "3084_widowmaker.png",
        "icon": "3131.png"
    },
    "3132": {
        "name": "黄金之心",
        "description": "<stats>+250生命值</stats><br><br><unique>唯一被动：</unique>每10秒获得5枚额外金币。",
        "gold": {
            "base": 350,
            "total": 750
        },
        "pic": "",
        "icon": "3132.png"
    },
    "3133": {
        "name": "考尔菲德的战锤",
        "description": "<mainText><stats><attention>25</attention>攻击力<br><attention>10</attention>技能急速</stats></mainText><br>",
        "gold": {
            "base": 400,
            "total": 1100
        },
        "pic": "",
        "icon": "3133.png"
    },
    "3134": {
        "name": "锯齿短匕",
        "description": "<mainText><stats><attention>30</attention>攻击力</stats><br><li><passive>凿击：</passive>提供<scaleLethality>10穿甲</scaleLethality></mainText><br>",
        "gold": {
            "base": 400,
            "total": 1100
        },
        "pic": "",
        "icon": "3134.png"
    },
    "3135": {
        "name": "虚空之杖",
        "description": "<mainText><stats><attention>65</attention>法术强度<br><attention>40%</attention>法术穿透</stats></mainText><br>",
        "gold": {
            "base": 700,
            "total": 2800
        },
        "pic": "",
        "icon": "3135.png"
    },
    "3136": {
        "name": "幽魂面具",
        "description": "<stats>+35法术强度<br>+200生命值</stats><br><br><unique>唯一被动—疯狂：</unique>在与英雄作战时，每过1秒，你造成的伤害就会多2%(最大值：10%)。",
        "gold": {
            "base": 665,
            "total": 1500
        },
        "pic": "3136_haunting_guise.png",
        "icon": "3136.png"
    },
    "3137": {
        "name": "苦行僧之刃",
        "description": "<stats>+50%攻击速度<br>+45魔法抗性<br>+10%冷却缩减</stats><br><br><active>唯一主动—水银：</active>移除你英雄身上的所有减益效果。如果你的英雄是近战类型，这个装备还会提供50%的移动速度加成，持续1秒（冷却时间90秒）。",
        "gold": {
            "base": 300,
            "total": 2700
        },
        "pic": "3137_dervish_blade.png",
        "icon": "3137.png"
    },
    "3138": {
        "name": "利维坦之甲",
        "description": "<stats>+180生命值</stats><br><br><unique>唯一被动：</unique>你的英雄可从每层效果中获得32生命值，每完成一次击杀会获得2层，每完成一次助攻会获得1层（可叠加20层）。你的英雄在死亡时将损失当前层数的1/3。当叠加到20层时，你的英雄所受的伤害会减少15%。",
        "gold": {
            "base": 800,
            "total": 1200
        },
        "pic": "",
        "icon": "3138.png"
    },
    "3139": {
        "name": "水银弯刀",
        "description": "<mainText><stats><attention>40</attention>攻击力<br><attention>20%</attention>暴击几率<br><attention>40</attention>魔法抗性</stats><br><br><active>主动 - </active><active>水银：</active>移除你英雄身上的所有控制类减益效果并提供移动速度。</mainText><br>",
        "gold": {
            "base": 225,
            "total": 3000
        },
        "pic": "",
        "icon": "3139.png"
    },
    "3140": {
        "name": "水银饰带",
        "description": "<mainText><stats><attention>30</attention>魔法抗性</stats><br><br><active>主动 - </active><active>水银：</active>移除你英雄身上的所有控制类减益效果(<status>浮空</status>除外)。<br></mainText><br>",
        "gold": {
            "base": 850,
            "total": 1300
        },
        "pic": "",
        "icon": "3140.png"
    },
    "3141": {
        "name": "神秘之剑",
        "description": "<stats>+20攻击力<br>+0%来自药水的治疗效果</stats><br><br><unique>唯一被动—恐惧：</unique>每层【荣耀】提供+2攻击力。如果你有15层以上的【荣耀】，就会提供10%生命偷取。<br><unique>唯一被动—或杀或死：</unique>每次击杀提供4层【荣耀】，每次助攻提供1层荣耀，最多可叠加30层荣耀。每次死亡损失8层荣耀。",
        "gold": {
            "base": 1000,
            "total": 1000
        },
        "pic": "3034_kenyus_kukri.png",
        "icon": "3141.png"
    },
    "3142": {
        "name": "幽梦之灵",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>18</attention>穿甲<br><attention>15</attention>技能急速</stats><br><br><active>主动 - </active><active>鬼魂步伐：</active>提供移动速度和幽灵状态。<br><li><passive>鬼影萦绕：</passive>提供非战斗状态下的移动速度。<br><br><rules><status>幽灵</status>状态的单位无视其它单位的碰撞体积。</rules>。</mainText><br>",
        "gold": {
            "base": 800,
            "total": 3000
        },
        "pic": "",
        "icon": "3142.png"
    },
    "3143": {
        "name": "兰顿之兆",
        "description": "<mainText><stats><attention>250</attention>生命值<br><attention>90</attention>护甲<br><attention>10</attention>技能急速</stats><br><br><active>主动 - </active><active>谦卑：</active>暂时使附近敌人<status>减速</status>并使其攻击力和暴击伤害降低。<br><li><passive>坚如磐石：</passive>使所受的来自普攻的伤害降低。</mainText><br>",
        "gold": {
            "base": 600,
            "total": 2700
        },
        "pic": "",
        "icon": "3143.png"
    },
    "3144": {
        "name": "比尔吉沃特弯刀",
        "description": "<stats>+25攻击力<br>+10%生命偷取</stats><br><br><active>唯一主动：</active>对目标造成100魔法伤害，并减少目标25%的移动速度，持续2秒（冷却时间90秒）。",
        "gold": {
            "base": 350,
            "total": 1600
        },
        "pic": "3144_bilgewater_cutlass.png",
        "icon": "3144.png"
    },
    "3145": {
        "name": "海克斯科技发电机",
        "description": "<mainText><stats><attention>25</attention>法术强度<br><attention>150</attention>生命值</stats><br><li><passive>转速加快：</passive>对一名敌方英雄造成伤害时会附带额外伤害。</mainText><br>",
        "gold": {
            "base": 215,
            "total": 1050
        },
        "pic": "",
        "icon": "3145.png"
    },
    "3146": {
        "name": "海克斯科技枪刃",
        "description": "<stats>+40攻击力<br>+80法术强度</stats><br><br><unique>唯一被动：</unique>造成伤害的15%用来治疗自身。群体伤害的治疗效率只有33%。<br><active>唯一主动—闪电弹：</active>造成<scaleLevel>175 - 253</scaleLevel>(+30%x法术强度)魔法伤害并使目标英雄的移动速度减少40%，持续2秒（冷却时间：40秒，与其它<font color='#9999FF'>海克斯科技</font>装备共享冷却时间）。",
        "gold": {
            "base": 750,
            "total": 3400
        },
        "pic": "3146_hextech_gunblade.png",
        "icon": "3146.png"
    },
    "3147": {
        "name": "德拉克萨的暮刃",
        "description": "<stats>+60攻击力<br>+10%冷却缩减</stats><br><br><unique>唯一被动：</unique>+21穿甲<br><unique>唯一被动—夜袭者：</unique>在脱离敌方视野至少1秒以后，你的下次对敌方英雄发起的普攻将在命中时造成<scaleLevel>30 - 150</scaleLevel>额外物理伤害并使该英雄减速99%，持续0.25秒。远程攻击不施加减速效果。(在被一名敌方英雄看见后，可持续5秒)。",
        "gold": {
            "base": 700,
            "total": 2900
        },
        "pic": "3147.png",
        "icon": "3147.png"
    },
    "3148": {
        "name": "太空海克斯科技枪刃",
        "description": "<stats>+40攻击力<br>+80法术强度</stats><br><br><unique>唯一被动：</unique>造成伤害的4%用来治疗自身。群体伤害的治疗效率只有33%。<br><active>唯一主动—闪电弹：</active>造成<scaleLevel>175 - 253</scaleLevel>(+30%x法术强度)魔法伤害并使目标英雄的移动速度减少40%，持续2秒（冷却时间：40秒，与其它<font color='#9999FF'>海克斯科技</font>装备共享冷却时间）。",
        "gold": {
            "base": 750,
            "total": 3400
        },
        "pic": "",
        "icon": "3148.png"
    },
    "3149": {
        "name": "太空破败王者之刃",
        "description": "<stats>+40攻击力<br>+25%攻击速度<br>+3%生命偷取</stats><br><br><unique>唯一被动：</unique>你的普通攻击在命中时会造成相当于目标8%(若你是近战英雄则为12%)当前生命值的额外物理伤害。<br><active>唯一主动：</active>造成100魔法伤害，并偷取目标25%的移动速度，持续3秒（冷却时间90秒）。<br><br><rules> 最小额外物理伤害为15。<br>对野怪和小兵的最大额外物理伤害为120。<br>使用者的生命偷取属性可应用于额外物理伤害效果上。</rules>",
        "gold": {
            "base": 700,
            "total": 3300
        },
        "pic": "",
        "icon": "3149.png"
    },
    "3151": {
        "name": "兰德里的折磨",
        "description": "<stats>+75法术强度<br>+300生命值</stats><br><br><unique>唯一被动—疯狂：</unique>在与英雄作战时，每过1秒，你造成的伤害就会多2%(最大值：10%)。<br><unique>唯一被动—折磨：</unique>技能会灼烧目标3秒，每秒造成相当于目标1.5%最大生命值的魔法伤害。灼烧伤害会在对抗移动受损的单位时提升至2.5%。",
        "gold": {
            "base": 750,
            "total": 3100
        },
        "pic": "3151_liandrys_lament.png",
        "icon": "3151.png"
    },
    "3152": {
        "name": "海克斯科技火箭腰带",
        "description": "<mainText><stats><attention>90</attention>法术强度<br><attention>6</attention>法术穿透<br><attention>250</attention>生命值<br><attention>15</attention>技能急速</stats><br><br><active>主动 - </active><active>超音速：</active>朝着目标方向冲刺，释放一道魔法弹圆弧，造成魔法伤害。随后，在朝着敌方英雄移动时提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术穿透。</mainText><br>",
        "gold": {
            "base": 865,
            "total": 3200
        },
        "pic": "",
        "icon": "3152.png"
    },
    "3153": {
        "name": "破败王者之刃",
        "description": "<mainText><stats><attention>40</attention>攻击力<br><attention>25%</attention>攻击速度<br><attention>8%</attention>生命偷取</stats><br><li><passive>雾之锋：</passive>攻击附带基于敌方当前生命值的额外物理伤害。<li><passive>虹吸：</passive>攻击一名敌方英雄3次后，会造成魔法伤害并偷取移动速度。<br><br>装备对近战携带者和远程携带者会有不同的性能。</mainText><br>",
        "gold": {
            "base": 525,
            "total": 3300
        },
        "pic": "",
        "icon": "3153.png"
    },
    "3154": {
        "name": "瑞格之灯",
        "description": "<stats>+25攻击力<br>+20%攻击速度<br>+12%生命偷取<br>+10%法术吸血</stats><br><br><active>唯一主动：</active>放置一个<font color='#BBFFFF'>侦查守卫</font>，以监视附近的区域，持续180秒（180秒冷却时间）。",
        "gold": {
            "base": 100,
            "total": 1650
        },
        "pic": "3154_wriggleslantern.png",
        "icon": "3154.png"
    },
    "3155": {
        "name": "海克斯饮魔刀",
        "description": "<mainText><stats><attention>25</attention>攻击力<br><attention>35</attention>魔法抗性</stats><br><li><passive>救主灵刃：</passive>在受到将使你的生命值跌到30%以下的魔法伤害时，提供魔法伤害护盾。</mainText><br>",
        "gold": {
            "base": 500,
            "total": 1300
        },
        "pic": "",
        "icon": "3155.png"
    },
    "3156": {
        "name": "玛莫提乌斯之噬",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>50</attention>魔法抗性<br><attention>20</attention>技能急速</stats><br><li><passive>救主灵刃：</passive>在受到将使你的生命值跌到30%以下的魔法伤害时，提供魔法伤害护盾。当<passive>救主灵刃</passive>触发时，获得全能吸血，持续到战斗结束为止。  </mainText><br>",
        "gold": {
            "base": 500,
            "total": 2900
        },
        "pic": "",
        "icon": "3156.png"
    },
    "3157": {
        "name": "中娅沙漏",
        "description": "<mainText><stats><attention>80</attention>法术强度<br><attention>45</attention>护甲<br><attention>15</attention>技能急速</stats><br><br><active>主动 - </active><active>凝滞：</active>在2.5秒里<status>免疫伤害</status>且<status>不可被选取</status>，但在此期间里无法采取任何其它行动。</mainText><br>",
        "gold": {
            "base": 350,
            "total": 3000
        },
        "pic": "",
        "icon": "3157.png"
    },
    "3158": {
        "name": "明朗之靴",
        "description": "<mainText><stats><attention>20</attention>技能急速<br><attention>45</attention>移动速度</stats><br><li>提供12召唤师技能急速。<br><br><flavorText>“这个物品是为了庆祝在2010年12月10日艾欧尼亚和诺克萨斯的重赛中，艾欧尼亚取得胜利。”</flavorText></mainText><br>",
        "gold": {
            "base": 650,
            "total": 950
        },
        "pic": "",
        "icon": "3158.png"
    },
    "3159": {
        "name": "基渣的幽魂之灯",
        "description": "<stats>+15攻击力<br>+30%攻击速度</stats><br><br><unique>唯一被动—割裂：</unique>以野怪为目标的普通攻击会造成75额外魔法伤害，并治疗自身10生命值。<br><unique>唯一被动：</unique>击杀野怪获得的赏金提升30%。<br><unique>唯一被动—陷阱侦测：</unique>可以让附近已潜行的敌方陷阱暴露出来。<br><active>唯一主动—猎人之眼：</active>制造一团能够侦测潜行的薄雾，来获得目标地区的视野，持续5秒，并暴露进入该区域的敌方英雄，持续3秒（冷却时间60秒）。",
        "gold": {
            "base": 180,
            "total": 1430
        },
        "pic": "3159_soulsight_lantern.png",
        "icon": "3159.png"
    },
    "3160": {
        "name": "烈焰之炬",
        "description": "<stats>+12攻击力<br>+30%攻击速度</stats><br><br><unique>唯一被动—割裂：</unique>普通攻击会造成（25+烈焰之炬层数）魔法伤害（对小兵和野怪的伤害为300%）并治疗自身10生命值。烈焰之炬层数可通过击杀英雄、获得助攻以及击杀大型野怪来获得。<br><unique>唯一被动：</unique>击杀野怪获得的赏金提升30%。<br><active>唯一主动：</active>放置1个<font color='#BBFFFF'>隐形的守卫</font>，来监视一个区域，持续180秒（冷却时间：180秒）。<br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 1800,
            "total": 1800
        },
        "pic": "3160.png",
        "icon": "3160.png"
    },
    "3161": {
        "name": "朔极之矛",
        "description": "<stats>+65攻击力<br>+200生命值<br>+10%冷却缩减</stats><br><br><unique>唯一被动：</unique>使来自英雄的攻击和技能的伤害减少10加上15%额外攻击力(最大值：300)。<br><unique>唯一被动：</unique>如果附近有3名或以上的敌方英雄，那么在命中一次普攻时即可获得<unlockedPassive>巨龙之心</unlockedPassive> (90秒冷却时间)。<br><br><unlockedPassive>巨龙之心：</unlockedPassive>多格挡300%伤害，持续8秒, 在参与击杀后刷新。<br><br><rules></rules>",
        "gold": {
            "base": 900,
            "total": 3000
        },
        "pic": "",
        "icon": "3161.png"
    },
    "3162": {
        "name": "太空比尔吉沃特弯刀",
        "description": "<stats>+25攻击力<br>+2.5%生命偷取</stats><br><br><active>唯一主动：</active>对目标造成100魔法伤害，并减少目标25%的移动速度，持续2秒（冷却时间90秒）。",
        "gold": {
            "base": 350,
            "total": 1600
        },
        "pic": "",
        "icon": "3162.png"
    },
    "3163": {
        "name": "太空玛莫提乌斯之噬",
        "description": "<stats>+50攻击力<br>+50魔法抗性<br>+10%冷却缩减</stats><br><br><unique>唯一被动—救主灵刃：</unique>如果你的生命值即将在承受魔法伤害后低于30%，那么此物品会在此之前为你制造一个吸收350(+1x魔法抗性)魔法伤害的护盾，持续5秒（冷却时间：90秒）。<br><unlockedPassive>破釜沉舟：</unlockedPassive>当<i>救主灵刃</i>触发时，提供20攻击力、2.5%法术吸血和2.5%生命偷取，持续到脱离战斗为止。",
        "gold": {
            "base": 850,
            "total": 3250
        },
        "pic": "",
        "icon": "3163.png"
    },
    "3165": {
        "name": "莫雷洛秘典",
        "description": "<mainText><stats><attention>90</attention>法术强度<br><attention>300</attention>生命值</stats><br><li><passive>苦难：</passive>对敌方英雄造成魔法伤害时会施加<status>25%重伤</status>效果，持续3秒。如果目标的生命值低于50%，那么这个效果会提升至<status>40%重伤</status>。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 450,
            "total": 2500
        },
        "pic": "",
        "icon": "3165.png"
    },
    "3166": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—骨齿图腾：</unique>放置一个隐形的守卫，来监视一个区域，持续60秒（冷却时间：120秒）。主动效果会在收集到6个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3166_bonetooth_necklace_y_1.png",
        "icon": "3166.png"
    },
    "3167": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—骨齿图腾：</unique>放置一个隐形的守卫，来监视一个区域，持续60秒（冷却时间：120秒）。主动效果会在收集到6个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3166_bonetooth_necklace_y_2.png",
        "icon": "3167.png"
    },
    "3168": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—骨齿图腾：</unique>放置一个隐形的守卫，来监视一个区域，持续120秒（冷却时间：120秒）。主动效果会在收集到20个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3166_bonetooth_necklace_y_3.png",
        "icon": "3168.png"
    },
    "3169": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—骨齿图腾：</unique>放置一个隐形的守卫，来监视一个区域，持续120秒（冷却时间：120秒）。主动效果会在收集到20个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3166_bonetooth_necklace_y_4.png",
        "icon": "3169.png"
    },
    "3170": {
        "name": "月华咒刃",
        "description": "<stats>+50法术强度<br>+50护甲<br>+50魔法抗性</stats><br><br><unique>唯一被动—韧性：</unique>受到的晕眩、减速、嘲讽、恐惧、沉默、致盲、变形和禁锢的持续时间减少35%。",
        "gold": {
            "base": 580,
            "total": 2400
        },
        "pic": "3170_moonflairspellblade.png",
        "icon": "3170.png"
    },
    "3171": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—骨齿图腾：</unique>放置一个隐形的守卫，来监视一个区域，持续180秒（冷却时间：60秒）。主动效果会在20层时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3166_bonetooth_necklace_y_5.png",
        "icon": "3171.png"
    },
    "3172": {
        "name": "灵风",
        "description": "<stats>+50攻击力<br>+40%攻击速度<br>+10%移动速度</stats><br><br><unique>唯一被动—韧性：</unique>受到的晕眩、减速、嘲讽、恐惧、沉默、致盲、变形和禁锢的持续时间减少35%。",
        "gold": {
            "base": 900,
            "total": 2800
        },
        "pic": "3172_zephyr.png",
        "icon": "3172.png"
    },
    "3173": {
        "name": "太空明朗之靴",
        "description": "<groupLimit>限购1个鞋类装备。</groupLimit><br><br><unique>唯一被动：</unique> +10%冷却缩减<br><unique>唯一被动—强化移动：</unique>+45移动速度<br><br><rules><font color='#FDD017'>“这个装备专用于太空。”</font></rules>",
        "gold": {
            "base": 600,
            "total": 900
        },
        "pic": "3173_eleisas_miracle.png",
        "icon": "3173.png"
    },
    "3174": {
        "name": "雅典娜的邪恶圣杯",
        "description": "<stats>+30法术强度<br>+30魔法抗性<br>+10%冷却缩减<br><mana>+100%基础法力回复 </mana></stats><br><br><unique>唯一被动：</unique>将对英雄造成的35%<a href='premitigation'><font color='#6666FF'><u>原始</u></font></a>伤害储存为【鲜血充能】，最多可储存<scaleLevel>100 - 250</scaleLevel>。对友方英雄施放治疗或护盾时，会消耗相当于该次治疗或护盾值的100%的充能层数，来为该英雄提供与此层数等值的治疗效果。<br><unique>唯一被动—失谐：</unique>你所拥有的每25%基础法力回复提供5法术强度。会使你其它装备上的<unique>和谐</unique>效果失效。</mana><br><br><rules>（【鲜血充能】的最大储存数额基于英雄等级。治疗增幅可作用于总治疗量）</rules>",
        "gold": {
            "base": 400,
            "total": 2100
        },
        "pic": "3174_athenesunholygrail.png",
        "icon": "3174.png"
    },
    "3175": {
        "name": "卡兹克的头颅",
        "description": "<unique>唯一主动—骨齿图腾：</unique>放置一个隐形的守卫，来监视一个区域，持续180秒（冷却时间：90秒）。每位玩家最多只能同时在地图上放置3个侦查守卫。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品，<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>雷恩加尔发动狩猎律动后，会在潜行时获得移动速度加成。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3175.png",
        "icon": "3175.png"
    },
    "3176": {
        "name": "奥术螺旋",
        "description": "<stats>+400生命值<br>+300法力值<br>+10%冷却缩减</stats><br><br><unique>唯一被动：</unique>在花费法力的同时，你的生命会得到回复，回复量相当于已花费的法力值的30%。",
        "gold": {
            "base": 600,
            "total": 2100
        },
        "pic": "",
        "icon": "3176.png"
    },
    "3177": {
        "name": "守护者之刃",
        "description": "<mainText><stats><attention>30</attention>攻击力<br><attention>150</attention>生命值<br><attention>15</attention>技能急速</stats><br><li><passive>传说：</passive>这个单位会被视为一件<rarityLegendary>传说</rarityLegendary>装备。</mainText><br>",
        "gold": {
            "base": 950,
            "total": 950
        },
        "pic": "",
        "icon": "3177.png"
    },
    "3178": {
        "name": "离子火花",
        "description": "<stats>+40%攻击速度<br>+250生命值<unique>唯一被动：</unique>每3次攻击后的第4次攻击将会释放出连环闪电，最多对4个目标造成125魔法伤害。</stats>",
        "gold": {
            "base": 575,
            "total": 1975
        },
        "pic": "",
        "icon": "3178.png"
    },
    "3179": {
        "name": "黯影阔剑",
        "description": "<mainText><stats><attention>50</attention>攻击力<br><attention>10</attention>穿甲<br><attention>15</attention>技能急速</stats><br><li><passive>封锁：</passive>在被一个敌方守卫发现时，使你附近的所有敌方陷阱显形并使敌方守卫失效。普通攻击会立刻击杀被显形的陷阱，并对守卫造成三倍伤害。</mainText><br>",
        "gold": {
            "base": 500,
            "total": 2300
        },
        "pic": "",
        "icon": "3179.png"
    },
    "3180": {
        "name": "奥黛恩的面纱",
        "description": "<stats>+350生命值<br>+350法力值<br>+50魔法抗性</stats><br><br><unique>唯一被动：</unique>减少并储存你的英雄所受伤害10%的魔法伤害。<br><active>唯一主动：</active>对周围敌军造成200+（已储存的魔法）（最大值400）魔法伤害（冷却时间90秒）。",
        "gold": {
            "base": 580,
            "total": 2400
        },
        "pic": "3180_odynsveil.png",
        "icon": "3180.png"
    },
    "3181": {
        "name": "破舰者",
        "description": "<mainText><stats><attention>50</attention>攻击力<br><attention>400</attention>生命值<br><attention>150%</attention>基础生命回复</stats><br><li><passive>登舰小组：</passive>在附近没有友方英雄时，你获得<scaleArmor>护甲</scaleArmor>和<scaleMR>魔法抗性</scaleMR>并且攻击对防御塔造成的伤害提升。附近的大型小兵获得<scaleArmor>护甲</scaleArmor>和<scaleMR>魔法抗性</scaleMR>和对防御塔的伤害提升。<br><br><rules>在一名友军过于靠近时，【登舰小组】的双抗加成会在3秒里持续衰减。</rules><br></mainText><br>",
        "gold": {
            "base": 825,
            "total": 2800
        },
        "pic": "",
        "icon": "3181.png"
    },
    "3183": {
        "name": "普莉斯拉的祝福",
        "description": "<stats>+25生命回复/5秒</stats><br><br><unique>唯一被动：</unique>+15%占领速率（不和其他占领速率叠加）。<active>唯一主动：</active>+30%移动速度，持续2秒（60秒冷却时间）。",
        "gold": {
            "base": 999,
            "total": 1299
        },
        "pic": "",
        "icon": "3183.png"
    },
    "3184": {
        "name": "守护者战锤",
        "description": "<mainText><stats><attention>25</attention>攻击力<br><attention>150</attention>生命值<br><attention>7%</attention>生命偷取</stats><br><li><passive>传说：</passive>这个单位会被视为一件<rarityLegendary>传说</rarityLegendary>装备。</mainText><br>",
        "gold": {
            "base": 950,
            "total": 950
        },
        "pic": "",
        "icon": "3184.png"
    },
    "3185": {
        "name": "光明使者",
        "description": "<stats>+30攻击力<br>+30%暴击几率</stats><br><br><unique>唯一被动：</unique>暴击会使你的目标开始流血，在3秒里持续受到相当于你90%额外攻击力的魔法伤害，并暴露在你的视野内。<br><unique>唯一被动—陷阱侦测：</unique>可以让附近已潜行的敌方陷阱暴露出来。<br><active>唯一主动：</active>制造一团能够侦测潜行的薄雾，来获得目标地区的视野，持续5秒，并暴露进入该区域的敌方英雄，持续3秒（冷却时间：60秒）。",
        "gold": {
            "base": 350,
            "total": 2350
        },
        "pic": "3185_lightbringer.png",
        "icon": "3185.png"
    },
    "3186": {
        "name": "吉泰的夺命剃刀",
        "description": "<stats>+30攻击力<br>+40%攻击速度</stats><br><br><unique>唯一被动：</unique>你的攻击会造成魔法伤害，其值为目标最大生命值的2.5%。",
        "gold": {
            "base": 700,
            "total": 2575
        },
        "pic": "3186_kitaesbloodrazor.png",
        "icon": "3186.png"
    },
    "3187": {
        "name": "奥术探测器",
        "description": "<stats>+225生命值<br>+250法力值<br>+25护甲<br>+20%冷却缩减</stats><br><br><unique>唯一被动—陷阱侦测：</unique>提供附近敌方陷阱的<font color='#ee91d7'>真实视野</font>。<br><active>唯一主动—猎人之眼：</active>制造一团奥术迷雾，来获得目标地区的视野，持续5秒，并显形该区域内的敌方英雄，持续3秒（冷却时间60秒）。",
        "gold": {
            "base": 350,
            "total": 2050
        },
        "pic": "3187_hextechsweeper.png",
        "icon": "3187.png"
    },
    "3188": {
        "name": "黯炎火炬",
        "description": "<stats>+80法术强度<br>+10%冷却缩减</stats><br><br><active>唯一主动：</active>在接下来的4秒里，总共造成目标最大生命值的20%的魔法伤害，并使他们所受的所有后续魔法伤害提高20%（冷却时间90秒）。",
        "gold": {
            "base": 970,
            "total": 2720
        },
        "pic": "3188_blackfire_torch.png",
        "icon": "3188.png"
    },
    "3190": {
        "name": "钢铁烈阳之匣",
        "description": "<mainText><stats><attention>200</attention>生命值<br><attention>20</attention>技能急速<br><attention>30</attention>护甲<br><attention>30</attention>魔法抗性</stats><br><br><active>主动 - </active><active>虔诚：</active>为附近友军提供持续衰减的<shield>护盾值</shield>。<br><li><passive>奉献：</passive>为附近友方英雄提供护甲和<scaleMR>魔法抗性</scaleMR>。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得护甲和魔法抗性加成至<passive>奉献</passive>。<br><br></mainText><br>",
        "gold": {
            "base": 300,
            "total": 2500
        },
        "pic": "",
        "icon": "3190.png"
    },
    "3191": {
        "name": "探索者的护臂",
        "description": "<mainText><stats><attention>30</attention>法术强度<br><attention>15</attention>护甲</stats><br><li><passive>女巫之道：</passive>击杀一个单位提供<scaleArmor>0.5护甲</scaleArmor>(最多提供<scaleArmor>15护甲</scaleArmor>)。</mainText><br>",
        "gold": {
            "base": 265,
            "total": 1000
        },
        "pic": "",
        "icon": "3191.png"
    },
    "3193": {
        "name": "石像鬼石板甲",
        "description": "<mainText><stats><attention>60</attention>护甲<br><attention>60</attention>魔法抗性<br><attention>15</attention>技能急速</stats><br><br><active>主动 - </active><active>坚不可摧：</active>获得持续衰减的护盾值和体型提升。<br><li><passive>巩固：</passive>在受到来自一名英雄的伤害时，提供一层<scaleArmor>额外护甲</scaleArmor>和<scaleMR>额外魔法抗性</scaleMR>。<br><br><rules>至多5层；每个英雄可提供1层。</rules></mainText><br>",
        "gold": {
            "base": 1050,
            "total": 3200
        },
        "pic": "",
        "icon": "3193.png"
    },
    "3194": {
        "name": "适应性头盔",
        "description": "<stats>+350生命值<br>+55魔法抗性<br>+100%基础生命回复<br>+10%冷却缩减</stats><br><br><unique>唯一被动：</unique>承受来自一个技能或效果的魔法伤害时，使相同技能或效果的所有后续魔法伤害减少20%，持续4秒。",
        "gold": {
            "base": 1000,
            "total": 2800
        },
        "pic": "3194.png",
        "icon": "3194.png"
    },
    "3196": {
        "name": "海克斯核心mk-1型",
        "description": "<stats>每级+3法术强度<br>每级+15法力</stats><br><br><unique>唯一被动—发展：</unique>维克托可以升级他的一个基础技能。",
        "gold": {
            "base": 1150,
            "total": 1150
        },
        "pic": "3196_augmentq.png",
        "icon": "3196.png"
    },
    "3197": {
        "name": "海克斯核心mk-2型",
        "description": "<stats>每级+6法术强度<br>每级+20法力</stats><br><br><unique>唯一被动—发展：</unique>维克托可以升级他的一个基础技能。",
        "gold": {
            "base": 1000,
            "total": 2150
        },
        "pic": "3197_augmentw.png",
        "icon": "3197.png"
    },
    "3198": {
        "name": "完美海克斯核心",
        "description": "<stats>每级+10法术强度<br>每级+25法力</stats><br><br><unique>唯一被动—光荣进化：</unique>维克托已经达到了他技术的巅峰，除了升级他的小技能外，他的终极技能【R混乱风暴】也得到了升级。",
        "gold": {
            "base": 850,
            "total": 3000
        },
        "pic": "3198_augmente.png",
        "icon": "3198.png"
    },
    "3200": {
        "name": "海克斯核心原型",
        "description": "<stats>每级+1法术强度<br>每级+10法力</stats><br><br><unique>唯一被动—发展：</unique>这个装备可以升级3次，来增强维克托的基础技能。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3200_HexCore.png",
        "icon": "3200.png"
    },
    "3204": {
        "name": "尖刺外套",
        "description": "<stats>+20护甲</stats><br><br><unique>唯一被动—摄元倒刺：</unique>在承受来自野怪的伤害时，增加40生命回复/5秒和30法力回复/5秒。攻击中的野怪会在3秒的持续时间里损失共5%最大生命值（最大伤害：150）。<br><active>唯一主动—猎人之眼：</active>制造一团能够侦测潜行的薄雾，来获得目标地区的视野，持续5秒，并暴露进入该区域的敌方英雄，持续3秒（冷却时间60秒）。",
        "gold": {
            "base": 75,
            "total": 725
        },
        "pic": "3205_quillcoat.png",
        "icon": "3204.png"
    },
    "3205": {
        "name": "尖刺外套",
        "description": "<stats>+20护甲</stats><br><br><unique>唯一被动—摄元倒刺：</unique>在承受来自野怪的伤害时，增加40生命回复/5秒和30法力回复/5秒。攻击中的野怪会在3秒的持续时间里损失共5%最大生命值（最大伤害：150）。<br><active>唯一主动—猎人守卫：</active>放置一个<font color='#BBFFFF'>隐形的守卫</font>，来监视一个区域，持续180秒（冷却时间180秒）。<br><br><i>（同名的唯一被动和唯一主动不会叠加。）</i>",
        "gold": {
            "base": 75,
            "total": 725
        },
        "pic": "3205_quillcoat.png",
        "icon": "3205.png"
    },
    "3206": {
        "name": "破碎幽灵之精魄",
        "description": "<stats>+50法术强度<br>+10%冷却缩减</stats><br><br><unique>唯一被动—精魄吸取：</unique>每击杀一个大型或史诗级野怪，就会获得2法术强度（上限：30）。<br><unique>唯一被动—屠夫：</unique>对野怪造成的伤害提升30%，并且对野怪造成的伤害值的6%将用来恢复自身的生命值，3%将用来恢复自身的法力值。<br><unique>唯一被动—生态保护：</unique>每1.5秒获得一层赏金效果（最多可叠到80层）。在击杀一个大型野怪或史诗级野怪后，最多可将40层效果转化为40金币。<br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 480,
            "total": 2020
        },
        "pic": "3206_souleaterwraith.png",
        "icon": "3206.png"
    },
    "3207": {
        "name": "远古魔像之精魄",
        "description": "<stats>+25%额外生命值<br>+200生命值<br>+10%冷却缩减<br>+20护甲</stats><br><unique><br>唯一被动—精魄棘刺：</unique><stats>在承受来自野怪的伤害时，增加60生命回复/5秒和45法力回复/5秒。攻击中的野怪会在3秒的持续时间里损失5%最大生命值（最大伤害：195）。<br><unique>唯一被动—生态保护：</unique>每1.5秒获得一层赏金效果（最多可叠到80层）。在击杀一个大型野怪或史诗级野怪后，最多可将40层效果转化为40金币。<br><active>唯一主动—精魄守卫：</active>放置一个<font color='#BBFFFF'>隐形的守卫</font>，来监视一个区域，持续180秒（冷却时间180秒）。</i><br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 450,
            "total": 1975
        },
        "pic": "3207_souleatergolem.png",
        "icon": "3207.png"
    },
    "3208": {
        "name": "远古魔像之精魄",
        "description": "<stats>+25%额外生命值<br>+200生命值<br>+10%冷却缩减<br>+20护甲</stats><br><unique><br>唯一被动—摄元倒刺：</unique><stats>在承受来自野怪的伤害时，增加60生命回复/5秒和45法力回复/5秒。攻击中的野怪会在3秒的持续时间里损失5%最大生命值（最大伤害：195）。<br><unique>唯一被动—生态保护：</unique>每1.5秒获得一层赏金效果（最多可叠到80层）。在击杀一个大型野怪或史诗级野怪后，最多可将40层效果转化为40金币。<br><unique>唯一被动—陷阱侦测：</unique>可以让附近已潜行的敌方陷阱暴露出来。<br><active>唯一主动—猎人之眼：</active>制造一团能够侦测潜行的薄雾，来获得目标地区的视野，持续5秒，并暴露进入该区域的敌方英雄，持续3秒（冷却时间60秒）。<br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 450,
            "total": 1975
        },
        "pic": "3208_souleatergolem_tt.png",
        "icon": "3208.png"
    },
    "3209": {
        "name": "蜥蜴长老之精魄",
        "description": "<stats>+30攻击力<br>+10%冷却缩减</stats><br><br><unique>唯一被动—焚烧：</unique>在造成物理伤害的同时，也会在3秒的持续时间里对目标造成总共16-50（基于英雄等级）真实伤害。<br><unique>唯一被动—屠夫：</unique>对野怪造成的伤害提升20%，并且对野怪造成的伤害值的6%将用来恢复自身的生命值，3%将用来恢复自身的法力值。<br><unique>唯一被动—生态保护：</unique>每1.5秒获得一层赏金效果（最多可叠到80层）。在击杀一个大型野怪或史诗级野怪后，最多可将40层效果转化为40金币。<br><br><groupLimit>只能持有1个金币收入型装备。</groupLimit>",
        "gold": {
            "base": 580,
            "total": 1920
        },
        "pic": "3209_souleaterlizard.png",
        "icon": "3209.png"
    },
    "3210": {
        "name": "破法剑（仅近战可用）",
        "description": "<stats>+40攻击力<br>+25魔法抗性<br>+20%暴击几率</stats><br><br><unique>唯一被动—韧性：</unique>受到的晕眩、减速、嘲讽、恐惧、沉默、致盲和禁锢的持续时间减少35%。<br><unique>唯一被动—救主灵刃：</unique>如果你在承受某魔法伤害后生命值会低于30%，此物品会在此之前为你制造一个吸收400魔法伤害的护盾，持续5秒（冷却时间90秒）。<br><br><i>（同名的唯一被动效果不叠加。）</i>",
        "gold": {
            "base": 650,
            "total": 2750
        },
        "pic": "3210.png",
        "icon": "3210.png"
    },
    "3211": {
        "name": "幽魂斗篷",
        "description": "<mainText><stats><attention>250</attention>生命值<br><attention>25</attention>魔法抗性</stats><br><li><passive>无实体：</passive>在受到来自英雄的伤害后，回复生命值。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 1250
        },
        "pic": "",
        "icon": "3211.png"
    },
    "3222": {
        "name": "米凯尔的祝福",
        "description": "<mainText><stats><attention> 16%</attention>治疗和护盾强度<br><attention>50</attention>魔法抗性<br><attention>15</attention>技能急速<br><attention>100%</attention>基础法力回复</stats><br><br><active>主动 - </active><active>纯化：</active>移除一名友方英雄身上的所有控制效果(<status>击飞</status>和<status>压制</status>除外)并回复生命值。</mainText><br>",
        "gold": {
            "base": 600,
            "total": 2300
        },
        "pic": "",
        "icon": "3222.png"
    },
    "3230": {
        "name": "太空贪欲九头蛇",
        "description": "<stats>+80攻击力<br>+100%基础生命回复<br>+4%生命偷取</stats><br><br><passive>被动：</passive>这个物品所造成的伤害会附带50%的总生命偷取。<br><unique>唯一被动—顺劈：</unique>普通攻击在命中时会对目标周围的单位造成额外物理伤害，伤害值相当于你20%到60%的总攻击力（越靠近中心的敌人所受的伤害越高）。<br><active>唯一主动—新月： </active>对身边的敌方单位造成60%到100%总攻击力的物理伤害（越靠近中心的敌人所受的伤害越高）（冷却时间：10秒）。",
        "gold": {
            "base": 400,
            "total": 3500
        },
        "pic": "",
        "icon": "3230.png"
    },
    "3231": {
        "name": "太空水银弯刀",
        "description": "<stats>+50攻击力<br>+35魔法抗性<br>+2.5%生命偷取</stats><br><br><active>唯一主动—水银：</active>移除你英雄身上的所有控制效果，并提供50%移动速度加成，持续1秒（冷却时间：90秒）。",
        "gold": {
            "base": 325,
            "total": 3400
        },
        "pic": "",
        "icon": "3231.png"
    },
    "3240": {
        "name": "附魔：喧哗",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【喧哗】的加成。<br><br><unique>唯一被动—喧哗：</unique>每当你通过攻击或者技能对一个单体目标造成伤害时，你都会获得12%的移动速度加成，这个加速效果会在2秒里持续衰减。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "3240.png",
        "icon": "3240.png"
    },
    "3241": {
        "name": "附魔：欢欣",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【欢欣】的加成。<br><br><unique>唯一被动—欢欣：</unique>你获得+20移动速度。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "3241.png",
        "icon": "3241.png"
    },
    "3242": {
        "name": "附魔：统帅",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【统帅】的加成。<br><br><unique>唯一被动—统帅：</unique>正在朝着你奔跑的友军英雄会获得10%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "3242.png",
        "icon": "3242.png"
    },
    "3243": {
        "name": "附魔：失真",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【失真】的加成。<br><br><unique>唯一被动—失真：</unique>传送、闪现和幽灵疾步这三个召唤师技能会减少15%的冷却时间，并获得额外的机动能力：<br><br><font color='#FFDD00'>幽灵疾步：</font>移动速度加成从27%提升至40%。<br><font color='#FFDD00'>闪现：</font>在施法后的1秒里，拥有20%的移动速度加成。<br><font color='#FFDD00'>传送：</font>在使用后的3秒里，拥有30%的移动速度加成。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "3243.png",
        "icon": "3243.png"
    },
    "3244": {
        "name": "附魔：家园卫士",
        "description": "<groupLimit>每个附魔类型限购数：1。</groupLimit><br>附魔这双鞋子，以获得【家园卫士】的加成。<br><br><unique>唯一被动—家园卫士：</unique>在你访问商店时，你的生命回复和法力回复会得到极大提升，且获得200%的移动速度加成，该移动速度加成会在8秒里持续衰减。在造成或受到伤害时，移动速度加成和回复加成会失效6秒。<br><br><rules>（同名的唯一被动效果不叠加。）</rules>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "3244.png",
        "icon": "3244.png"
    },
    "3252": {
        "name": "偷猎者的短匕",
        "description": "<stats>+10攻击力</stats><br><br><unique>唯一被动—猎头者：</unique>在击杀任一敌人后，你的下一个伤害型技能将造成40额外物理伤害(30秒冷却时间)。<br><unique>唯一被动：</unique>在从敌方野区偷猎4个大型野怪之后，会变成【锯齿短匕】。",
        "gold": {
            "base": 150,
            "total": 500
        },
        "pic": "3006_berserkers_greaves_c.png",
        "icon": "3252.png"
    },
    "3285": {
        "name": "卢登的回声",
        "description": "<stats>+90法术强度<br><mana>+600法力</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—急速：</unique>这个装备提供额外的10%冷却缩减。<br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下一个伤害型技能会将静电全部释放，对最多4个目标造成100(+10%法术强度)魔法伤害。",
        "gold": {
            "base": 1050,
            "total": 3200
        },
        "pic": "3285.png",
        "icon": "3285.png"
    },
    "3286": {
        "name": "卢登的回声",
        "description": "<stats>+100法术强度<br>+7%移动速度</stats><br><br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下一个伤害型技能会将静电全部释放，对最多4个目标造成100(+0.1x法术强度)魔法伤害。",
        "gold": {
            "base": 1090,
            "total": 2790
        },
        "pic": "3285.png",
        "icon": "3286.png"
    },
    "3290": {
        "name": "双生暗影",
        "description": "<stats>+80法术强度<br>+10%冷却缩减<br>+6%移动速度</stats><br><br><unique>唯一被动—陷阱侦测：</unique>可以让附近已潜行的敌方陷阱暴露出来。<br><active>唯一主动—狩猎：</active>召唤2个免疫伤害、持续6秒的幽灵，来寻找最近的2名敌方英雄。如果它们触碰到了一名敌方英雄，那么会将该英雄的移动速度减少40%，并使他暴露2.5秒。<br><br>如果幽灵无法找到目标，那么它就会返回到施法者身上。通过这种方式成功返回的鬼魂，将会使这个道具的冷却时间减少20秒（冷却时间：60秒）。",
        "gold": {
            "base": 750,
            "total": 2500
        },
        "pic": "3290_wraith_collar_cs.png",
        "icon": "3290.png"
    },
    "3301": {
        "name": "上古钱币",
        "description": "<stats>+5移动速度<br>+5%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你回复<scaleMana>6%</scaleMana>已损失的法力值（最低回复10）。如果附近有一名友方英雄，那么有时钱币会提供<gold>28</gold>金币作为替代。攻城小兵总会掉落钱币。<hr><passive>任务：</passive>使用这个装备赚取500金币并升级至<font color='#CFBF84'>游牧民印章</font><br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有3层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br><i><font color='#447777'>“金色尘埃从沙漠中扬起，然后附着在钱币上。”——历史学家舒瑞娅，《失落的恕瑞玛》，联盟历23年11月11日</font></i>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "3301_babyphilo.png",
        "icon": "3301.png"
    },
    "3302": {
        "name": "圣物之盾",
        "description": "<stats>+50生命值<br>+1金币/10秒 </stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在195(+5x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和距离最近的友军英雄会恢复5到30生命值(基于已损失生命值)，并为该友军英雄提供等额的小兵赏金。如果装备持有者是远程英雄则治疗效果为50%。这个效果需要附近有一名友军。每40秒获得一层充能。最多拥有2层充能。<hr><passive>任务：</passive>使用这个装备赚取500金币并升级至<font color='#CFBF84'>巨神峰之擎</font>。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有3层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3302.png"
    },
    "3303": {
        "name": "窃法之刃",
        "description": "<stats>+10法术强度<br>+2金币/10秒<br><mana>+25%基础法力回复</mana></stats><br><br><unique>唯一被动—贡品：</unique>对敌方英雄或建筑物施放技能和进行普攻时，每次会造成13额外魔法伤害。如果附近有一名友方英雄，那么这个效果还会提供<gold>11</gold>金币。这个效果每30秒最多触发3次。在任务完成前，击杀小兵和非史诗级野怪会减缓贡品效果的生成速度。<hr><passive>任务：</passive>使用这个装备赚取500金币并升级至<font color='#CFBF84'>冰霜之牙</font>。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有3层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "3090_thoughtbreaker.png",
        "icon": "3303.png"
    },
    "3304": {
        "name": "陈旧的上古钱币",
        "description": "<stats>+5移动速度<br>+5%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你回复<scaleMana>6%</scaleMana> 已损失的法力值（最低回复10）。如果附近有一名友方英雄，那么有时钱币会提供<gold>28</gold>金币作为替代。攻城小兵总会掉落钱币。<hr><passive>任务：</passive>使用这个装备赚取750金币并升级至<font color='#CFBF84'>陈旧的游牧民印章</font>。<br><passive>奖赏：</passive><font color='#CFBF84'>恩惠</font>会升级为<font color='#CFBF84'>皇帝的恩惠</font>，并且友方英雄在朝你移动时会获得8%移动速度。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br><i><font color='#447777'>“金色尘埃从沙漠中扬起，然后附着在钱币上。”——历史学家舒瑞娅，《失落的恕瑞玛》，联盟历23年11月11日</font></i>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3304.png"
    },
    "3305": {
        "name": "陈旧的游牧民印章",
        "description": "<stats>+10移动速度<br>+50%基础生命回复<br>+10%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你回复<scaleMana>6%</scaleMana>已损失的法力值（最低回复10）。如果附近有一名友方英雄，那么有时钱币会提供<gold>50</gold>金币作为替代。攻城小兵总会掉落钱币。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>恩惠</font>会升级为<font color='#CFBF84'>皇帝的恩惠</font>，并且友方英雄在朝你移动时会获得8%移动速度。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br><rules><font color='#447777'>“在太阳的照射下，印章散发出蕴含着一千种声音的荣光。”——历史学家舒瑞娅，联盟历24年6月22日</font></rules>",
        "gold": {
            "base": 300,
            "total": 850
        },
        "pic": "",
        "icon": "3305.png"
    },
    "3306": {
        "name": "陈旧的飞升护符",
        "description": "<stats>+10移动速度<br>+45护甲<br>+175%基础生命回复<br>+10%冷却缩减<br>+2金币/10秒</stats><br><br><unique>唯一被动—据点冲刺：</unique>当你在防御塔（包括被摧毁的防御塔）和虚空之门附近时，你会获得逐步提升的移动速度加成。在2秒后，该加成会达到最大值20%。<br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你回复<scaleMana>6%</scaleMana>已损失的法力值（最低回复10）。如果附近有一名友方英雄，那么有时钱币会提供<gold>50</gold>金币作为替代。攻城小兵总会掉落钱币。<br><active>唯一主动：</active> 为附近友军提供+@Effect5Amount*100@%移动速度，持续@Effect6Amount@秒(60秒冷却时间)。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>恩惠</font>会升级为<font color='#CFBF84'>皇帝的恩惠</font>，并且友方英雄在朝你移动时会获得8%移动速度。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br><rules><font color='#447777'>“赞美太阳！”—历史学家舒瑞娅，联盟历25年9月22日</font></rules>",
        "gold": {
            "base": 450,
            "total": 2200
        },
        "pic": "",
        "icon": "3306.png"
    },
    "3307": {
        "name": "陈旧的圣物之盾",
        "description": "<stats>+50生命值<br>+2金币/10秒 </stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在195(+5x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和最近的友军英雄会恢复5到30生命值(基于已损失生命值)，并为该友军英雄提供小兵的击杀赏金。如果装备持有者是远程英雄则治疗效果减半。这个效果需要附近有一名友军，并且需要消耗一层战利品的充能。每40秒获得一层充能，最多拥有2层充能。<hr><passive>任务：</passive>使用这个装备赚取750金币并升级至<font color='#CFBF84'>陈旧的巨神峰之擎</font>。<br><passive>奖赏：</passive><font color='#CFBF84'>护盾电池</font>，一个可以在非战斗状态下缓慢再生的永久护盾。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3307.png"
    },
    "3308": {
        "name": "陈旧的巨神峰之擎",
        "description": "<stats>+125生命值<br>+50%基础生命回复<br>+4金币/10秒 </stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在200(+10x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和最近的友军英雄会恢复10到60生命值(基于已损失生命值)，并为该友军英雄提供等额的小兵赏金。如果装备持有者是远程英雄则治疗效果减半。这个效果需要附近有一名友军，并且需要消耗一层战利品的充能。每30秒获得一层充能，最多拥有3层充能。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>护盾电池</font>，一个可以在非战斗状态下缓慢再生的永久护盾。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 300,
            "total": 850
        },
        "pic": "",
        "icon": "3308.png"
    },
    "3309": {
        "name": "陈旧的山岳之容",
        "description": "<stats>+350生命值<br>+100%基础生命回复<br>+10%冷却缩减<br>+4金币/10秒 </stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在320(+20x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和最近的友军英雄会恢复15到90生命值(基于已损失生命值)，并为该友军英雄提供等额的小兵赏金。如果装备持有者是远程英雄则治疗效果减半。这个效果需要附近有一名友军，并且需要消耗一层战利品的充能。每20秒获得一层充能，最多拥有4层充能。<br><unique>唯一主动：</unique>为你和附近的一名友方英雄提供一层护盾，护盾生命值相当于你10%的最大生命值，可持续4秒。在4秒后，护盾会爆炸，使附近的敌人减速40%，持续2秒(60秒冷却时间)。如果以自己为施放目标，则会自动选择一名伤势最重的友方英雄。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>护盾电池</font>，一个可以在非战斗状态下缓慢再生的永久护盾。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 450,
            "total": 2100
        },
        "pic": "",
        "icon": "3309.png"
    },
    "3310": {
        "name": "陈旧的窃法之刃",
        "description": "<stats>+10法术强度<br>+2金币/10秒<br><mana>+25%基础法力回复</mana></stats><br><br><unique>唯一被动—贡品：</unique>对敌方英雄或建筑物施放技能和进行普攻时，每次会造成13额外魔法伤害。如果附近有一名友方英雄，那么这个效果还会提供<gold>11</gold>金币。这个效果每30秒最多触发3次。在任务完成前，击杀小兵和非史诗级的野怪会减缓【贡品】和金币的生成速度。<hr><passive>任务：</passive>使用这个装备赚取750金币并升级至<font color='#CFBF84'>陈旧的冰霜之牙</font>。<br><passive>奖赏：</passive><font color='#CFBF84'>贡品</font>会升级为<font color='#CFBF84'>女皇的贡品</font>。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3310.png"
    },
    "3311": {
        "name": "陈旧的冰霜之牙",
        "description": "<stats>+20法术强度<br>+2金币/10秒<br><mana>+50%基础法力回复</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—贡品：</unique>对敌方英雄或建筑物施放技能和进行普攻时，每次会造成18额外魔法伤害。如果附近有一名友方英雄，那么这个效果还会提供<gold>22</gold>金币。这个效果每30秒最多触发3次。在任务完成前，击杀小兵和非史诗级的野怪会减缓【贡品】和金币的生成速度。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>贡品</font>会升级为<font color='#CFBF84'>女皇的贡品</font>。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 325,
            "total": 850
        },
        "pic": "",
        "icon": "3311.png"
    },
    "3312": {
        "name": "陈旧的冰霜女皇的旨令",
        "description": "<stats>+60法术强度<br>+10%冷却缩减<br>+2金币/10秒<br><mana>+50%基础法力回复</mana></stats><br><br><unique>唯一被动—贡品：</unique>对敌方英雄或建筑物施放技能和进行普攻时，每次会造成18额外魔法伤害。如果附近有一名友方英雄，那么这个效果还会提供<gold>22</gold>金币。这个效果每30秒最多触发3次。在任务完成前，击杀小兵和非史诗级的野怪会减缓【贡品】和金币的生成速度。<br><active>唯一主动：</active>召唤2个持续6秒的冰霜幽灵去搜寻附近的敌方英雄。 幽灵会在接触敌人后使敌人暴露并减速40%，持续2到5秒，时长取决于幽灵的移动距离(90秒冷却时间)。<hr><passive>任务：</passive>使用这个装备赚取750金币。<br><passive>奖赏：</passive><font color='#CFBF84'>贡品</font>会升级为<font color='#CFBF84'>女皇的贡品</font>。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 500,
            "total": 2200
        },
        "pic": "",
        "icon": "3312.png"
    },
    "3314": {
        "name": "game_item_displayname_3314",
        "description": "game_item_description_3314",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3314.png"
    },
    "3330": {
        "name": "草间人",
        "description": "<mainText><stats></stats><br><active>主动 - 饰品：</active>放置一个草间人，它在现身于敌人视野时会对敌人做出和费德提克一样的动作。至多可储存2层充能。<br><br>敌方英雄在接近草间人时会将其激活，使该草间人假装进行一个随机的动作，然后该草间人会四分五裂。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3330.png"
    },
    "3340": {
        "name": "侦查守卫",
        "description": "<mainText><stats></stats><active>主动 - 饰品：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存2个侦察守卫。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3340.png"
    },
    "3341": {
        "name": "扫描透镜（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><active>主动：</active>扫描一个区域6秒，在感知到隐藏的敌对单位时予以警告，使隐形的陷阱显形，并使守卫显形和失效（冷却时间：90到60秒）。<br><br>施法距离和扫描半径会逐步随着等级的提升而加强。<br><br><rules>(转换成<font color='#BBFFFF'>图腾</font>类饰品将使<font color='#BBFFFF'>饰品</font>在120秒里无法使用。)</rules><br><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3341_redtrinket.png",
        "icon": "3341.png"
    },
    "3342": {
        "name": "占卜宝珠（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><active>主动：</active>揭开2500码范围内的一个较小区域中的战争迷雾，持续2秒。若发现敌方英雄，则该敌方英雄会在接下来的5秒里持续可见（冷却时间：120秒）。<br><br>在英雄到达9级时，施法距离提升至3500。<br><br><rules>（饰品无法在游戏刚开始后的30秒内使用。出售饰品将导致饰品失效120秒。）</rules>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3342_bluetrinket.png",
        "icon": "3342.png"
    },
    "3345": {
        "name": "灵魂之锚",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><active>主动：</active>消耗一层充能，来立刻使你的英雄在己方召唤师平台上复活，并提供125%移动速度加成，这个加成会在12秒里持续衰减。<br><br><rules>将在9级和14级时获得额外充能。</rules><br><br><font color='#BBFFFF'>（最大充能数： 2）</font><br><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3345_soul_anchor.png",
        "icon": "3345.png"
    },
    "3348": {
        "name": "奥术探测器",
        "description": "<active>唯一主动—猎手视野：</active>制造一团奥术迷雾，来获得目标地区的视野，持续5秒，显形该区域内的敌方英雄并提供陷阱的<font color='#ee91d7'>真实视野</font>，持续3秒(90秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3348.png",
        "icon": "3348.png"
    },
    "3350": {
        "name": "高级图腾（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><unique>唯一主动：</unique>放置一个隐形的守卫，来监视一块区域，持续120秒（冷却时间：120秒）。每个玩家最多只能在地图上同时放置3个<font color='#BBFFFF'>隐形的守卫</font>。<br><br><rules>（饰品无法在游戏刚开始后的30秒内使用。出售饰品将导致饰品失效120秒。）</rules>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "image270.png",
        "icon": "3350.png"
    },
    "3351": {
        "name": "高级透镜（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><unique>唯一主动：</unique>让附近中等范围内隐形的陷阱、设备以及隐形的守卫暴露在视野中，并使它们失效，持续6秒（冷却时间：60秒）。<br><br><rules>（饰品无法在游戏刚开始后的30秒内使用。出售饰品将导致饰品失效120秒。）</rules>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "image256.png",
        "icon": "3351.png"
    },
    "3352": {
        "name": "高级透镜（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><unique>唯一主动：</unique>让附近中等范围内隐形的陷阱、设备以及隐形的守卫暴露在视野中，并使它们失效，持续6秒（冷却时间：60秒）。<br><br><rules>（饰品无法在游戏刚开始后的30秒内使用。出售饰品将导致饰品失效120秒。）</rules>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "image59.png",
        "icon": "3352.png"
    },
    "3361": {
        "name": "高级侦查图腾（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><levelLimit>*需要英雄到达9级才能升级。</levelLimit><br><br><unique>唯一主动：</unique>消耗一层充能，来放置一个能够监视一块区域的隐形的守卫，持续180秒。每60秒储存一层充能，最多可持续2层充能。 每个玩家最多只能在地图上同时放置3个<font color='#BBFFFF'>隐形的守卫</font>。<br><br><rules>（饰品无法在游戏刚开始后的30秒内使用。出售饰品将导致饰品失效120秒。）</rules>",
        "gold": {
            "base": 250,
            "total": 250
        },
        "pic": "3361_yellowtrinketplus.png",
        "icon": "3361.png"
    },
    "3362": {
        "name": "高级真视图腾（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><levelLimit>*需要英雄到达9级才能升级。</levelLimit><stats></stats><br><br><unique>唯一主动：</unique>放置一个可见的守卫，来监视一块区域并侦测隐形单位，持续到被敌人摧毁为止（冷却时间：120秒）。 每个玩家最多只能在地图上同时放置1个<font color='#BBFFFF'>真视守卫</font>。<br><br><rules>（饰品无法在游戏刚开始后的30秒内使用。出售饰品将导致饰品失效120秒。）</rules>",
        "gold": {
            "base": 250,
            "total": 250
        },
        "pic": "3362_visionyellowtrinket.png",
        "icon": "3362.png"
    },
    "3363": {
        "name": "远见改造",
        "description": "<mainText><stats></stats><active>主动 - 饰品：</active>揭示4000码内的一个区域并放置一个可见且脆弱的守卫。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3363.png"
    },
    "3364": {
        "name": "神谕透镜",
        "description": "<mainText><stats></stats><active>主动 - 饰品：</active>扫描你的周围，预警隐藏的敌方单位，并使隐形的陷阱显形，并使附近的敌方侦察守卫显形(并暂时失效)。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3364.png"
    },
    "3371": {
        "name": "熔火之刃",
        "description": "<stats><font color='#FFFFFF'>+110攻击力</font><br>+25%暴击几率</stats><br><br><unique>唯一被动：</unique>暴击造成225%伤害，而非200%。",
        "gold": {
            "base": 0,
            "total": 3400
        },
        "pic": "3371.png",
        "icon": "3371.png"
    },
    "3373": {
        "name": "炉火斗篷",
        "description": "<stats><font color='#FFFFFF'>+750生命值</font><br><font color='#FFFFFF'>+100护甲</font></stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒灼烧附近的敌人造成<scaleLevel>[26到43]</scaleLevel>魔法伤害。每过12秒，你的下一个定身技能造成<scaleLevel>[26到43]</scaleLevel><scaleHealth>(+你4%的额外生命值)</scaleHealth>额外魔法伤害，并释放一次火焰新星，在你周围的区域造成该额外伤害。【献祭】对小兵和野怪的伤害会提升50%。",
        "gold": {
            "base": 0,
            "total": 2750
        },
        "pic": "3372.png",
        "icon": "3373.png"
    },
    "3374": {
        "name": "灭世者的死亡之冠",
        "description": "<stats><font color='#FFFFFF'>+175法术强度</font></stats><br><br><unique>唯一被动：</unique>法术强度提升40%。",
        "gold": {
            "base": 0,
            "total": 3600
        },
        "pic": "3373.png",
        "icon": "3374.png"
    },
    "3375": {
        "name": "game_item_displayname_3375",
        "description": "game_item_description_3375",
        "gold": {
            "base": 1000,
            "total": 2600
        },
        "pic": "",
        "icon": "3375.png"
    },
    "3379": {
        "name": "炼狱面具",
        "description": "<stats><font color='#FFFFFF'>+750生命值</font><br><mana>+300法力值</mana><br><font color='#FFFFFF'>+100魔法抗性</font><br>+10%冷却缩减</stats><br><br><unique>唯一被动—永恒：</unique>承受来自英雄的伤害时，你会回复15%伤害值的法力。花费法力时，你会回复20%法力消耗的生命值，每次施法最多回复25生命值。<br><aura>唯一光环：</aura>附近的敌方英雄多承受15%魔法伤害。",
        "gold": {
            "base": 0,
            "total": 3000
        },
        "pic": "3374.png",
        "icon": "3379.png"
    },
    "3380": {
        "name": "黑曜切割者",
        "description": "<stats><font color='#FFFFFF'>+550生命值</font><br><font color='#FFFFFF'>+60攻击力</font><br>+20%冷却缩减<br><br></stats><unique>唯一被动：</unique>对一名敌方英雄造成物理伤害的同时，还会对该英雄施加切割效果，减少目标4%的护甲，持续6秒（最多叠加6次，减少24%护甲）。<br><unique>唯一被动—狂暴：</unique>造成物理伤害的同时会提供20移动速度，持续2秒。协助击杀被切割的敌方英雄或击杀任何敌对单位时，提供的移动速度加成会变为60，持续2秒。这个移动速度加成对远程英雄减半。",
        "gold": {
            "base": 0,
            "total": 3000
        },
        "pic": "3375.png",
        "icon": "3380.png"
    },
    "3382": {
        "name": "拯救",
        "description": "<stats><font color='#FFFFFF'>+300生命值</font><br><font color='#FFFFFF'>+150%基础生命回复</font><br><font color='#FFFFFF'>+200%基础法力回复</font><br>+10%冷却缩减</stats><br><br><passive>唯一被动：</passive>+10%治疗和护盾强度<br><active>唯一主动：</active>选择5500码内的一个区域作为目标。在2.5秒后，召下一道光束来治疗友军10(+20x目标等级)生命值，并灼烧敌方英雄相当于其10%最大生命值的<font color='#FFFFFF'>真实</font>伤害，还会对敌方小兵造成250<font color='#FFFFFF'>真实</font>伤害(冷却时间：120秒)。在用于【救赎】的治疗效果时，治疗和护盾强度的效能为3倍。<br><br>可以在死亡时施放。<br><br><rules>对近期获得过其它救赎效果的目标造成一半效果。</rules>",
        "gold": {
            "base": 0,
            "total": 2100
        },
        "pic": "3376.png",
        "icon": "3382.png"
    },
    "3383": {
        "name": "钢铁烈阳之环",
        "description": "<stats><font color='#FFFFFF'>+45护甲</font><br><font color='#FFFFFF'>+75魔法抗性</font></stats><br><br><active>唯一被动：</active>为周围友军提供一个不断衰减的护盾，持续2.5秒，最多可吸收120(+10x等级)<scaleHealth>(+你20%的额外生命值)</scaleHealth>伤害(120秒冷却时间)。<br><br><rules>护盾生命值所用的等级数会在你的等级或目标等级之中取较高值。<br>护盾收益系数会随着你的等级的成长而增长。<br>如果目标在前20秒内被另一个【钢铁烈阳之匣】的效果影响过，那么护盾生命值会减少至25%。</rules>",
        "gold": {
            "base": 0,
            "total": 2200
        },
        "pic": "3377.png",
        "icon": "3383.png"
    },
    "3384": {
        "name": "三相之融",
        "description": "<stats><font color='#FFFFFF'>+350生命值</font><br><font color='#FFFFFF'><mana>+350法力</mana></font><br><font color='#FFFFFF'>+35攻击力</font><br><font color='#FFFFFF'>+50%攻击速度</font><br>+20%冷却缩减<br><font color='#FFFFFF'>+8%移动速度</font></stats><br><br><unique>唯一被动—狂暴：</unique>每次普通攻击后会获得20移动速度，持续2秒。每次击杀单位后，获得60移动速度（与前者不叠加）。这个移动速度加成对远程英雄减半。<br><unique>唯一被动—咒刃：</unique>施放技能后，下一次攻击会造成额外物理伤害，伤害值为基础攻击力的200%（冷却时间：1.5秒）。",
        "gold": {
            "base": 0,
            "total": 3733
        },
        "pic": "3378.png",
        "icon": "3384.png"
    },
    "3385": {
        "name": "沃格勒特的巫师冠",
        "description": "<stats><font color='#FFFFFF'>+155法术强度</font><br>+45护甲</stats><br><br><unique>唯一被动：</unique>法术强度提升25%。<br><active>唯一主动—凝滞：</active>让英雄在2.5秒里免疫任何伤害且不可被选取，但无法移动、攻击、施放技能或使用装备（冷却时间120秒）。",
        "gold": {
            "base": 0,
            "total": 3450
        },
        "pic": "3379.png",
        "icon": "3385.png"
    },
    "3386": {
        "name": "中娅悖论",
        "description": "<stats><font color='#FFFFFF'>+100法术强度</font><br><font color='#FFFFFF'>+60护甲</font><br>+10%冷却缩减</stats><br><br><active>唯一主动—凝滞：</active>让英雄在2.5秒里免疫任何伤害且不可被选取，但无法移动、攻击、施放技能或使用装备（冷却时间120秒）。",
        "gold": {
            "base": 0,
            "total": 2900
        },
        "pic": "",
        "icon": "3386.png"
    },
    "3387": {
        "name": "冰霜之拳",
        "description": "<stats><font color='#FFFFFF'>+125护甲</font><br>+20%冷却缩减<br><font color='#FFFFFF'>+700法力值</font></stats><br><br><unique>唯一被动—咒刃：</unique>在施放一个技能后，你的下次普通攻击会对一个范围内的所有敌人造成相当于你100%基础攻击力的额外物理伤害，并制造一个持续2秒的冰冷地带，使地带内敌人的移动速度减少30%（1.5秒冷却时间）。<br><br>冰冷地带的半径会随着额外护甲的提升而提升。",
        "gold": {
            "base": 0,
            "total": 2700
        },
        "pic": "",
        "icon": "3387.png"
    },
    "3388": {
        "name": "幽梦之魂",
        "description": "<stats><font color='#FFFFFF'>+75攻击力</font><br>+10%冷却缩减</stats><br><br><unique>唯一被动：</unique><font color='#FFFFFF'> +25穿甲</font><br><unique>唯一被动：</unique> +40非战斗状态下的移动速度<br><active>唯一主动：</active>提供+20%移动速度和无视单位碰撞体积的能力，持续6秒(45秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 2900
        },
        "pic": "",
        "icon": "3388.png"
    },
    "3389": {
        "name": "破败王者之力",
        "description": "<stats><font color='#FFFFFF'>+55攻击力</font><br><font color='#FFFFFF'>+40%攻击速度</font><br>+12%生命偷取</stats><br><br><unique>唯一被动：</unique>你的普通攻击会造成相当于目标8%(近战英雄造成12%)当前生命值的额外物理伤害。<br><active>唯一主动：</active>造成100魔法伤害，并偷取目标25%的移动速度，持续3秒（冷却时间90秒）。<br><br><rules>最小额外物理伤害为15。<br>对野怪和小兵的最大额外物理伤害为60。<br>使用者的生命偷取属性可应用于额外物理伤害效果上。</rules>",
        "gold": {
            "base": 0,
            "total": 3300
        },
        "pic": "",
        "icon": "3389.png"
    },
    "3390": {
        "name": "卢登的脉冲",
        "description": "<stats><font color='#FFFFFF'>+120法术强度</font><br><mana><font color='#FFFFFF'>+850法力</font></mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—急速：</unique>这个装备提供额外的10%冷却缩减。<br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下一个伤害型技能会将充能数全部释放，对最多4个目标造成100(+10%法术强度)魔法伤害。",
        "gold": {
            "base": 0,
            "total": 3200
        },
        "pic": "",
        "icon": "3390.png"
    },
    "3400": {
        "name": "你也有份",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>提供0金币。<br><br><rules>在派克用终极技能处决一名敌方英雄时，给予一名友军的额外金币。如果没有友军参与到这次击杀中，那么派克会留下这份金币！</rules></mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3400.png"
    },
    "3401": {
        "name": "星灵残存物",
        "description": "<stats>+350生命值<br>+200%基础生命回复<br>+10%冷却缩减<br>+1金币/10秒 </stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在320(+30x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和距离最近的友军英雄会恢复15到90生命值(基于已损失生命值)，并为该友军英雄提供等额的小兵赏金。如果装备持有者是远程英雄则治疗效果为50%。这个效果需要附近有一名友军。每20秒获得一层充能。最多拥有4层充能。<hr><passive>任务：</passive>使用这个装备赚取500金币。<br><passive>奖赏：</passive>提供<active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有4层充能并在访问商店时填满充能。<br><br><groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit>",
        "gold": {
            "base": 550,
            "total": 1800
        },
        "pic": "",
        "icon": "3401.png"
    },
    "3405": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—扫描透镜：</unique>让附近小范围内隐形的陷阱和隐形的守卫暴露在视野中，并使它们失效，持续4秒（冷却时间：120秒）。主动效果会在收集到6个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3405_bonetooth_necklace_r_1.png",
        "icon": "3405.png"
    },
    "3406": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—扫描透镜：</unique>让附近小范围内隐形的陷阱和隐形的守卫暴露在视野中，并使它们失效，持续4秒（冷却时间：120秒）。主动效果会在收集到6个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3405_bonetooth_necklace_r_2.png",
        "icon": "3406.png"
    },
    "3407": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—扫描透镜：</unique>让附近小范围内隐形的陷阱和隐形的守卫暴露在视野中，并使它们失效，持续6秒（冷却时间：60秒）。主动效果会在收集到20个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3405_bonetooth_necklace_r_3.png",
        "icon": "3407.png"
    },
    "3408": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—扫描透镜：</unique>让附近小范围内隐形的陷阱和隐形的守卫暴露在视野中，并使它们失效，持续6秒（冷却时间：60秒）。主动效果会在收集到20个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3405_bonetooth_necklace_r_4.png",
        "icon": "3408.png"
    },
    "3409": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—扫描透镜：</unique>让附近小范围内隐形的陷阱、设备以及隐形的守卫暴露在视野中，并使它们失效，持续6秒，并获得侦测附近隐形单位的能力，持续10秒（冷却时间：75秒）。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3405_bonetooth_necklace_r_5.png",
        "icon": "3409.png"
    },
    "3410": {
        "name": "卡兹克的头颅",
        "description": "<unique>唯一主动—扫描透镜：</unique>让附近小范围内隐形的陷阱、设备以及隐形的守卫暴露在视野中，并使它们失效，持续6秒，并获得侦测附近隐形单位的能力，持续10秒（冷却时间：60秒）。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3410.png",
        "icon": "3410.png"
    },
    "3411": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—占卜：</unique>揭开2500码范围内的一个较小区域中的战争迷雾，持续2秒。若发现敌方英雄，则该敌方英雄会在接下来的5秒里持续可见（冷却时间：120秒）。主动效果会在收集到6个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3411_bonetooth_necklace_b_1.png",
        "icon": "3411.png"
    },
    "3412": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—占卜：</unique>揭开2500码范围内的一个较小区域中的战争迷雾，持续2秒。若发现敌方英雄，则该敌方英雄会在接下来的5秒里持续可见（冷却时间：120秒）。主动效果会在收集到6个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3411_bonetooth_necklace_b_2.png",
        "icon": "3412.png"
    },
    "3413": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—占卜：</unique>揭开3500码范围内的一个较小区域中的战争迷雾，持续2秒。若发现敌方英雄，则该敌方英雄会在接下来的5秒里持续可见（冷却时间：120秒）。主动效果会在收集到20个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3411_bonetooth_necklace_b_3.png",
        "icon": "3413.png"
    },
    "3414": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—占卜：</unique>揭开3500码范围内的一个较小区域中的战争迷雾，持续2秒。若发现敌方英雄，则该敌方英雄会在接下来的5秒里持续可见（冷却时间：120秒）。主动效果会在收集到20个战利品时升级。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3411_bonetooth_necklace_b_4.png",
        "icon": "3414.png"
    },
    "3415": {
        "name": "骨齿项链",
        "description": "<unique>唯一主动—占卜：</unique>揭开4000码范围内的一个较小区域中的战争迷雾，持续2秒。若发现敌方英雄，则该敌方英雄会在接下来的5秒里持续可见（冷却时间：90秒）。还会在目标区域放置一个可见的守卫，持续2秒。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者在草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3411_bonetooth_necklace_b_5.png",
        "icon": "3415.png"
    },
    "3416": {
        "name": "卡兹克的头颅",
        "description": "<unique>唯一主动—占卜：</unique>揭开4000码范围内的一个较小区域中的战争迷雾，持续2秒。若发现敌方英雄，则该敌方英雄会在接下来的5秒里持续可见（冷却时间：90秒）。<br><br><unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3416.png",
        "icon": "3416.png"
    },
    "3417": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3417_bonetooth_necklace_g_1.png",
        "icon": "3417.png"
    },
    "3418": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3417_bonetooth_necklace_g_2.png",
        "icon": "3418.png"
    },
    "3419": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3417_bonetooth_necklace_g_3.png",
        "icon": "3419.png"
    },
    "3420": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3417_bonetooth_necklace_g_4.png",
        "icon": "3420.png"
    },
    "3421": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3417_bonetooth_necklace_g_5.png",
        "icon": "3421.png"
    },
    "3422": {
        "name": "卡兹克的头颅",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3422.png",
        "icon": "3422.png"
    },
    "3450": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><unique>主动：</unique>消耗一层充能，来立刻使你的英雄在己方召唤师平台上复活，并提供125%移动速度加成，这个加成会在12秒里持续衰减。<br><br><i>将在9级和14级时获得额外充能。</i><br><br><font color='#BBFFFF'>（最大充能数： 2）</font><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3417_bonetooth_necklace_g_1.png",
        "icon": "3450.png"
    },
    "3451": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3451.png",
        "icon": "3451.png"
    },
    "3452": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3452.png",
        "icon": "3452.png"
    },
    "3453": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3453.png",
        "icon": "3453.png"
    },
    "3454": {
        "name": "骨齿项链",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3454.png",
        "icon": "3454.png"
    },
    "3455": {
        "name": "卡兹克的头颅",
        "description": "<unique>唯一被动—狩猎藏品：</unique>在击杀掉英雄时，雷恩加尔会收集战利品，并且根据战利品的数量获得额外效果。每次击杀或助攻会提供1个战利品。<br><br><passive>3个战利品：</passive>雷恩加尔在脱战后或者草丛中时会提升25移动速度。<br><passive>6个战利品：</passive>雷恩加尔的跳跃距离增加125。<br><passive>12个战利品：</passive>狩猎律动的持续时间延长5秒。<br><passive>20个战利品：</passive>在潜行状态下，狩猎律动的移动速度加成会翻倍。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3455.png",
        "icon": "3455.png"
    },
    "3460": {
        "name": "game_item_displayname_3460",
        "description": "game_item_description_3460",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3460.png",
        "icon": "3460.png"
    },
    "3461": {
        "name": "game_item_displayname_3461",
        "description": "game_item_description_3461",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3461.png",
        "icon": "3461.png"
    },
    "3462": {
        "name": "观测之石（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><active>主动：</active>揭开<font color='#FFFFF'>2500</font>码范围内的一个区域中的战争迷雾，持续3秒。若照到不在潜行状态下的敌方英雄，则该敌方英雄会在接下来的5秒里持续可见。（冷却时间：60秒）",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3462.png",
        "icon": "3462.png"
    },
    "3504": {
        "name": "炽热香炉",
        "description": "<mainText><stats><attention>60</attention>法术强度<br><attention> 8%</attention>治疗和护盾强度<br><attention>100%</attention>基础法力回复</stats><br><li><passive>圣洁化：</passive>对一名友方英雄施加治疗或护盾时，会使你们两个都获得强化，提供攻击速度并且攻击附带魔法伤害<OnHit>攻击特效</OnHit>。<br></mainText><br>",
        "gold": {
            "base": 630,
            "total": 2300
        },
        "pic": "",
        "icon": "3504.png"
    },
    "3508": {
        "name": "夺萃之镰",
        "description": "<mainText><stats><attention>45</attention>攻击力<br><attention>20%</attention>暴击几率<br><attention>20</attention>技能急速</stats><br><li><passive>咒刃：</passive>施放技能后，你的下一次普通攻击附带额外伤害并回复法力值。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 2800
        },
        "pic": "",
        "icon": "3508.png"
    },
    "3512": {
        "name": "兹若特传送门",
        "description": "<stats>+55护甲<br>+55魔法抗性<br>+125%基础生命回复<br></stats><br><unique>唯一被动—据点冲刺：</unique>当你在防御塔、被摧毁的防御塔和虚空之门附近时，你会获得逐步提升的移动速度加成。在2秒后，该加成会达到最大值20%。<br><br><active>唯一主动：</active>生成一扇持续120秒的虚空之门（冷却时间：120秒）。<br><br>每过4秒， 传送门就会产生一个虚空兽。第一个和每第四个的虚空兽会获得伤害加成，数值为你最大生命值的15%。",
        "gold": {
            "base": 1080,
            "total": 2700
        },
        "pic": "",
        "icon": "3512.png"
    },
    "3513": {
        "name": "先锋之眼",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>在1秒后碾碎先锋之眼，同时召唤出<status>峡谷先锋</status>来对敌方防御塔进行攻坚。<br><br><li><passive>虚空掠影：</passive>【先锋之眼】的持有者拥有<attention>强化回城</attention>。<br><br><rules>【先锋之眼】如果在240秒内没有被使用，就会迷失到虚空中去。</rules></mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3513.png"
    },
    "3514": {
        "name": "先锋之眼",
        "description": "<br><unique>唯一被动—虚空掠影：</unique>先锋之眼的持有者拥有强化回城。<br><br><active>唯一主动：</active>引导1秒来碾碎虚空之眼，召唤峡谷先锋去攻打敌方防御塔。<br><br>先锋之眼如果在240秒内没有被使用，就会迷失到虚空中去。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3514.png"
    },
    "3520": {
        "name": "幽灵魄罗",
        "description": "<subtitleLeft><font color='#FFFFFF'>(饰品)</font></subtitleLeft><br><mainText><active>主动：</active>命令你的幽灵魄罗呆在一片草丛中。如果你或者你的幽灵魄罗在敌方领地内，则会提供额外的属性。</mainText>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3520.png"
    },
    "3599": {
        "name": "卡莉斯塔的黑色长矛",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>选择一位友军进行绑定，让该友军在该局的剩余时间里成为誓约者。誓约者在你附近时，你和誓约者彼此都会得到强化。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3599.png"
    },
    "3600": {
        "name": "卡莉斯塔的黑色长矛",
        "description": "<mainText><stats></stats><active>主动 - 消耗：</active>选择一位友军进行绑定，让该友军在该局的剩余时间里成为誓约者。誓约者在你附近时，你和誓约者彼此都会得到强化。<br><br><rules>需要使用<attention>卡莉斯塔</attention>的终极技能。</rules></mainText><br>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3600.png"
    },
    "3630": {
        "name": "攻城传送",
        "description": "<unique>主动：</unique>使用这个饰品来传送到己方的一个传送坪上。只能在召唤师平台上使用。",
        "gold": {
            "base": 10,
            "total": 10
        },
        "pic": "3630.png",
        "icon": "3630.png"
    },
    "3631": {
        "name": "攻城弩炮",
        "description": "<br><font color='#FF9900'>部署一个弩炮来攻击最近的防御塔。</font><br><br>放置一个远程弩炮，前提是与一座敌方防御塔的距离在2200码以内。在5秒的延迟后，它会开始对着最近的敌方防御塔开火，造成重度伤害。如果目标防御塔被拆毁，那么弩炮也会随之消失。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3631.png",
        "icon": "3631.png"
    },
    "3633": {
        "name": "攻城传送",
        "description": "<unique>主动：</unique>使用这个饰品来传送到己方的一个传送坪上。只能在召唤师平台上使用。",
        "gold": {
            "base": 10,
            "total": 10
        },
        "pic": "3633.png",
        "icon": "3633.png"
    },
    "3634": {
        "name": "防御塔：灭绝光线",
        "description": "<br><font color='#FF9900'>选择一座防御塔进行附着，然后再次施放来从该防御塔处向着你的指针悬停处发射一束伤害型的光线。</font><br><br><font color='#FF9900'>首次施放：</font>附着一个灭绝光线发射器到目标防御塔，发射器可以发射3次光线。<br><br><font color='#FF9900'>下三次施放：</font>从被附着的防御塔处发射灭绝光线至你的指针悬停处，对一条直线上的敌人造成30x等级+被命中目标的30%最大生命值（对小兵的伤害：20%）的魔法伤害。<br><br><br><br>光线发射器会持续15秒，或者直到它已经发射过3次为止。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3634.png",
        "icon": "3634.png"
    },
    "3635": {
        "name": "传送坪",
        "description": "<br><font color='#FF9900'>部署一个额外的传送坪。</font><br><br>在目标地点部署一个传送坪。在4秒的延迟后，它会激活，并允许你或你的友军从基地传送到它所在的地点。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3635.png",
        "icon": "3635.png"
    },
    "3636": {
        "name": "防御塔：风暴壁垒",
        "description": "<br><font color='#FF9900'>让一座防御塔变得免疫伤害，然后天降火雨。</font><br><br>让目标防御塔免疫伤害6秒。在到期前的2秒，它会释放一轮齐射，在剩余时间里对附近的所有敌人造成2600真实伤害。<br><br>在15秒里无法对相同防御塔重复使用",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3636.png",
        "icon": "3636.png"
    },
    "3637": {
        "name": "枢纽攻防战：围城武器栏",
        "description": "在枢纽攻防战中，召唤师技能会被替换为围城武器栏。在商店中花费水晶碎片来购买单次使用的围城武器，然后使用你的召唤师技能热键来激活这些围城武器！",
        "gold": {
            "base": 10,
            "total": 10
        },
        "pic": "3637.png",
        "icon": "3637.png"
    },
    "3640": {
        "name": "闪现地带",
        "description": "<br><font color='#FF9900'>允许己方在一个有限的区域重复使用闪现</font><br><br>为己方创造一个持续5秒的魔法地带。在地带中时，你和友军的一个围城武器会替换成一个瞬时施放的闪现，来让你们移动到地带里的任意地点（冷却时间：1秒）。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3640.png",
        "icon": "3640.png"
    },
    "3641": {
        "name": "先锋战旗",
        "description": "<br><font color='#FF9900'>放置一个战旗来加强小兵。</font><br><br>放置一个先锋战旗至目标地点。在2秒的延迟后，附近所有范围内的小兵都会获得一个增益效果，使他们的伤害提升50%，并为他们提供50护甲和100魔法抗性。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3641.png",
        "icon": "3641.png"
    },
    "3642": {
        "name": "围城武器返还",
        "description": "按原价返还购买围城武器所用的水晶碎片",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3642.png",
        "icon": "3642.png"
    },
    "3643": {
        "name": "热寂领域",
        "description": "<br><font color='#FF9900'>晕眩范围内的小兵并减速范围内的英雄</font><br><br>放置一个热寂领域到目标地点，持续5秒。领域内的敌方小兵和攻城弩炮会无法移动或攻击。领域内的敌方英雄会被减少25%的移动速度。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3643.png",
        "icon": "3643.png"
    },
    "3645": {
        "name": "观测之石（饰品）",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><active>主动：</active>揭开<font color='#FFFFF'>1400</font>码范围内的一个区域中的战争迷雾，持续3秒。若照到不在潜行状态下的敌方英雄，则该敌方英雄会在接下来的5秒里持续可见。（冷却时间：60秒）",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3645.png",
        "icon": "3645.png"
    },
    "3647": {
        "name": "护盾图腾",
        "description": "<br><font color='#FF9900'>放置一个图腾来给附近的围城武器提供护盾。</font><br><br>放置一个护盾图腾至目标区域。在2秒的延迟后，图腾将会激活，提供2（+1x额外的护盾图腾数）生命值的护盾给附近的所有围城武器。 ",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3647.png",
        "icon": "3647.png"
    },
    "3648": {
        "name": "攻城传送（休眠）",
        "description": "",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3648.png",
        "icon": "3648.png"
    },
    "3649": {
        "name": "围城视野守卫",
        "description": "<groupLimit>只能持有1个饰品。</groupLimit><br><br><active>主动：</active>放置1个<font color='#FFFFFF'>侦查守卫</font>，以监视一个区域，持续<font color='#FFFFFF'>30</font>秒。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3649.png",
        "icon": "3649.png"
    },
    "3671": {
        "name": "附魔：战士",
        "description": "<stats>+60攻击力<br>+10%冷却缩减</stats>",
        "gold": {
            "base": 525,
            "total": 1625
        },
        "pic": "3671.png",
        "icon": "3671.png"
    },
    "3672": {
        "name": "附魔：熔渣巨人",
        "description": "<stats>+325生命值<br>+15%额外生命值</stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒对附近的敌人造成7(+2x英雄等级)魔法伤害。对野怪造成100%额外伤害。",
        "gold": {
            "base": 525,
            "total": 1425
        },
        "pic": "3672.png",
        "icon": "3672.png"
    },
    "3673": {
        "name": "附魔：符能回声",
        "description": "<stats>+60法术强度<br>+7%移动速度</stats><br><br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100后，你的下一个伤害型技能会将充能数全部释放，对最多4个目标造成60(+10%法术强度)魔法伤害。这个效果会对大型野怪造成250%伤害。用这个效果命中一个大型野怪的同时，会为你回复18%的已损失法力值。",
        "gold": {
            "base": 340,
            "total": 1625
        },
        "pic": "3673.png",
        "icon": "3673.png"
    },
    "3675": {
        "name": "附魔：血刃",
        "description": "<stats>+50%攻击速度</stats><br><br><unique>唯一被动：</unique>普攻会在命中时造成目标4%最大生命值的额外物理伤害（对野怪和小兵的最大伤害：75）。",
        "gold": {
            "base": 625,
            "total": 1625
        },
        "pic": "3675.png",
        "icon": "3675.png"
    },
    "3680": {
        "name": "覆霜佳肴",
        "description": "<active>主动 - 喂养魄罗之王：</active>魄罗之王朝远处的敌人抛射出多个飞行道具，每个飞行道具都会对碰撞区域中心的目标造成<scaleLevel>213-775</scaleLevel>魔法伤害，对中心外目标的伤害会逐步降低，最低会对碰撞区域边缘的目标造成<scaleLevel>85-310</scaleLevel>魔法伤害(120秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3680.png",
        "icon": "3680.png"
    },
    "3681": {
        "name": "超辣佳肴",
        "description": "<active>主动 - 喂养魄罗之王：</active>魄罗之王喷吐火焰4秒，在持续期间对锥形范围内的敌人持续造成共<scaleLevel>705-1479</scaleLevel>真实伤害。还会在此期间对防御塔造成最多560真实伤害(120秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3681.png",
        "icon": "3681.png"
    },
    "3682": {
        "name": "浓缩佳肴",
        "description": "<active>主动 - 喂养魄罗之王：</active>魄罗之王跃至空中并向下猛击两次，震退敌人并在着陆时造成<scaleLevel>40-190</scaleLevel>物理伤害。魄罗王也会获得一层<font color='#FF3300'>相当于他20%最大生命值</font>的护盾，这个护盾会在4秒里持续衰减(30秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3682.png",
        "icon": "3682.png"
    },
    "3683": {
        "name": "彩虹佳肴派对套餐！",
        "description": "<active>主动 - 喂养魄罗之王：</active>魄罗之王扔出多个佳肴到敌人后面，吸引魄罗们朝着他疾奔。被命中的敌方英雄会被撞向他并受到<scaleLevel>230-680</scaleLevel>物理伤害(120秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "3683.png",
        "icon": "3683.png"
    },
    "3684": {
        "name": "黎明使者佳肴",
        "description": "<active>主动 - 投喂国王:</active>魄罗之王将你拉拽到他身边。在至多4秒里，你处于不可被选取状态和平静状态。你可以点击鼠标来飞到目标位置，然后在命中第一个敌方英雄时停下，并将小范围内的所有敌人击退。你的飞行产生的冲击波会在一个锥形区域内造成<scaleLevel>230-680</scaleLevel>物理伤害(120秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3684.png"
    },
    "3685": {
        "name": "黑夜使者佳肴",
        "description": "<active>主动 - 投喂国王:</active>魄罗之王从他身后召唤黑暗之风，然后将它们向前呈漩涡状发射，造成<scaleLevel>230-680</scaleLevel>物理伤害并将敌人击飞(120秒冷却时间)。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3685.png"
    },
    "3690": {
        "name": "星界枷锁",
        "description": "<passive>被动—星界枷锁：</passive>【Q死亡判决】会拖得更远（基于目标已损失的生命值），并且能被死兆星引燃，以造成更多伤害。<br><br><flavorText>“一个更加辉煌的黎明在等待。”</flavorText>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3690.png"
    },
    "3691": {
        "name": "奇点灯笼",
        "description": "<passive>被动—奇点灯笼：</passive>【W魂引之灯】会自动救援被限制的友军。不过，它不再提供护盾。<br><br><flavorText>“群星在呼唤我。”</flavorText>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3691.png"
    },
    "3692": {
        "name": "暗物质镰刀",
        "description": "<passive>被动—暗物质镰刀：</passive>【E厄运钟摆】的攻击特效被动将更快地充能伤害。【E厄运钟摆】会将敌人抛得更远（基于已损失的生命值）。<br><br><flavorText>“如果你想从头构造一个奇点，你必须首先摧毁掉宇宙。”</flavorText>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3692.png"
    },
    "3693": {
        "name": "引力靴",
        "description": "<passive>被动—质量转换：</passive>锤石的生命值代表着敌人会把他拖行或抛出的距离。生命值越低，他就会被抛得越远。<br><br><passive>被动—端点星居民：</passive>深渊迅捷蟹会周期性地出现，并且将在被攻击时朝着死兆星疾奔。引力干扰将暂时吸引大量深渊迅捷蟹。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3693.png"
    },
    "3694": {
        "name": "群星斗篷",
        "description": "<passive>被动—星球之魂：</passive>在生成后，锤石会免疫伤害，不可被选取，不能施放技能并且可以在开放空间中穿行。这个效果会在踏上稳固地面后失去。<br><br>被【W魂引之灯】救下或将【Q死亡判决】用在三个<font color='#3091ec'>引力锚点</font>之一上，会短暂让你进入这个免疫伤害的状态并打破你身上的敌方枷锁。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3694.png"
    },
    "3695": {
        "name": "暗星魔印",
        "description": "<passive>被动—星球之忠诚：</passive>锤石无法直接击杀单位——它们的灵魂、经验以及金币都属于死兆星。<br><br>拖拽或推动一名敌人到死兆星之中，将会把该敌人瞬间摧毁，并为你的队伍积累点数(+5，若是深渊迅捷蟹则+1)。<br><br>赢得一回合的胜利需要100点数，并且最终的若干点数必须由击杀一次英雄来提供。",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3695.png"
    },
    "3706": {
        "name": "追猎者的刀锋",
        "description": "<groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br>+10%对野怪的生命偷取<br><br><unique>唯一被动—深寒惩戒：</unique>【惩戒】可施放在敌方英雄上，造成较少真实伤害并偷取20%移动速度，持续2秒。<br><unique>唯一被动—利爪/尖牙：</unique>对野怪的普攻造成40额外伤害。用一次技能或攻击对野怪造成伤害的同时，会在5秒里持续偷取共30生命值并灼烧其造成80魔法伤害。<mana>在河道或野区中时，会基于你的已损失法力来提供法力回复，最多可达8法力/秒。</mana>这个装备会提供<font color='#99BBBB'>怪物猎手</font>。在生命值低于30%时，这个装备的治疗效果将增幅50%。",
        "gold": {
            "base": 300,
            "total": 1000
        },
        "pic": "3706.png",
        "icon": "3706.png"
    },
    "3707": {
        "name": "附魔：战士",
        "description": "<stats>+40攻击力<br>+10%冷却缩减<br>+10护甲穿透</stats>",
        "gold": {
            "base": 63,
            "total": 2163
        },
        "pic": "3707.png",
        "icon": "3707.png"
    },
    "3708": {
        "name": "附魔：符文阔剑",
        "description": "<stats>+50法术强度<br><mana>+200法力</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—咒刃：</unique>在使用一次技能后，下次普攻会对目标造成100%基础攻击力(+30%法术强度)的额外魔法伤害(1.5秒冷却时间)。在攻击野怪时，这个额外伤害会再次施加给目标附近小范围内的敌对单位，并且你会回复8%的已损失法力值。</mainText>",
        "gold": {
            "base": 200,
            "total": 2250
        },
        "pic": "3708.png",
        "icon": "3708.png"
    },
    "3709": {
        "name": "附魔：熔渣巨人",
        "description": "",
        "gold": {
            "base": 400,
            "total": 2300
        },
        "pic": "3709.png",
        "icon": "3709.png"
    },
    "3711": {
        "name": "追踪者的匕首",
        "description": "<groupLimit>只能持有1个打野型装备。</groupLimit><br><br><stats>+10%对野怪的生命偷取<br><mana>在野区中+225%基础法力回复</mana></stats><br><br></stats><br><br><unique>唯一被动—利爪/尖牙：</unique>对野怪的普攻造成@Effect5Amount@额外伤害。用一次技能或攻击对野怪造成伤害的同时，会在@Effect3Amount@秒里持续偷取共@Effect2Amount@生命值并灼烧其造成@Effect1Amount@魔法伤害。<mana>在河道或野区中时，会基于你的已损失生命值来提供法力回复，最多可达@Effect4Amount@法力/秒。</mana>击杀野怪会获得<font color='#99BBBB'>怪物猎手</font>。在生命值低于@Effect12Amount*100@%时，这个装备的治疗效果将增幅@Effect13Amount*100@%。<br><active>唯一主动—布置守卫：</active>消耗一层充能来放置1个<font color='#BBFFFF'>侦查守卫</font>，以监视一个区域，持续150秒。最多可持有2层充能并在访问商店时填满充能。<br><br><rules>(一个玩家最多只能在地图上同时放置3个<font color='#BBFFFF'>侦查守卫</font>。同名的唯一被动不叠加。)</rules>",
        "gold": {
            "base": 300,
            "total": 1000
        },
        "pic": "3711.png",
        "icon": "3711.png"
    },
    "3713": {
        "name": "巡林者的利器",
        "description": "<groupLimit>只能持有1个打野装备</groupLimit><br><br><stats>在野区中+150%基础法力回复<br>在野区中+10%移动速度</stats><br><br><passive>被动—爆裂惩戒：</passive>【惩戒】可以对目标附近的所有野怪和敌方小兵造成一半伤害，并使它们晕眩1.5秒。对一个野怪施放【惩戒】会为你回复15%的已损失生命值和已损失法力值。<br><unique>唯一被动—尖牙/利爪：</unique>对野怪的伤害+25%。对野怪造成伤害时会在2秒里持续偷取共15生命值。击杀大型野怪时获得60额外经验值。",
        "gold": {
            "base": 350,
            "total": 1050
        },
        "pic": "3713.png",
        "icon": "3713.png"
    },
    "3714": {
        "name": "附魔：战士",
        "description": "<stats>+40攻击力<br>+10%冷却缩减<br>+10护甲穿透</stats>",
        "gold": {
            "base": 63,
            "total": 2163
        },
        "pic": "3714.png",
        "icon": "3714.png"
    },
    "3715": {
        "name": "游击者的军刀",
        "description": "<groupLimit>只能持有1个金币收入型或打野型装备。</groupLimit><br><br>+10%对野怪的生命偷取<br><br><unique>唯一被动—挑战惩戒：</unique>【惩戒】可施放在敌方英雄上，并标记该英雄4秒。在被标记期间，你对目标的普攻会在2.5秒里持续造成额外真实伤害，并且目标对你造成的伤害会降低20%。<br><unique>唯一被动—利爪与尖牙：</unique>对野怪的普攻造成40额外伤害。用一次技能或攻击对野怪造成伤害的同时，会在5秒里持续偷取共30生命值并灼烧其造成80魔法伤害。在河道或野区中时，会基于你的已损失法力来提供法力回复，最多可达8法力/秒。这个装备会提供<font color='#99BBBB'>怪物猎手</font>。在生命值低于30%时，这个装备的治疗效果将增幅50%。",
        "gold": {
            "base": 300,
            "total": 1000
        },
        "pic": "3715.png",
        "icon": "3715.png"
    },
    "3716": {
        "name": "附魔：符文阔剑",
        "description": "<stats>+50法术强度<br><mana>+200法力</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—咒刃：</unique>在使用一次技能后，下次普攻会对目标造成100%基础攻击力(+30%法术强度)的额外魔法伤害(1.5秒冷却时间)。在攻击野怪时，这个额外伤害会再次施加给目标附近小范围内的敌对单位，并且你会回复8%的已损失法力值。</mainText>",
        "gold": {
            "base": 200,
            "total": 2250
        },
        "pic": "3716.png",
        "icon": "3716.png"
    },
    "3717": {
        "name": "附魔：熔渣巨人",
        "description": "",
        "gold": {
            "base": 400,
            "total": 2300
        },
        "pic": "3717.png",
        "icon": "3717.png"
    },
    "3719": {
        "name": "附魔：战士",
        "description": "<stats>+40攻击力<br>+10%冷却缩减<br>+10护甲穿透</stats>",
        "gold": {
            "base": 63,
            "total": 2163
        },
        "pic": "",
        "icon": "3719.png"
    },
    "3720": {
        "name": "附魔：符文阔剑",
        "description": "<stats>+50法术强度<br><mana>+200法力</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—咒刃：</unique>在使用一次技能后，下次普攻会对目标造成100%基础攻击力(+30%法术强度)的额外魔法伤害(1.5秒冷却时间)。在攻击野怪时，这个额外伤害会再次施加给目标附近小范围内的敌对单位，并且你会回复8%的已损失法力值。</mainText>",
        "gold": {
            "base": 200,
            "total": 2250
        },
        "pic": "",
        "icon": "3720.png"
    },
    "3721": {
        "name": "附魔：熔渣巨人",
        "description": "",
        "gold": {
            "base": 400,
            "total": 2300
        },
        "pic": "",
        "icon": "3721.png"
    },
    "3723": {
        "name": "附魔：战士",
        "description": "<stats>+40攻击力<br>+10%冷却缩减<br>+10护甲穿透</stats>",
        "gold": {
            "base": 63,
            "total": 2213
        },
        "pic": "",
        "icon": "3723.png"
    },
    "3724": {
        "name": "附魔：符文阔剑",
        "description": "<stats>+50法术强度<br><mana>+200法力</mana><br>+10%冷却缩减</stats><br><br><unique>唯一被动—咒刃：</unique>在使用一次技能后，下次普攻会对目标造成100%基础攻击力(+30%法术强度)的额外魔法伤害(1.5秒冷却时间)。在攻击野怪时，这个额外伤害会再次施加给目标附近小范围内的敌对单位，并且你会回复8%的已损失法力值。</mainText>",
        "gold": {
            "base": 200,
            "total": 2300
        },
        "pic": "",
        "icon": "3724.png"
    },
    "3725": {
        "name": "附魔：熔渣巨人",
        "description": "",
        "gold": {
            "base": 400,
            "total": 2350
        },
        "pic": "",
        "icon": "3725.png"
    },
    "3742": {
        "name": "亡者的板甲",
        "description": "<mainText><stats><attention>300</attention>生命值<br><attention>45</attention>护甲<br><attention>5%</attention>移动速度</stats><li><passive>沉船者：</passive>在移动时，积攒移动速度。你的下一次攻击会释放掉已积攒的移动速度来造成伤害。在移动速度满层时，如果持有者是近战英雄，那么该次攻击还会<status>减速</status>目标。<br><br><flavorText>“只有一种方法能让你从我这里拿到这件盔甲……” - 被遗忘的名字</flavorText></mainText><br>",
        "gold": {
            "base": 900,
            "total": 2900
        },
        "pic": "",
        "icon": "3742.png"
    },
    "3744": {
        "name": "流水之杖",
        "description": "<stats>+40法术强度<br>+25魔法抗性<br><mana>+50%基础法力回复 </mana></stats><br><br><mana><unique>唯一被动—法力源泉：</unique>每5秒回复2%的已损失法力值。</mana><br><unique>唯一被动：</unique>在河道中时，获得30%移动速度和10法力回复/5秒。<br><i>(同名的唯一被动效果不叠加。)</i><br><br><i><font color='#FDD017'>“新闻顺着艾欧尼亚的河畔快速传播着。”'</font></i>",
        "gold": {
            "base": 300,
            "total": 1535
        },
        "pic": "3744.png",
        "icon": "3744.png"
    },
    "3748": {
        "name": "巨型九头蛇",
        "description": "<mainText><stats><attention>30</attention>攻击力<br><attention>500</attention>生命值</stats><br><li><passive>巨像：</passive>提供<scaleAD>基于额外生命值的攻击力</scaleAD>。<li><passive>顺劈：</passive>攻击附带额外伤害<OnHit>攻击特效</OnHit>，并生成一道冲击波来对目标身后的敌人们造成物理伤害。</mainText><br>",
        "gold": {
            "base": 800,
            "total": 3300
        },
        "pic": "",
        "icon": "3748.png"
    },
    "3751": {
        "name": "斑比的熔渣",
        "description": "<stats>+200生命值</stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒灼烧附近的敌人造成<scaleLevel>[6到23]</scaleLevel>魔法伤害。每过12秒，你的下一个定身技能造成<scaleLevel>[6到23]</scaleLevel><scaleHealth>(+你1%的额外生命值)</scaleHealth>额外魔法伤害，并释放一次火焰新星，在你周围的区域造成该额外伤害。【献祭】对小兵和野怪的伤害会提升100%。",
        "gold": {
            "base": 500,
            "total": 900
        },
        "pic": "3751.png",
        "icon": "3751.png"
    },
    "3800": {
        "name": "正义荣耀",
        "description": "<stats>+400生命值<br><mana>+300法力</mana><br>+30护甲<br>+100%基础生命回复<br>+10%冷却缩减</stats><br><br><unique>唯一主动：</unique>为你提供75%移动速度，持续4秒。这个移动速度加成仅在朝着敌方或敌方防御塔移动时有效。一旦贴近一名敌方英雄(或在4秒后)，你就会放出一道冲击波，使附近敌方英雄的移动速度减少75%，持续2秒(冷却时间：90秒)。",
        "gold": {
            "base": 1100,
            "total": 2650
        },
        "pic": "3800.png",
        "icon": "3800.png"
    },
    "3801": {
        "name": "晶体护腕",
        "description": "<mainText><stats><attention>200</attention>生命值<br><attention>100%</attention>基础生命回复</stats></mainText><br>",
        "gold": {
            "base": 100,
            "total": 800
        },
        "pic": "",
        "icon": "3801.png"
    },
    "3802": {
        "name": "遗失的章节",
        "description": "<mainText><stats><attention>40</attention>法术强度<br><attention>300</attention>法力<br><attention>10</attention>技能急速</stats><br><li><passive>启蒙：</passive>当你升级后，在3秒里持续回复共<scaleMana>20%最大法力值</scaleMana>。</mainText><br>",
        "gold": {
            "base": 80,
            "total": 1300
        },
        "pic": "",
        "icon": "3802.png"
    },
    "3812": {
        "name": "死亡之舞",
        "description": "<stats>+50攻击力<br>+30护甲<br>+30魔法抗性<br>+10%冷却缩减</stats><br><br><unique>唯一被动：</unique>造成伤害的同时会治疗自身，治疗量相当于实际伤害值的15%。群体伤害的治疗效率只有33%。<br><unique>唯一被动：</unique>你所受伤害的<specialRules>[近战英雄：30% || 远程英雄：10%]</specialRules>会以流血形式在3秒里持续扣除。",
        "gold": {
            "base": 500,
            "total": 3600
        },
        "pic": "3812.png",
        "icon": "3812.png"
    },
    "3813": {
        "name": "太空死亡之舞",
        "description": "<stats>+50攻击力<br>+10%冷却缩减</stats><br><br><unique>唯一被动：</unique>造成伤害的同时会治疗自身，治疗量相当于实际伤害值的4%。群体伤害的治疗效率只有33%。<br><unique>唯一被动：</unique>你所受伤害的30%会以流血形式在3秒里持续扣除。",
        "gold": {
            "base": 500,
            "total": 3600
        },
        "pic": "",
        "icon": "3813.png"
    },
    "3814": {
        "name": "夜之锋刃",
        "description": "<mainText><stats><attention>50</attention>攻击力<br><attention>10</attention>穿甲<br><attention>325</attention>生命值</stats><br><li><passive>废除：</passive>提供一层【法术护盾】来格挡下一个敌方技能。<br><br><rules>如果你在这件装备冷却完毕之前受到伤害，那么它的冷却时间会重新开始计算。</rules></mainText><br>",
        "gold": {
            "base": 1050,
            "total": 2900
        },
        "pic": "",
        "icon": "3814.png"
    },
    "3850": {
        "name": "窃法之刃",
        "description": "<mainText><stats><attention>8</attention>法术强度<br><attention>10</attention>生命值<br><attention>50%</attention>基础法力回复<br><attention>2</attention>金币/10秒</stats><br><li><passive>贡品：</passive>当附近有一名友方英雄时，用技能和普攻对敌方英雄或防御塔造成伤害时，会提供20金币。这个效果每30秒最多触发3次。<li><passive>任务：</passive>使用这个装备赚取500金币来将其转变为<rarityGeneric>冰霜之牙</rarityGeneric>，并提供<active>主动 - </active><active>布置守卫</active>。<br><br><rules>这件装备会在你击杀了过多数量的小兵时降低来自小兵的金币。</rules></mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3850.png"
    },
    "3851": {
        "name": "冰霜之牙",
        "description": "<mainText><stats><attention>15</attention>法术强度<br><attention>70</attention>生命值<br><attention>75%</attention>基础法力回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><br><active>主动 - </active> <active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存3个侦察守卫，并在访问商店时补满。 <br><br><br><br><li><passive>贡品：</passive>当附近有一名友方英雄时，用技能和普攻对敌方英雄或防御塔造成伤害时，会提供20金币。这个效果每30秒最多触发3次。<li><passive>任务：</passive>使用这个装备赚取1000金币来将其转变为<rarityLegendary>极冰碎片</rarityLegendary>。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3851.png"
    },
    "3853": {
        "name": "极冰碎片",
        "description": "<mainText><stats><attention>40</attention>法术强度<br><attention>75</attention>生命值<br><attention>115%</attention>基础法力回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存4个侦察守卫，并在访问商店时补满。 </mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3853.png"
    },
    "3854": {
        "name": "钢铁护肩",
        "description": "<mainText><stats><attention>3</attention>攻击力<br><attention>30</attention>生命值<br><attention>25%</attention>基础生命回复<br><attention>2</attention>金币/10秒</stats><li><passive>战利品：</passive>附近有一名友方英雄时，普攻会处决低于(近战携带者为50% | 远程携带者为30%)最大生命值的小兵。击杀一位小兵会为距离最近的友方英雄提供等额的击杀金币。这些效果每35秒获得一层充能(最多拥有3层充能)。<li><passive>任务：</passive>使用这个装备赚取500金币来将其转变为<rarityGeneric>符钢肩甲</rarityGeneric>，并提供<active>主动 - </active><active>布置守卫</active>。<br><br><rules>这件装备会在你击杀了过多数量的小兵时降低来自小兵的金币。</rules></mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3854.png"
    },
    "3855": {
        "name": "符钢肩甲",
        "description": "<mainText><stats><attention>6</attention>攻击力<br><attention>100</attention>生命值<br><attention>50%</attention>基础生命回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><br><active>主动 - </active> <active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存3个侦察守卫，并在访问商店时补满。 <br><li><passive>战利品：</passive>附近有一名友方英雄时，普攻会处决低于50%最大生命值的小兵。击杀一位小兵会为距离最近的友方英雄提供击杀金币。这些效果每35秒获得一层充能(最多拥有3层充能)。<li><passive>任务：</passive>使用这个装备赚取1000金币来将其转变为<rarityLegendary>山脉壁垒</rarityLegendary>。 </mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3855.png"
    },
    "3857": {
        "name": "白岩肩铠",
        "description": "<mainText><stats><attention>15</attention>攻击力<br><attention>250</attention>生命值<br><attention>100%</attention>基础生命回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><br><active>主动 - </active> <active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存4个侦察守卫，并在访问商店时补满。 </mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3857.png"
    },
    "3858": {
        "name": "圣物之盾",
        "description": "<mainText><stats><attention>5</attention>法术强度<br><attention>30</attention>生命值<br><attention>25%</attention>基础生命回复<br><attention>2</attention>金币/10秒</stats><li><passive>战利品：</passive>附近有一名友方英雄时，攻击会处决低于(近战携带者为50% | 远程携带者为30%)最大生命值的小兵。击杀一位小兵会为距离最近的友方英雄提供等额的击杀金币。这些效果每35秒获得一层充能(最多拥有3层充能)。<li><passive>任务：</passive>从这件装备中赚取500金币来将它转化为<rarityGeneric>巨神峰圆盾</rarityGeneric>，从而获得<active>主动 - </active><active>守卫</active>。<br><br><rules>这件装备会在你击杀了过多数量的小兵时降低来自小兵的金币。</rules></mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3858.png"
    },
    "3859": {
        "name": "巨神峰圆盾",
        "description": "<mainText><stats><attention>10</attention>法术强度<br><attention>100</attention>生命值<br><attention>50%</attention>基础生命回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><br><active>主动 - </active> <active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存3个侦察守卫，并在访问商店时补满。 <br><li><passive>战利品：</passive>附近有一名友方英雄时，普攻会处决低于50%最大生命值的小兵。击杀一位小兵会为距离最近的友方英雄提供等量的击杀金币。这些效果每35秒获得一层充能(最多拥有3层充能)。<li><passive>任务：</passive>使用这个装备赚取1000金币来将其转变为<rarityLegendary>山脉壁垒</rarityLegendary>。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3859.png"
    },
    "3860": {
        "name": "山脉壁垒",
        "description": "<mainText><stats><attention>20</attention>法术强度<br><attention>250</attention>生命值<br><attention>100%</attention>基础生命回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><br><active>主动 - </active> <active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存4个侦察守卫，并在访问商店时补满。 </mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3860.png"
    },
    "3862": {
        "name": "幽魂镰刀",
        "description": "<mainText><stats><attention>5</attention>攻击力<br><attention>10</attention>生命值<br><attention>25%</attention>基础法力回复<br><attention>2</attention>金币/10秒</stats><br><li><passive>贡品：</passive>当附近有一名友方英雄时，用技能和普攻对敌方英雄或防御塔造成伤害时，会提供20金币。这个效果每30秒最多触发3次。<li><passive>任务：</passive>使用这个装备赚取500金币来将其转变为<rarityGeneric>鬼影新月</rarityGeneric>，并提供<active>主动 - </active><active>布置守卫</active>。<br><br><rules>这件装备会在你击杀了过多数量的小兵时降低来自小兵的金币。</rules></mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3862.png"
    },
    "3863": {
        "name": "鬼影新月",
        "description": "<mainText><stats><attention>10</attention>攻击力<br><attention>60</attention>生命值<br><attention>50%</attention>基础法力回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><li><passive>贡品：</passive>当附近有一名友方英雄时，用技能和普攻对敌方英雄或防御塔造成伤害时，会提供20金币。这个效果每30秒最多触发3次。<li><passive>任务：</passive>使用这个装备赚取1000金币来将其转变为<rarityLegendary>黑雾巨镰</rarityLegendary>。<br><br><rules>这件装备会在你击杀了过多数量的小兵时降低来自小兵的金币。</rules></mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3863.png"
    },
    "3864": {
        "name": "黑雾巨镰",
        "description": "<mainText><stats><attention>20</attention>攻击力<br><attention>75</attention>生命值<br><attention>100%</attention>基础法力回复<br><attention>3</attention>金币/10秒</stats><br><br><active>主动 - </active><active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存0个侦察守卫，并在访问商店时补满。 <br><br><active>主动 - </active> <active>守卫：</active>在地上放置一个侦察守卫，对敌方<keywordStealth>隐形</keywordStealth>但会为你的队伍提供附近区域的视野。至多可储存4个侦察守卫，并在访问商店时补满。 </mainText><br>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "3864.png"
    },
    "3901": {
        "name": "随意开火",
        "description": "<rarityLegendary>随意开火</rarityLegendary><br><subtitleLeft><silver>500银蛇币</silver></subtitleLeft>",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3901.png"
    },
    "3902": {
        "name": "死亡之女",
        "description": "GeneratedTip_Item_3902_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3902.png"
    },
    "3903": {
        "name": "鼓舞士气",
        "description": "GeneratedTip_Item_3903_ExternalDescription",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "3903.png"
    },
    "3905": {
        "name": "双生暗影",
        "description": "<stats>+70法术强度<br>+7%移动速度<br>+10%冷却缩减</stats><br><br><unique>唯一主动—幽魂索命：</unique>召唤2个可怖的幽魂去猎取附近的英雄，并在接触到目标后使其显形并萦绕于目标。<br><br>被萦绕的敌人会被减速40%，持续时间基于幽魂已行走的距离，最多可持续5秒。(90秒冷却时间)。",
        "gold": {
            "base": 650,
            "total": 2400
        },
        "pic": "",
        "icon": "3905.png"
    },
    "3907": {
        "name": "缚法宝珠",
        "description": "<stats>+120法术强度<br>+10%移动速度<br></stats><br><unique>唯一被动：</unique>附近友方与敌方的每次技能施放都会让缚法宝珠获得充能，直至达到一个上限(最大值：100)。<br><unique>唯一主动：</unique>提供一个最大值为80的法术强度加成和50%的不断衰减的移动速度加成，持续4秒。<br><br>每个已储存的充能都会贡献+0.8法术强度和+0.5%移动速度到主动效果上(60秒冷却时间)。",
        "gold": {
            "base": 800,
            "total": 2900
        },
        "pic": "3907.png",
        "icon": "3907.png"
    },
    "3916": {
        "name": "湮灭宝珠",
        "description": "<mainText><stats><attention>35</attention>法术强度</stats><br><li><passive>恶咒缠身：</passive>对英雄造成魔法伤害时会施加持续3秒的<status>25%重伤</status>效果。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 365,
            "total": 800
        },
        "pic": "",
        "icon": "3916.png"
    },
    "3930": {
        "name": "附魔：满足的吞噬者",
        "description": "<stats>+40%攻击速度<br>攻击时附带60魔法伤害</stats><br><br><unique>唯一被动—幻影打击：</unique>每进行一次普攻，下次普攻就会触发一次幻影攻击，幻影攻击会再一次触发所有攻击特效。远程英雄的每第四次攻击会触发这个效果。",
        "gold": {
            "base": 2450,
            "total": 2450
        },
        "pic": "3930.png",
        "icon": "3930.png"
    },
    "3931": {
        "name": "附魔：满足的吞噬者",
        "description": "<stats>+40%攻击速度<br>攻击时附带60魔法伤害</stats><br><br><unique>唯一被动—幻影打击：</unique>每进行一次普攻，下次普攻就会触发一次幻影攻击，幻影攻击会再一次触发所有攻击特效。远程英雄的每第四次攻击会触发这个效果。",
        "gold": {
            "base": 2450,
            "total": 2450
        },
        "pic": "3931.png",
        "icon": "3931.png"
    },
    "3932": {
        "name": "附魔：满足的吞噬者",
        "description": "<stats>+40%攻击速度<br>攻击时附带60魔法伤害</stats><br><br><unique>唯一被动—幻影打击：</unique>每进行一次普攻，下次普攻就会触发一次幻影攻击，幻影攻击会再一次触发所有攻击特效。远程英雄的每第四次攻击会触发这个效果。",
        "gold": {
            "base": 2450,
            "total": 2450
        },
        "pic": "3932.png",
        "icon": "3932.png"
    },
    "3933": {
        "name": "附魔：满足的吞噬者",
        "description": "<stats>+40%攻击速度<br>攻击时附带60魔法伤害</stats><br><br><unique>唯一被动—幻影打击：</unique>每进行一次普攻，下次普攻就会触发一次幻影攻击，幻影攻击会再一次触发所有攻击特效。远程英雄的每第四次攻击会触发这个效果。",
        "gold": {
            "base": 2450,
            "total": 2450
        },
        "pic": "3933.png",
        "icon": "3933.png"
    },
    "4001": {
        "name": "幽灵行者(仅近战可用)",
        "description": "<groupLimit>限购1个鞋类装备。</groupLimit><br><br><unique>唯一主动：</unique>变为幽灵状态6秒，无视地形的碰撞体积。在地形中时，获得250移动速度并且变为不可被选取状态、潜行状态和被沉默状态。承受伤害后的3秒内无法使用。(80秒冷却时间)。<br><unique>唯一被动—强化移动：</unique> +45移动速度<br><br><rules>(【幽灵行者】不受【掠食者】符文的影响。)</rules>",
        "gold": {
            "base": 700,
            "total": 1000
        },
        "pic": "",
        "icon": "4001.png"
    },
    "4003": {
        "name": "救生索",
        "description": "<stats>+20攻击力</stats><br><br><unique>唯一被动：</unique>+8穿甲<br><unique>唯一主动：</unique>标记你的当前位置。在4秒后你将回到被标记的位置(120秒冷却时间)。",
        "gold": {
            "base": 550,
            "total": 1550
        },
        "pic": "",
        "icon": "4003.png"
    },
    "4004": {
        "name": "幽魂弯刀",
        "description": "<stats>+70攻击力</stats><br><br><unique>唯一被动：</unique>+18穿甲<br><unique>唯一主动：</unique>标记你的当前位置。在4秒后你将回到被标记的位置(60秒冷却时间)。",
        "gold": {
            "base": 400,
            "total": 3050
        },
        "pic": "",
        "icon": "4004.png"
    },
    "4005": {
        "name": "帝国指令",
        "description": "<mainText><stats><attention>40</attention>法术强度<br><attention>200</attention>生命值<br><attention>20</attention>技能急速<br><attention>100%</attention>基础法力回复</stats><br><li><passive>协同开火：</passive>技能在<status>减速</status>或<status>定身</status>一名英雄时会造成额外伤害并将其标记。友方英雄的伤害会引爆标记，造成额外伤害并为你和该友军都提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术强度。<br></mainText><br>",
        "gold": {
            "base": 750,
            "total": 2500
        },
        "pic": "",
        "icon": "4005.png"
    },
    "4010": {
        "name": "放血面纱",
        "description": "<stats>+75法术强度<br>+350生命值</stats><br><br><unique>唯一被动—死亡之触：</unique> +15 法术穿透<br><unique>唯一被动：</unique>在用一个伤害型技能命中一名敌方英雄后，获得一个持续2秒的法术护盾，这个护盾可阻挡一个即将到来的技能(30秒冷却时间)。",
        "gold": {
            "base": 650,
            "total": 3100
        },
        "pic": "",
        "icon": "4010.png"
    },
    "4026": {
        "name": "水手的复仇",
        "description": "<stats>+45攻击力<br>+40护甲</stats><br><br><unique>唯一被动：</unique>在承受致命伤害时，立刻【净化】所有控制效果，刷新基础技能的冷却时间，并且免疫死亡4秒。在该阶段结束时，你会死亡。(210秒冷却时间)。",
        "gold": {
            "base": 100,
            "total": 2850
        },
        "pic": "",
        "icon": "4026.png"
    },
    "4101": {
        "name": "傲之追猎者的刀锋",
        "description": "<unique>唯一被动—利爪/尖牙：</unique>对野怪的普攻造成40额外伤害。用一次技能或攻击对野怪造成伤害的同时，会在5秒里持续偷取共30生命值并灼烧其造成80魔法伤害。<mana>在河道或野区中时，会基于你的已损失法力来提供法力回复，最多可达8法力/秒。</mana><br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "4101.png"
    },
    "4102": {
        "name": "附魔：战士",
        "description": "<stats>+65攻击力<br>+10%冷却缩减</stats><br><br><unique>唯一被动—深寒惩戒：</unique>【惩戒】可施放在敌方英雄上，造成较少真实伤害并偷取20%移动速度，持续2秒。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 1075,
            "total": 2625
        },
        "pic": "",
        "icon": "4102.png"
    },
    "4103": {
        "name": "附魔：熔渣巨人",
        "description": "<stats>+350生命值<br>+10%额外生命值</stats><br><br><unique>唯一被动—献祭：</unique>在战斗状态下，每秒对附近对敌人造成11 (+1x英雄等级)魔法伤害。对小兵和野怪造成200%额外伤害。<br><br><unique>唯一被动—深寒惩戒：</unique>【惩戒】可施放在敌方英雄上，造成较少真实伤害并偷取20%移动速度，持续2秒。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 1275,
            "total": 2625
        },
        "pic": "",
        "icon": "4103.png"
    },
    "4104": {
        "name": "附魔：符能回声",
        "description": "<stats>+80法术强度<br>+10%冷却缩减<br><mana>+300法力</mana></stats><br><br><unique>唯一被动—回声：</unique>移动和施法的同时会获得充能。在充能数到达100时，你的下一个伤害型技能会将充能数全部释放，对最多4个目标造成60(+10%法术强度)魔法伤害。<br><br>这个效果会对大型野怪造成250%伤害。用这个效果命中一个大型野怪的同时，会为你回复25%的已损失法力值。<br><br><unique>唯一被动—深寒惩戒：</unique>【惩戒】可施放在敌方英雄上，造成较少真实伤害并偷取20%移动速度，持续2秒。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 925,
            "total": 2625
        },
        "pic": "",
        "icon": "4104.png"
    },
    "4105": {
        "name": "附魔：血刃",
        "description": "<stats>+50%攻击速度</stats><br><br><unique>唯一被动：</unique>普攻会在命中时造成目标4%最大生命值的额外物理伤害（对野怪和小兵的最大伤害：75）。<br><br><unique>唯一被动—深寒惩戒：</unique>【惩戒】可施放在敌方英雄上，造成较少真实伤害并偷取20%移动速度，持续2秒。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 1175,
            "total": 2625
        },
        "pic": "",
        "icon": "4105.png"
    },
    "4201": {
        "name": "多兰的失落之盾",
        "description": "<stats>+100生命值</stats><br><br><passive>被动：</passive>每5秒回复15生命<br><passive>被动：</passive>普攻在命中时对小兵造成额外的5物理伤害。<br><unique>唯一被动：</unique>在受到来自一名敌方英雄的伤害后，在10秒里持续回复额外的20生命值。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "4201.png"
    },
    "4202": {
        "name": "多兰的失落之刃",
        "description": "<stats>+8攻击力<br>+80生命值<br>+8%生命偷取</stats><br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "4202.png"
    },
    "4203": {
        "name": "多兰的失落之戒",
        "description": "<stats>+60生命值<br>+15法术强度<br><mana>+10法力/5秒</mana></stats><br><br><passive>被动：</passive>普通攻击在命中时对小兵造成额外的5物理伤害。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "4203.png"
    },
    "4204": {
        "name": "多兰的失落之偶",
        "description": "<stats>+10法术强度<br><mana>+75%基础法力回复</mana>+5%治疗和护盾强度</stats><br><br><passive>被动:</passive>普通攻击在命中时对小兵造成额外的12物理伤害。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "4204.png"
    },
    "4301": {
        "name": "贤者印章",
        "description": "<stats>+10%冷却缩减<br>+50%基础生命回复<br>+5金币/10秒</stats><br><br><unique>唯一被动—恩惠：</unique>被你友军所杀的敌方小兵有时会掉落钱币，为你回复<scaleMana>10%</scaleMana>已损失的法力值（最低回复20）。如果附近有一名友方英雄，那么有时钱币会提供<gold>50</gold>金币作为替代。攻城小兵总会掉落钱币。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 450,
            "total": 450
        },
        "pic": "",
        "icon": "4301.png"
    },
    "4302": {
        "name": "巨神峰之心",
        "description": "<stats>+60生命值<br>+50%基础生命回复<br>+5金币/10秒</stats><br><br><unique>唯一被动—战利品：</unique>近战普通攻击会直接击杀生命值在200(+40x等级)以下的敌方小兵。在击杀小兵的同时，装备持有者和最近的友军英雄会恢复10到60生命值(基于已损失生命值)，并为该友军英雄提供等额的小兵赏金。如果装备持有者是远程英雄则治疗效果为50。这个效果需要附近有一名友军，并且需要消耗一层战利品的充能。每20秒获得一层充能，最多拥有3层充能。<br><br><groupLimit>限持一个初始装备。</groupLimit>",
        "gold": {
            "base": 400,
            "total": 400
        },
        "pic": "",
        "icon": "4302.png"
    },
    "4401": {
        "name": "自然之力",
        "description": "<mainText><stats><attention>350</attention>生命值<br><attention>70</attention>魔法抗性<br><attention>5%</attention>移动速度</stats><br><li><passive>吸收：</passive>受到来自敌方英雄的<magicDamage>魔法伤害</magicDamage>时会为你提供一层<attention>坚定</attention>。敌人的<status>定身</status>效果会提供额外层数。<li><passive>消散：</passive>在满层<attention>坚定</attention>时，获得魔法伤害减免并提供移动速度提升。</mainText><br>",
        "gold": {
            "base": 800,
            "total": 2900
        },
        "pic": "",
        "icon": "4401.png"
    },
    "4402": {
        "name": "激发之匣",
        "description": "<stats>+400生命值<br><mana>+300法力值</mana><br>+30攻击力<br>+10%冷却缩减</stats><br><br><unique>唯一被动—永恒：</unique>承受来自英雄的伤害时，你会回复15%伤害值的法力。花费法力时，你会回复20%法力消耗的生命值，每次施法最多回复25生命值。<br><br><unique>唯一被动：</unique>在使用一次技能后，在3秒里持续回复共8%已损失生命值和3%已损失法力值。<br><br><rules><font color='#447777'>“挫败那些诺克萨斯人” - 神庙守卫鲍迪尔</font></rules>",
        "gold": {
            "base": 600,
            "total": 2800
        },
        "pic": "",
        "icon": "4402.png"
    },
    "4403": {
        "name": "金铲铲",
        "description": "<mainText><stats><attention>70</attention>攻击力<br><attention>120</attention>法术强度<br><attention>50%</attention>攻击速度<br><attention>30%</attention>暴击几率<br><attention>250</attention>生命值<br><attention>30</attention>护甲<br><attention>30</attention>魔法抗性<br><attention>250</attention>法力<br><attention>20</attention>技能急速<br><attention>10%</attention>移动速度<br><attention>10%</attention>生命偷取<br><attention>100%</attention>基础生命回复<br><attention>100%</attention>基础法力回复</stats><br><li><passive>正在搞事：</passive>你正处在永久的火力全开中！</mainText><br>",
        "gold": {
            "base": 687,
            "total": 7387
        },
        "pic": "",
        "icon": "4403.png"
    },
    "4628": {
        "name": "视界专注",
        "description": "<mainText><stats><attention>85</attention>法术强度<br><attention>150</attention>生命值<br><attention>15</attention>技能急速</stats><br><li><passive>亢奋射击：</passive>用一个无目标类技能对相距700码之外的一名英雄造成<status>减速或定身</status>时，会使该英雄<keywordStealth>显形</keywordStealth>并使你对其造成的伤害提升。<br><br><rules>触发<passive>亢奋射击</passive>的该次技能也会享受到这个伤害提升效果。宠物和非定身类陷阱不会触发这个效果。领域类技能只有在初始放置时会触发这个效果。距离是从技能施放位置处进行测量的。</rules></mainText><br>",
        "gold": {
            "base": 1050,
            "total": 3000
        },
        "pic": "",
        "icon": "4628.png"
    },
    "4629": {
        "name": "星界驱驰",
        "description": "<mainText><stats><attention>65</attention>法术强度<br><attention>200</attention>生命值<br><attention>30</attention>技能急速<br><attention>5%</attention>移动速度</stats><br><li><passive>咒舞：</passive>在用3次独立的攻击或技能对一名英雄造成伤害后，会提供移动速度和法术强度，持续到脱离与英雄的战斗状态。<br></mainText><br>",
        "gold": {
            "base": 850,
            "total": 3000
        },
        "pic": "",
        "icon": "4629.png"
    },
    "4630": {
        "name": "枯萎珠宝",
        "description": "<mainText><stats><attention>25</attention>法术强度<br><attention>13%</attention>法术穿透</stats></mainText><br>",
        "gold": {
            "base": 815,
            "total": 1250
        },
        "pic": "",
        "icon": "4630.png"
    },
    "4632": {
        "name": "翠绿屏障",
        "description": "<mainText><stats><attention>20</attention>法术强度<br><attention>25</attention>魔法抗性</stats><br><li><passive>适应：</passive>每击杀一个单位提供<scaleMR>0.3魔法抗性</scaleMR>(最大值为<scaleMR>9</scaleMR>)。<br><br></mainText><br>",
        "gold": {
            "base": 115,
            "total": 1000
        },
        "pic": "",
        "icon": "4632.png"
    },
    "4633": {
        "name": "峡谷制造者",
        "description": "<mainText><stats><attention>70</attention>法术强度<br><attention>300</attention>生命值<br><attention>15</attention>技能急速<br><attention> 7%</attention>全能吸血</stats><br><li><passive>虚空腐蚀：</passive>在对敌方英雄造成伤害时，每过1秒，就会造成额外伤害。在满层时，该额外伤害会转而造成<trueDamage>真实伤害</trueDamage>。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得全能吸血和法术强度。</mainText><br>",
        "gold": {
            "base": 1050,
            "total": 3200
        },
        "pic": "",
        "icon": "4633.png"
    },
    "4635": {
        "name": "榨血睥睨",
        "description": "<mainText><stats><attention>20</attention>法术强度<br><attention>250</attention>生命值<br><attention> 5%</attention>全能吸血</stats></mainText><br>",
        "gold": {
            "base": 465,
            "total": 1300
        },
        "pic": "",
        "icon": "4635.png"
    },
    "4636": {
        "name": "暗夜收割者",
        "description": "<mainText><stats><attention>90</attention>法术强度<br><attention>300</attention>生命值<br><attention>25</attention>技能急速</stats><br><li><passive>灵魂撕裂：</passive>对一名英雄造成伤害时会造成额外魔法伤害并为你提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。</mainText><br>",
        "gold": {
            "base": 815,
            "total": 3200
        },
        "pic": "",
        "icon": "4636.png"
    },
    "4637": {
        "name": "恶魔之拥",
        "description": "<mainText><stats><attention>60</attention>法术强度<br><attention>450</attention>生命值</stats><br><li><passive>亚扎卡纳的凝视：</passive>对一名敌人造成技能伤害时会使其每秒受到基于最大生命值的魔法伤害。<li><passive>黑暗契约：</passive>提供基于你<scaleHealth>额外生命值</scaleHealth>的<scaleAP>法术强度</scaleAP>。 </mainText><br>",
        "gold": {
            "base": 815,
            "total": 3000
        },
        "pic": "",
        "icon": "4637.png"
    },
    "4638": {
        "name": "戒备眼石",
        "description": "<mainText><stats><attention>150</attention>生命值<br><attention>10</attention>技能急速</stats><br><li><passive>奥术窖藏：</passive>这件装备至多可储存3个已购买的控制守卫。<br><br>在完成了<keywordMajor>辅助任务</keywordMajor>并达到13级后，转化为<rarityLegendary>戒备眼石</rarityLegendary>。<br></mainText><br>",
        "gold": {
            "base": 1100,
            "total": 1100
        },
        "pic": "",
        "icon": "4638.png"
    },
    "4641": {
        "name": "萌动眼石",
        "description": "<mainText><stats><attention>100</attention>生命值<br><attention>10</attention>技能急速</stats><li><passive>奥术窖藏：</passive>这件装备可以至多储存3个已购买的控制守卫。<li><passive>盛开帝国：</passive>一旦你已经放置了15个侦察守卫，这件装备就会转变为<rarityLegendary>戒备眼石</rarityLegendary>。<br><br><rules>可从【侦察守卫饰品】和升级版<attention>唯一：辅助</attention>装备中放置侦察守卫。</rules><br><br></mainText><br>",
        "gold": {
            "base": 1200,
            "total": 1200
        },
        "pic": "",
        "icon": "4641.png"
    },
    "4642": {
        "name": "班德尔玻璃镜",
        "description": "<mainText><stats><attention>20</attention>法术强度<br><attention>10</attention>技能急速<br><attention>50%</attention>基础法力回复</stats></mainText><br>",
        "gold": {
            "base": 265,
            "total": 950
        },
        "pic": "",
        "icon": "4642.png"
    },
    "4643": {
        "name": "警觉眼石",
        "description": "<mainText><stats><attention>150</attention>生命值<br><attention>15</attention>技能急速</stats><br><li><passive>奥术窖藏：</passive>这件装备至多可储存3个已购买的控制守卫。<li><passive>注视：</passive>使你的侦察守卫和控制守卫的放置上限提升1。<li><passive>以绪塔尔的祝福：</passive>提供12%提升至额外生命值、额外攻击力、技能急速和法术强度。<br><br><rules>由<rarityLegendary>戒备眼石</rarityLegendary>升级而成。</rules></mainText><br>",
        "gold": {
            "base": 0,
            "total": 1100
        },
        "pic": "",
        "icon": "4643.png"
    },
    "4644": {
        "name": "破碎王后之冕",
        "description": "<mainText><stats><attention>70</attention>法术强度<br><attention>250</attention>生命值<br><attention>600</attention>法力<br><attention>20</attention>技能急速</stats><br><li><passive>神圣护卫：</passive>你已被<keywordMajor>护卫</keywordMajor>，可使即将到来的伤害降低。<keywordMajor>护卫</keywordMajor>在受到来自英雄的伤害后可存留1.5秒。<li><passive>圣洁赠礼：</passive>在具有<keywordMajor>护卫</keywordMajor>时和它被打破后的3秒里，提供法术强度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得移动速度和法术强度。</mainText><br>",
        "gold": {
            "base": 265,
            "total": 2800
        },
        "pic": "",
        "icon": "4644.png"
    },
    "4645": {
        "name": "影焰",
        "description": "<mainText><stats><attention>100</attention>法术强度<br><attention>200</attention>生命值</stats><br><li><passive>余烬绽放：</passive>对英雄造成伤害时会获得额外<keywordStealth>法术穿透</keywordStealth>，数额基于目标的<scaleHealth>当前生命值</scaleHealth>。如果目标近期获得过护盾，则会获得针对该目标的满额收益。 </mainText><br>",
        "gold": {
            "base": 700,
            "total": 3000
        },
        "pic": "",
        "icon": "4645.png"
    },
    "6029": {
        "name": "铁刺鞭",
        "description": "<mainText><stats><attention>30</attention>攻击力</stats><br><br><active>主动 - </active><active>新月：</active>对附近敌人造成伤害。</mainText><br>",
        "gold": {
            "base": 225,
            "total": 1100
        },
        "pic": "",
        "icon": "6029.png"
    },
    "6035": {
        "name": "密银黎明",
        "description": "<mainText><stats><attention>40</attention>攻击力<br><attention>300</attention>生命值<br><attention>40</attention>魔法抗性</stats><br><br><active>主动 - </active><active>水银：</active>移除你英雄身上的所有控制类减益效果并提供韧性和减速抗性。</mainText><br>",
        "gold": {
            "base": 425,
            "total": 3000
        },
        "pic": "",
        "icon": "6035.png"
    },
    "6333": {
        "name": "死亡之舞",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>45</attention>护甲<br><attention>15</attention>技能急速</stats><br><li><passive>无视痛苦：</passive>所受的伤害会以流血形式持续扣除。<li><passive>蔑视：</passive>参与击杀英雄后会净化<passive>无视痛苦</passive>的剩余伤害，并持续回复生命值。</mainText><br>",
        "gold": {
            "base": 525,
            "total": 3300
        },
        "pic": "",
        "icon": "6333.png"
    },
    "6609": {
        "name": "炼金朋克链锯剑",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>250</attention>生命值<br><attention>25</attention>技能急速</stats><br><li><passive>劈削：</passive>对敌方英雄造成物理伤害时会施加25%<status>重伤</status>效果，持续3秒。如果目标的生命值低于50%，那么<status>重伤</status>效果会提升至40%。<br><br><rules><status>重伤</status>会降低治疗效果和生命回复的效能。</rules></mainText><br>",
        "gold": {
            "base": 500,
            "total": 2800
        },
        "pic": "",
        "icon": "6609.png"
    },
    "6616": {
        "name": "流水法杖",
        "description": "<mainText><stats><attention>50</attention>法术强度<br><attention> 8%</attention>治疗和护盾强度<br><attention>100%</attention>基础法力回复</stats><br><li><passive>湍流：</passive>当你为一名友方英雄提供治疗或护盾效果时，你和你的目标都会获得法术强度和技能急速。<br></mainText><br>",
        "gold": {
            "base": 630,
            "total": 2300
        },
        "pic": "",
        "icon": "6616.png"
    },
    "6617": {
        "name": "月石再生器",
        "description": "<mainText><stats><attention>40</attention>法术强度<br><attention>200</attention>生命值<br><attention>20</attention>技能急速<br><attention>100%</attention>基础法力回复</stats><br><li><passive>星光恩典：</passive>在战斗中对一名英雄(包括友军)施放一次技能或攻击后，会给附近伤势最重的友方英雄回复生命值。每与英雄战斗1秒，就会使你的治疗效果和护盾强度提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得一个提升给<passive>星光恩典</passive>的治疗效果。<br><br></mainText><br>",
        "gold": {
            "base": 750,
            "total": 2500
        },
        "pic": "",
        "icon": "6617.png"
    },
    "6630": {
        "name": "渴血战斧",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>300</attention>生命值<br><attention>20</attention>技能急速<br><attention> 8%</attention>全能吸血</stats><br><br><active>主动 - </active><active>饥渴斩击：</active>对附近的敌人们造成伤害。每命中一个敌方英雄就会回复生命值。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。</mainText><br>",
        "gold": {
            "base": 300,
            "total": 3300
        },
        "pic": "",
        "icon": "6630.png"
    },
    "6631": {
        "name": "挺进破坏者",
        "description": "<mainText><stats><attention>50</attention>攻击力<br><attention>20%</attention>攻击速度<br><attention>300</attention>生命值<br><attention>20</attention>技能急速</stats><br><br><active>主动 - </active><active>蹒跚斩击：</active>对附近的敌人们造成伤害，使他们<status>减速</status>。可在移动时施放。<br><li><passive>英勇步态：</passive>造成物理伤害时会提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得移动速度。</mainText><br>",
        "gold": {
            "base": 400,
            "total": 3300
        },
        "pic": "",
        "icon": "6631.png"
    },
    "6632": {
        "name": "神圣分离者",
        "description": "<mainText><stats><attention>40</attention>攻击力<br><attention>300</attention>生命值<br><attention>20</attention>技能急速</stats><li><passive>咒刃：</passive>施放技能后，你的下一次普通攻击因强化而附带额外伤害<OnHit>攻击特效</OnHit>。如果目标是一个英雄，还会提供治疗效果。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得护甲穿透和法术穿透。<br></mainText><br>",
        "gold": {
            "base": 700,
            "total": 3300
        },
        "pic": "",
        "icon": "6632.png"
    },
    "6653": {
        "name": "兰德里的苦楚",
        "description": "<mainText><stats><attention>80</attention>法术强度<br><attention>600</attention>法力<br><attention>20</attention>技能急速</stats><br><li><passive>苦痛：</passive>基于目标的额外生命值对目标英雄造成额外魔法伤害。<li><passive>折磨：</passive>你的技能伤害会使敌人们灼烧，持续造成魔法伤害。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。</mainText><br>",
        "gold": {
            "base": 1000,
            "total": 3200
        },
        "pic": "",
        "icon": "6653.png"
    },
    "6655": {
        "name": "卢登的激荡",
        "description": "<mainText><stats><attention>80</attention>法术强度<br><attention>6</attention>法术穿透<br><attention>600</attention>法力<br><attention>20</attention>技能急速</stats><br><li><passive>回声：</passive>伤害型技能会对目标和3个附近的敌人造成魔法伤害并为你提供移动速度。对英雄造成技能伤害时，会使这个装备的冷却时间缩短。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术穿透。 </mainText><br>",
        "gold": {
            "base": 1050,
            "total": 3200
        },
        "pic": "",
        "icon": "6655.png"
    },
    "6656": {
        "name": "永霜",
        "description": "<mainText><stats><attention>70</attention>法术强度<br><attention>250</attention>生命值<br><attention>600</attention>法力<br><attention>20</attention>技能急速</stats><br><br><active>主动 - </active><active>冰川覆盖：</active>在一个锥形范围内造成伤害，并使其中的敌人<status>减速</status>。锥形范围中心的敌人会被<status>禁锢</status>而非被减速。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术强度。<br></mainText><br>",
        "gold": {
            "base": 265,
            "total": 2800
        },
        "pic": "",
        "icon": "6656.png"
    },
    "6660": {
        "name": "斑比的熔渣",
        "description": "<mainText><stats><attention>300</attention>生命值</stats><br><li><passive>献祭：</passive>承受或造成伤害时会使你开始每秒对附近敌人造成魔法伤害(对小兵和野怪时提升)。</mainText><br>",
        "gold": {
            "base": 200,
            "total": 1000
        },
        "pic": "",
        "icon": "6660.png"
    },
    "6662": {
        "name": "霜火护手",
        "description": "<mainText><stats><attention>450</attention>生命值<br><attention>25</attention>护甲<br><attention>25</attention>魔法抗性<br><attention>20</attention>技能急速</stats><br><li><passive>献祭：</passive>承受或造成伤害会使你开始每秒对附近敌人造成伤害。<br><li><passive>雪缚：</passive>攻击会生成一个冰霜领域并对该领域内的所有敌人造成魔法伤害。穿过该领域的敌人会被<status>减速</status>。<br><br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得生命值和体型．</mainText><br>",
        "gold": {
            "base": 1050,
            "total": 2800
        },
        "pic": "",
        "icon": "6662.png"
    },
    "6664": {
        "name": "涡轮炼金罐",
        "description": "<mainText><stats><attention>450</attention>生命值<br><attention>25</attention>护甲<br><attention>25</attention>魔法抗性<br><attention>20</attention>技能急速</stats><br><br><active>主动 - </active><active>极限超载：</active>在朝着敌方英雄或敌方防御塔移动时会提供移动速度。一旦贴近一名敌方英雄(或在4秒后)，你就会放出一道冲击波，使附近敌方英雄<status>减速</status>。<br><passive>补充燃料：</passive>移动和承受来自英雄和大型野怪的伤害时会积攒<keywordMajor>炼金罐</keywordMajor>层数。在100层时，你的下次普通攻击会对附近的所有敌人造成伤害(对小兵和野怪提升)。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速和生命值。</mainText><br>",
        "gold": {
            "base": 1050,
            "total": 2800
        },
        "pic": "",
        "icon": "6664.png"
    },
    "6670": {
        "name": "正午箭袋",
        "description": "<mainText><stats><attention>30</attention>攻击力<br><attention>15%</attention>攻击速度</stats><br><li><passive>精密：</passive>攻击会对小兵和野怪额外造成伤害。</mainText><br>",
        "gold": {
            "base": 300,
            "total": 1300
        },
        "pic": "",
        "icon": "6670.png"
    },
    "6671": {
        "name": "狂风之力",
        "description": "<mainText><stats><attention>60</attention>攻击力<br><attention>20%</attention>攻击速度<br><attention>20%</attention>暴击几率</stats><br><br><active>主动 - </active><active>暴雨：</active>朝着目标方向冲刺，同时对你终点附近生命值最低的敌人发射3个弹体。造成伤害，对低生命值的目标时提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得移动速度。</mainText><br>",
        "gold": {
            "base": 625,
            "total": 3400
        },
        "pic": "",
        "icon": "6671.png"
    },
    "6672": {
        "name": "海妖杀手",
        "description": "<mainText><stats><attention>65</attention>攻击力<br><attention>25%</attention>攻击速度<br><attention>20%</attention>暴击几率</stats><br><li><passive>放倒它：</passive>每第三次攻击造成额外的真实伤害。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得攻击速度。</mainText><br>",
        "gold": {
            "base": 625,
            "total": 3400
        },
        "pic": "",
        "icon": "6672.png"
    },
    "6673": {
        "name": "不朽盾弓",
        "description": "<mainText><stats><attention>50</attention>攻击力<br><attention>20%</attention>攻击速度<br><attention>20%</attention>暴击几率<br><attention>7%</attention>生命偷取</stats><br><li><passive>救主灵刃：</passive>在受到将使你的生命值跌到30%以下的伤害时，提供护盾值。此外，提供攻击力。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得攻击力和生命值。</mainText><br>",
        "gold": {
            "base": 600,
            "total": 3400
        },
        "pic": "",
        "icon": "6673.png"
    },
    "6675": {
        "name": "纳沃利迅刃",
        "description": "<mainText><stats><attention>60</attention>攻击力<br><attention>20%</attention>暴击几率<br><attention>30</attention>技能急速</stats><br><li><passive>灵巧打击：</passive>你的攻击在暴击时会使你的基础技能缩短20%的剩余冷却时间。</mainText><br>",
        "gold": {
            "base": 825,
            "total": 3400
        },
        "pic": "",
        "icon": "6675.png"
    },
    "6676": {
        "name": "收集者",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>20%</attention>暴击几率<br><attention>12</attention>穿甲</stats><br><li><passive>死与税：</passive>如果你造成的伤害将使一名敌方英雄的生命值跌到5%以下，那么会直接将其处决。击杀英雄时会为你提供额外的25金币。</mainText><br>",
        "gold": {
            "base": 425,
            "total": 3000
        },
        "pic": "",
        "icon": "6676.png"
    },
    "6677": {
        "name": "狂怒小刀",
        "description": "<mainText><stats><attention>25%</attention>攻击速度</stats><br><li><passive>怨怒：</passive>你的暴击几率会被转化为<OnHit>攻击特效</OnHit>伤害。已转化的每20%暴击几率提供<physicalDamage>35</physicalDamage><OnHit>攻击特效</OnHit>。</mainText><br>",
        "gold": {
            "base": 200,
            "total": 800
        },
        "pic": "",
        "icon": "6677.png"
    },
    "6691": {
        "name": "德拉克萨的暮刃",
        "description": "<mainText><stats><attention>60</attention>攻击力<br><attention>18</attention>穿甲<br><attention>20</attention>技能急速</stats><br><li><passive>夜行者：</passive>攻击一名敌方英雄时会附带额外伤害。如果持有者是一名近战英雄，这个攻击还会使目标<status>减速</status>。如果一名在过去3秒内曾被你造成过伤害的英雄阵亡，就会刷新这个冷却时间并获得<keywordStealth>隐形</keywordStealth>状态。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速和移动速度。<br></mainText><br>",
        "gold": {
            "base": 900,
            "total": 3100
        },
        "pic": "",
        "icon": "6691.png"
    },
    "6692": {
        "name": "星蚀",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>18</attention>穿甲<br><attention> 7%</attention>全能吸血</stats><br><br><li><passive>永升之月：</passive>在1.5秒内用2次独立的攻击或技能命中一名英雄时，会造成额外伤害，并为你提供移动速度和护盾值。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得护甲穿透和移动速度。</mainText><br>",
        "gold": {
            "base": 750,
            "total": 3100
        },
        "pic": "",
        "icon": "6692.png"
    },
    "6693": {
        "name": "暗行者之爪",
        "description": "<mainText><stats><attention>60</attention>攻击力<br><attention>18</attention>穿甲<br><attention>20</attention>技能急速</stats><br><br><active>主动 - </active><active>沙之挥击：</active>冲刺并穿过目标敌方英雄，造成伤害。你对目标造成的伤害提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得穿甲和移动速度。</mainText><br>",
        "gold": {
            "base": 900,
            "total": 3100
        },
        "pic": "",
        "icon": "6693.png"
    },
    "6694": {
        "name": "赛瑞尔达的怨恨",
        "description": "<mainText><stats><attention>45</attention>攻击力<br><attention>30%</attention>护甲穿透<br><attention>20</attention>技能急速</stats><br><li><passive>严寒：</passive>伤害型技能会使敌人<status>减速</status>。</mainText><br>",
        "gold": {
            "base": 650,
            "total": 3200
        },
        "pic": "",
        "icon": "6694.png"
    },
    "6695": {
        "name": "巨蛇之牙",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>12</attention>穿甲</stats><br><li><passive>掠盾者：</passive>对一名敌方英雄造成伤害时，会使其获得的任何护盾降低。当你对一名未被掠盾者影响的敌人造成伤害时，会使其身上的所有护盾降低。<br><br>装备对近战携带者和远程携带者会有不同的性能。</mainText><br>",
        "gold": {
            "base": 625,
            "total": 2600
        },
        "pic": "",
        "icon": "6695.png"
    },
    "6696": {
        "name": "公理圆弧",
        "description": "<mainText><stats><attention>55</attention>攻击力<br><attention>10</attention>穿甲<br><attention>25</attention>技能急速</stats><br><li><passive>涌动：</passive>在你对一名敌方英雄造成伤害后，如果该英雄在3秒内阵亡，则会返还你20%的终极技能总冷却时间。</mainText><br>",
        "gold": {
            "base": 800,
            "total": 3000
        },
        "pic": "",
        "icon": "6696.png"
    },
    "7000": {
        "name": " 沙雀之爪",
        "description": "<mainText><stats><ornnBonus>75</ornnBonus>攻击力<br><ornnBonus>26</ornnBonus>穿甲<br><ornnBonus>25</ornnBonus>技能急速</stats><br><br><active>主动 - </active><active>沙之挥击：</active>冲刺并穿过目标敌方英雄，造成伤害。你对目标造成的伤害提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得穿甲和移动速度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3100
        },
        "pic": "",
        "icon": "7000.png"
    },
    "7001": {
        "name": " 朔望",
        "description": "<mainText><stats><ornnBonus>75</ornnBonus>攻击力<br><ornnBonus>26</ornnBonus>穿甲<br><ornnBonus> 8%</ornnBonus>全能吸血</stats><br><br><li><passive>永升之月：</passive>在1.5秒内用2次独立的攻击或技能命中一名英雄时，会造成额外伤害，并为你提供移动速度和护盾值。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得护甲穿透和移动速度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3100
        },
        "pic": "",
        "icon": "7001.png"
    },
    "7002": {
        "name": " 德拉克萨的暗影雕刻者",
        "description": "<mainText><stats><ornnBonus>75</ornnBonus>攻击力<br><ornnBonus>26</ornnBonus>穿甲<br><ornnBonus>25</ornnBonus>技能急速</stats><br><li><passive>夜行者：</passive>攻击一名敌方英雄时会附带额外伤害。如果持有者是一名近战英雄，这个攻击还会使目标<status>减速</status>。如果一名在过去3秒内曾被你造成过伤害的英雄阵亡，就会刷新这个冷却时间并获得<keywordStealth>隐形</keywordStealth>状态。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速和移动速度。<br></mainText><br>",
        "gold": {
            "base": 0,
            "total": 3100
        },
        "pic": "",
        "icon": "7002.png"
    },
    "7003": {
        "name": " 涡轮增压版海克斯实验品",
        "description": "<mainText><stats><ornnBonus>600</ornnBonus>生命值<br><ornnBonus>40</ornnBonus>护甲<br><ornnBonus>40</ornnBonus>魔法抗性<br><ornnBonus>25</ornnBonus>技能急速</stats><br><br><active>主动 - </active><active>极限超载：</active>在朝着敌方英雄或敌方防御塔移动时会提供移动速度。一旦贴近一名敌方英雄(或在4秒后)，你就会放出一道冲击波，使附近敌方英雄<status>减速</status>。<br><passive>补充燃料：</passive>移动和承受来自英雄和大型野怪的伤害时会积攒<keywordMajor>炼金罐</keywordMajor>层数。在100层时，你的下次普通攻击会对附近的所有敌人造成伤害(对小兵和野怪提升)。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速和生命值。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 2800
        },
        "pic": "",
        "icon": "7003.png"
    },
    "7004": {
        "name": " 炉火冠饰",
        "description": "<mainText><stats><ornnBonus>600</ornnBonus>生命值<br><ornnBonus>50</ornnBonus>护甲<br><ornnBonus>50</ornnBonus>魔法抗性<br><ornnBonus>25</ornnBonus>技能急速</stats><br><li><passive>献祭：</passive>承受或造成伤害会使你开始每秒对附近敌人造成魔法伤害(对抗小兵和野怪时提升)。用这个效果对敌方英雄或史诗级野怪造成伤害时会添加一层叠加效果，来提升后续的<passive>献祭</passive>伤害。<li><passive>火焰触摸：</passive>在最大<passive>献祭</passive>层数时，你的攻击会灼烧附近的敌人来每秒造成你的<passive>献祭</passive>伤害。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得韧性、减速抗性和生命值。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3200
        },
        "pic": "",
        "icon": "7004.png"
    },
    "7005": {
        "name": " 霜铸之握",
        "description": "<mainText><stats><ornnBonus>600</ornnBonus>生命值<br><ornnBonus>40</ornnBonus>护甲<br><ornnBonus>40</ornnBonus>魔法抗性<br><ornnBonus>25</ornnBonus>技能急速</stats><br><li><passive>献祭：</passive>承受或造成伤害会使你开始每秒对附近敌人造成伤害。<br><li><passive>雪缚：</passive>攻击会生成一个冰霜领域并对该领域内的所有敌人造成魔法伤害。穿过该领域的敌人会被<status>减速</status>。<br><br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得生命值和体型．</mainText><br>",
        "gold": {
            "base": 0,
            "total": 2800
        },
        "pic": "",
        "icon": "7005.png"
    },
    "7006": {
        "name": " 台风",
        "description": "<mainText><stats><ornnBonus>80</ornnBonus>攻击力<br><ornnBonus>35%</ornnBonus>攻击速度<br><attention>20%</attention>暴击几率</stats><br><br><active>主动 - </active><active>暴雨：</active>朝着目标方向冲刺，同时对你终点附近生命值最低的敌人发射3个弹体。造成伤害，对低生命值的目标时提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得移动速度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3400
        },
        "pic": "",
        "icon": "7006.png"
    },
    "7007": {
        "name": " 堕蛟祭品",
        "description": "<mainText><stats><ornnBonus>85</ornnBonus>攻击力<br><ornnBonus>40%</ornnBonus>攻击速度<br><attention>20%</attention>暴击几率</stats><br><li><passive>放倒它：</passive>每第三次攻击造成额外的真实伤害。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得攻击速度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3400
        },
        "pic": "",
        "icon": "7007.png"
    },
    "7008": {
        "name": " 鲜血守卫",
        "description": "<mainText><stats><ornnBonus>65</ornnBonus>攻击力<br><ornnBonus>30%</ornnBonus>攻击速度<br><attention>20%</attention>暴击几率<br><ornnBonus>8%</ornnBonus>生命偷取</stats><br><li><passive>救主灵刃：</passive>在受到将使你的生命值跌到30%以下的伤害时，提供护盾值。此外，提供攻击力。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得攻击力和生命值。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3400
        },
        "pic": "",
        "icon": "7008.png"
    },
    "7009": {
        "name": " 艾卡西亚的诅咒",
        "description": "<mainText><stats><ornnBonus>90</ornnBonus>法术强度<br><ornnBonus>450</ornnBonus>生命值<br><ornnBonus>20</ornnBonus>技能急速<br><ornnBonus> 8%</ornnBonus>全能吸血</stats><br><li><passive>虚空腐蚀：</passive>在对敌方英雄造成伤害时，每过1秒，就会造成额外伤害。在满层时，该额外伤害会转而造成<trueDamage>真实伤害</trueDamage>。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得全能吸血和法术强度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3200
        },
        "pic": "",
        "icon": "7009.png"
    },
    "7010": {
        "name": " 暮潮",
        "description": "<mainText><stats><ornnBonus>120</ornnBonus>法术强度<br><ornnBonus>400</ornnBonus>生命值<br><ornnBonus>30</ornnBonus>技能急速</stats><br><li><passive>灵魂撕裂：</passive>对一名英雄造成伤害时会造成额外魔法伤害并为你提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3200
        },
        "pic": "",
        "icon": "7010.png"
    },
    "7011": {
        "name": " 升级版飞行包",
        "description": "<mainText><stats><ornnBonus>120</ornnBonus>法术强度<br><ornnBonus>10</ornnBonus>法术穿透<br><ornnBonus>350</ornnBonus>生命值<br><ornnBonus>20</ornnBonus>技能急速</stats><br><br><active>主动 - </active><active>超音速：</active>朝着目标方向冲刺，释放一道魔法弹圆弧，造成魔法伤害。随后，在朝着敌方英雄移动时提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术穿透。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3200
        },
        "pic": "",
        "icon": "7011.png"
    },
    "7012": {
        "name": " 兰德里的挽歌",
        "description": "<mainText><stats><ornnBonus>110</ornnBonus>法术强度<br><ornnBonus>800</ornnBonus>法力<br><ornnBonus>25</ornnBonus>技能急速</stats><br><li><passive>苦痛：</passive>基于目标的额外生命值对目标英雄造成额外魔法伤害。<li><passive>折磨：</passive>你的技能伤害会使敌人们灼烧，持续造成魔法伤害。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3200
        },
        "pic": "",
        "icon": "7012.png"
    },
    "7013": {
        "name": " 卢登之眼",
        "description": "<mainText><stats><ornnBonus>100</ornnBonus>法术强度<br><ornnBonus>10</ornnBonus>法术穿透<br><ornnBonus>800</ornnBonus>法力<br><ornnBonus>25</ornnBonus>技能急速</stats><br><li><passive>回声：</passive>伤害型技能会对目标和3个附近的敌人造成魔法伤害并为你提供移动速度。对英雄造成技能伤害时，会使这个装备的冷却时间缩短。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术穿透。 </mainText><br>",
        "gold": {
            "base": 0,
            "total": 3200
        },
        "pic": "",
        "icon": "7013.png"
    },
    "7014": {
        "name": " 永恒凛冬",
        "description": "<mainText><stats><ornnBonus>90</ornnBonus>法术强度<br><ornnBonus>350</ornnBonus>生命值<br><ornnBonus>800</ornnBonus>法力<br><ornnBonus>25</ornnBonus>技能急速</stats><br><br><active>主动 - </active><active>冰川覆盖：</active>在一个锥形范围内造成伤害，并使其中的敌人<status>减速</status>。锥形范围中心的敌人会被<status>禁锢</status>而非被减速。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术强度。<br></mainText><br>",
        "gold": {
            "base": 0,
            "total": 2800
        },
        "pic": "",
        "icon": "7014.png"
    },
    "7015": {
        "name": " 无休饥渴",
        "description": "<mainText><stats><ornnBonus>70</ornnBonus>攻击力<br><ornnBonus>450</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速<br><ornnBonus> 12%</ornnBonus>全能吸血</stats><br><br><active>主动 - </active><active>饥渴斩击：</active>对附近的敌人们造成伤害。每命中一个敌方英雄就会回复生命值。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3300
        },
        "pic": "",
        "icon": "7015.png"
    },
    "7016": {
        "name": " 梦想击碎者",
        "description": "<mainText><stats><ornnBonus>60</ornnBonus>攻击力<br><ornnBonus>30%</ornnBonus>攻击速度<br><ornnBonus>400</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速</stats><br><br><active>主动 - </active><active>蹒跚斩击：</active>对附近的敌人们造成伤害，使他们<status>减速</status>。可在移动时施放。<br><li><passive>英勇步态：</passive>造成物理伤害时会提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得移动速度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3300
        },
        "pic": "",
        "icon": "7016.png"
    },
    "7017": {
        "name": " 诛神",
        "description": "<mainText><stats><ornnBonus>60</ornnBonus>攻击力<br><ornnBonus>450</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速</stats><li><passive>咒刃：</passive>施放技能后，你的下一次普通攻击因强化而附带额外伤害<OnHit>攻击特效</OnHit>。如果目标是一个英雄，还会提供治疗效果。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得护甲穿透和法术穿透。<br></mainText><br>",
        "gold": {
            "base": 0,
            "total": 3300
        },
        "pic": "",
        "icon": "7017.png"
    },
    "7018": {
        "name": " 无尽之力",
        "description": "<mainText><stats><ornnBonus>45</ornnBonus>攻击力<br><ornnBonus>40%</ornnBonus>攻击速度<br><ornnBonus>400</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速</stats><br><li><passive>三重打击：</passive>攻击会提供移动速度。如果目标是英雄，则提升你的基础攻击力，可叠加。<li><passive>咒刃：</passive>施放技能后，你的下一次攻击因强化而附带额外伤害。<br> <br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得：攻击力、技能急速、和移动速度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 3333
        },
        "pic": "",
        "icon": "7018.png"
    },
    "7019": {
        "name": " 金色黎明的圣物箱",
        "description": "<mainText><stats><ornnBonus>400</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速<br><ornnBonus>40</ornnBonus>护甲<br><ornnBonus>40</ornnBonus>魔法抗性</stats><br><br><active>主动 - </active><active>虔诚：</active>为附近友军提供持续衰减的<shield>护盾值</shield>。<br><li><passive>奉献：</passive>为附近友方英雄提供护甲和<scaleMR>魔法抗性</scaleMR>。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得护甲和魔法抗性加成至<passive>奉献</passive>。<br><br></mainText><br>",
        "gold": {
            "base": 0,
            "total": 2500
        },
        "pic": "",
        "icon": "7019.png"
    },
    "7020": {
        "name": " 舒瑞娅的安魂曲",
        "description": "<mainText><stats><ornnBonus>70</ornnBonus>法术强度<br><ornnBonus>300</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速<br><ornnBonus>200%</ornnBonus>基础法力回复</stats><br><br><active>主动 - </active><active>鼓舞：</active>为你和附近的友方英雄提供移动速度。<li><passive>激发：</passive>强化或保护另一名己方英雄时，会为你和目标都提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得技能急速。<br></mainText><br>",
        "gold": {
            "base": 0,
            "total": 2500
        },
        "pic": "",
        "icon": "7020.png"
    },
    "7021": {
        "name": " 降星者",
        "description": "<mainText><stats><ornnBonus>70</ornnBonus>法术强度<br><ornnBonus>300</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速<br><ornnBonus>200%</ornnBonus>基础法力回复</stats><br><li><passive>星光恩典：</passive>在战斗中对一名英雄(包括友军)施放一次技能或攻击后，会给附近伤势最重的友方英雄回复生命值。每与英雄战斗1秒，就会使你的治疗效果和护盾强度提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得一个提升给<passive>星光恩典</passive>的治疗效果。<br><br></mainText><br>",
        "gold": {
            "base": 0,
            "total": 2500
        },
        "pic": "",
        "icon": "7021.png"
    },
    "7022": {
        "name": " 命令之座",
        "description": "<mainText><stats><ornnBonus>70</ornnBonus>法术强度<br><ornnBonus>300</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速<br><ornnBonus>200%</ornnBonus>基础法力回复</stats><br><li><passive>协同开火：</passive>技能在<status>减速</status>或<status>定身</status>一名英雄时会造成额外伤害并将其标记。友方英雄的伤害会引爆标记，造成额外伤害并为你和该友军都提供移动速度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得法术强度。<br></mainText><br>",
        "gold": {
            "base": 0,
            "total": 2500
        },
        "pic": "",
        "icon": "7022.png"
    },
    "7023": {
        "name": " 季分点",
        "description": "<mainText><stats><ornnBonus>400</ornnBonus>生命值<br><ornnBonus>25</ornnBonus>技能急速<br><ornnBonus>40</ornnBonus>护甲<br><ornnBonus>40</ornnBonus>魔法抗性</stats><br><li><passive>闪烁：</passive>在<status>定身</status>英雄或<status>被定身</status>时，使该目标和附近的所有敌方英雄受到伤害提升。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得 <attention>护甲和魔法抗性</attention></mainText><br>",
        "gold": {
            "base": 0,
            "total": 2500
        },
        "pic": "",
        "icon": "7023.png"
    },
    "7024": {
        "name": " 律顿",
        "description": "<mainText><stats><ornnBonus>90</ornnBonus>法术强度<br><ornnBonus>350</ornnBonus>生命值<br><ornnBonus>800</ornnBonus>法力<br><ornnBonus>25</ornnBonus>技能急速</stats><br><li><passive>神圣护卫：</passive>你已被<keywordMajor>护卫</keywordMajor>，可使即将到来的伤害降低。<keywordMajor>护卫</keywordMajor>在受到来自英雄的伤害后可存留1.5秒。<li><passive>圣洁赠礼：</passive>在具有<keywordMajor>护卫</keywordMajor>时和它被打破后的3秒里，提供法术强度。<br><br><rarityMythic>神话被动：</rarityMythic>你每装备一件<rarityLegendary>传说</rarityLegendary>装备，就会获得移动速度和法术强度。</mainText><br>",
        "gold": {
            "base": 0,
            "total": 2800
        },
        "pic": "",
        "icon": "7024.png"
    },
    "7050": {
        "name": "普朗克 占位",
        "description": "",
        "gold": {
            "base": 0,
            "total": 0
        },
        "pic": "",
        "icon": "7050.png"
    },
    "8001": {
        "name": "厌恨锁链",
        "description": "<mainText><stats><attention>650</attention>生命值<br><attention>20</attention>技能急速</stats><br><br><active>主动 - </active> <active>起誓：</active>选择一名【仇敌】以开始积攒一个【复仇令】(90秒)。<br><li><passive>复仇令：</passive>减免从你的【仇敌】处所受的伤害，每层【复仇令】都会提升减免效果。你会持续获得层数，并在60秒后达到最大层数。<li><passive>报复：</passive>在满层时，你的【仇敌】在你附近时会降低韧性。<br><br><rules>主动效果可以在阵亡时施放，并且施放距离无限。层数会在选到一个新目标时重置。需要脱离与英雄的战斗状态长达15秒后才能施放。</rules><br><br><flavorText>\"她曾发誓要用她的一生来毁灭他。那双挑战护手听到了。\"</flavorText></mainText><br>",
        "gold": {
            "base": 800,
            "total": 2500
        },
        "pic": "",
        "icon": "8001.png"
    },
    "8020": {
        "name": "深渊面具",
        "description": "<mainText><stats><attention>450</attention>生命值<br><attention>35</attention>魔法抗性<br><attention>10</attention>技能急速</stats><br><li><passive>损毁：</passive><status>诅咒</status>附近的敌方英雄们，使其降低魔法抗性。每个被<status>诅咒</status>的敌方英雄都会为你提供魔法抗性。</mainText><br>",
        "gold": {
            "base": 650,
            "total": 2700
        },
        "pic": "",
        "icon": "8020.png"
    }
}
};
```

5. 未知内容

```

GET https://wegame.gtimg.com/g.55555-r.c4663/lib/vue/2.6.10/vue.runtime.min.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7

GET https://wegame.gtimg.com/g.55555-r.c4663/lib/vuex/3.1.0/vuex.min.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7

GET https://wegame.gtimg.com/g.55555-r.c4663/lib/vue-router/3.0.1/vue-router.min.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7

GET https://wegame.gtimg.com/g.55555-r.c4663/lib/jquery/2.2.2/jquery.min.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7

GET https://wegame.gtimg.com/g.26-r.c2d3c/helper/lol/record/js/309.0e943d65deffce75c3c5.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7

GET https://wegame.gtimg.com/g.26-r.c2d3c/helper/lol/record/js/profile.787cf1c9303ef794a9fd.js HTTP/1.1
Host: wegame.gtimg.com
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.124 Safari/537.36 qblink wegame.exe WeGame/5.4.1.8121 QBCore/3.70.91.400 QQBrowser/9.0.2524.400
Accept: */*
Referer: https://www.wegame.com.cn/helper/lol/record/profile.html
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.5;q=0.7

```




