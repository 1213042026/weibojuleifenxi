-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `weibo`
--

DROP TABLE IF EXISTS `weibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `author` varchar(300) DEFAULT NULL,
  `tag` varchar(300) DEFAULT NULL,
  `splitwords` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weibo`
--

LOCK TABLES `weibo` WRITE;
/*!40000 ALTER TABLE `weibo` DISABLE KEYS */;
INSERT INTO `weibo` VALUES (1,'大跌眼镜的强队表现，差强人意的超级巨星，出人意料的抢七结局，2017年NBA季后赛已经打得三观全毁。如果你与我一样有所期待，不如参加#美国航空直抵NBA决赛# 赢取NBA决赛之旅，坐@AmericanAirlines美国航空 去NBA决赛现场观赛。 秒拍视频 . ​​​','1150059164--hotdog俊','3.6,4.4','决赛 NBA 季后赛 航空 观赛'),(2,'足够热爱 所以简单。很多人说这个比赛有黑幕 别用你的歪解拉伸你的高度，只有经历其中才能知道工作人员的努力。感谢新浪，下周见','1150059164--hotdog俊','3.6,4.4','拉伸 黑幕 别用 热爱 歪解'),(3,'我回答了 @草草草草草喵 的问题，问题价值￥5.00，大家快来花1元围观~ 微博问答 ​​​','1150059164--hotdog俊','3.6,4.4','草草 微博 问答 5.00 快来'),(33,'????','6053131128--飞老师篮彩','1.4,2.2',''),(34,'NBA季后赛5.9日竞彩篮球推荐：勇士让8分，全场207小分。如果说骑士是想打“养生篮球”争取更多的休息时间，那么勇士是不会给任何弱队机会的，他们会把软柿子直接捏碎，因为去年总决赛3-1被翻盘的情景历历在目。勇士季后赛场均失分仅99.2分，其中对面同样跑轰的开拓者失分也就101.5，对爵士场均失分仅9 ​​​...全文','6053131128--飞老师篮彩','3.8,4.6','失分 篮球 勇士 场均 季后赛'),(35,'5.09篮彩NBA推荐，明天勇士的决胜局，小买一波，勇士让8赢爵士，207小分！出差回来了，也不知道是谁说我治性病去了，很扎心，我一直都很洁身自好的，性病，不存在的如果明天全黑，那就真说明我中毒了！ ​​​','6053131128--飞老师篮彩','3.8,4.6','小分 明天 性病 决胜局 勇士'),(36,'火箭125比104大胜马刺，19记三分，就看天王山之战了，两队都有赢得系列赛的能力，但马刺善于阵地攻防火箭就是三分放大招，大招不秒人直接被反杀。马刺习惯于三根刺作为基石的运转模式（每人无论什么情况必须15分以上）现在阿德加嫂铁林和尼尔森成为马刺的X因素，也使得比赛出现悬念。这也是波波老爷子 ​​​...全文','6053131128--飞老师篮彩','3.4,4.2','系列赛 马刺 火箭 三分'),(37,'5.8号NBA季后赛篮彩推荐：骑士让7分，全场213小分；凯尔特人受让4.5分，全场216.5大分；马刺受让6分，全场212大分。#篮彩nba推荐分析# 目前骑士总比分3-0遥遥领先猛龙，三场比赛净胜对手54分，系列赛的前三场比赛恰逢詹姆斯各项里程碑（上场时间超科比，季后赛进球超奥尼尔）詹姆斯场均可以拿到36.3分 ​​​...全文','6053131128--飞老师篮彩','3.6,4.4','全场 大分 三场 季后赛 篮彩'),(38,'明天推荐勇士让5.5分，全场208.5小分。勇士在主场连续输盘，特别是G2被格林戏剧化的演了一把，估计全世界的三分之二的彩民都在骂他的娘，不过客场G3勇士让分盘只开了5.5，凡事不过三。爵士的主场得分能力虽然好于客场，不过主力控卫乔治-希尔被列入每日观战名单，估计难以出场。格林G2扭伤膝盖，但他 ​​​...全文','6053131128--飞老师篮彩','3.6,4.4','格林 勇士 5.5 客场 G2'),(39,'这几天跟中了诅咒一样，连续几天都是4中2~大家还是挑选一下吧~ ​​​','6053131128--飞老师篮彩','3.2,4.0','挑选 几天 连续 诅咒'),(40,'NBA季后赛5.6号赛事推荐：骑士让3分，全场214大分；火箭让5分，全场214小分；据报道猛龙洛瑞因为左脚踝扭伤缺席了当地时间周四的球队训练，球队官方称还要经过多次的检测来确定伤势的严重程度，明天洛瑞是否上场存在疑问，洛瑞对猛龙的重要性可想而知，不管明天能否上场只怕发挥都不会很理想。骑士前 ​​​...全文','6053131128--飞老师篮彩','3.6,4.4','全场 214 洛瑞 上场 猛龙'),(41,'呵呵，最后7秒中爵士都不打了，格林还要来个犯规给爵士2个罚球，真想知道他收了多少钱！ ​​​','6053131128--飞老师篮彩','3.6,4.4','格林 犯规 爵士 他收 罚球'),(42,'虎扑篮球5月5日讯 马刺官方宣布，后卫托尼-帕克将缺席本赛季剩余比赛。“马刺后卫托尼-帕克今天早上在圣安东尼奥接受了核磁共振检查，检查结果显示，帕克左腿四头肌腱断裂。此次受伤发生在昨天的比赛第四节8分52秒，帕克将缺席2017年剩余所有季后赛比赛。他的复出时间表将在日后确定。”马刺在声明中 ​​​...全文','6053131128--飞老师篮彩','3.6,4.4','后卫 马刺 帕克 托尼 比赛'),(43,'相信奇才','6053131128--飞老师篮彩','1.8,2.6','奇才'),(64,'Sweet Hill糖丘甜品店, 太平南路168号远洋国际南区1F17号','2657134850--南京吃货大本营','4.6,5.4','糖丘 Sweet 甜品店 168 Hill'),(85,'女人出轨，女人在商界成为翘楚，女人保养若干下属，女人睡若干男官员，女人成为政界高官，女人嫁富豪，女人为其他女人受到的不公发声等等，只要人家不触发法律，假如你是女人，你再反感，你都要在公共场合闭嘴，你可以私下评论。唯有这样，你的社会地位才会提高。你看男人从来都是抱团互相打掩护的。中 ​​​...全文','1679008021--虫子唐朝马尔西','3.8,4.6','若干 女人 公共场合 打掩护'),(86,'突然发现中国的高房价挺好的，这导致女人必须工作，否则靠男人一个人的薪水无法养活一个家庭。女人必须工作，其实是提高了女性的社会地位。做家庭主妇的人多了，女性地位必然会降低，看看日本。女性地位低，必然不愿意生娃，社会人口老化，人口减少，国家命运堪忧，再看看日本。PS，家庭妇女的权益是职 ​​​...全文','1679008021--虫子唐朝马尔西','4.0,4.8','人口老化 女性 地位 生娃 PS'),(87,'//@也要楚天阔: 其实在所有国家，职业女性都比家庭主妇高级。职业女性直接在社会上获取价值，而不需要通过老公来间接获取。家庭主妇根本没有议价的权利，她们所有的权利都是职业女性帮忙争取来的。假如国会里没有女性议员，公司里没有女性高管，大学里没有女性教授，连堕胎生孩子都由男性决定。','1679008021--虫子唐朝马尔西','4.0,4.8','职业女性 家庭主妇 权利 女性 获取'),(88,'他祖宗的，老娘反正要出门工作。','1679008021--虫子唐朝马尔西','3.6,4.4','老娘 祖宗 出门 反正 工作'),(89,'做市场、公关、广告的人不少人有这样的冲动：接文案的私单，以弥补职场不顺心的缺憾。我的建议是不要这样做，除非你在写作方面天赋很高。天赋高的人，倚马可待，兼职就不算事儿。但普通人还是算了吧。你写上几年，一地鸡毛而已，赚的钱还不如摆地摊。而且写作待在家里，没积累人脉，真是不划算。 ​​​','1679008021--虫子唐朝马尔西','4.0,4.8','人有 天赋 私单 倚马可待 写作'),(91,'哈哈，够爆//@和硕礼亲王: 吴征与杨澜，潘石屹与张欣，本来就是partner的关系。不过对象是骆家辉嘛…','1679008021--虫子唐朝马尔西','4.0,4.8','张欣 和硕礼 杨澜 骆家辉 吴征'),(92,'//@神嘛事儿:回复@Momo一骑绝尘:不好说古都还是可以做做的//@Momo一骑绝尘:那西安是不是要被成都吸食了？//@神嘛事儿:回复@Momo一骑绝尘:不能//@Momo一骑绝尘:神儿啊，现在西安感觉比成都重庆差不少啊，以后随着中国大搞一带一路，西安还能起来不','1679008021--虫子唐朝马尔西','3.8,4.6','一骑 Momo 绝尘 神嘛 西安'),(93,'@上海滩小律师   是为数不多尊重女性的男士，作为一个律师，他看太多素养不错的女士被LOW男人纠缠而损失惨重的案例，为此他不停地提醒女士们。为律师致敬。但是我不同情这些女士。物种都是竞争的，不能因为你披着人皮就不竞争了。能和LOW男恋爱结婚的女士的DNA并不值得遗传，这符合竞争法则，没啥可惜 ​​​...全文','1679008021--虫子唐朝马尔西','4.0,4.8','女士 竞争 律师 看太多 LOW');
/*!40000 ALTER TABLE `weibo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 14:35:33
