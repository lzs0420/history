-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: plants
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adress` (
  `A_id` varchar(6) NOT NULL,
  `P_id` varchar(5) DEFAULT NULL,
  `P_adress1` varchar(20) DEFAULT NULL,
  `P_latitude` varchar(20) DEFAULT NULL,
  `P_longitude` varchar(20) DEFAULT NULL,
  `P_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES ('000001','00001','樱花园','34.820229','113.541533',1),('000002','00001','河园东路','34.818081','113.547571',1),('000003','00002','钟楼广场','34.822844','113.543617',0),('000004','00002','河园东路','34.825111','113.547571',0),('000005','00002','南边草坪','34.815717','113.545674',0),('000006','00003','南北核教学区东','34.825067','113.543967',0),('000007','00003','南边草坪','34.815481','113.545279',0),('000008','00004','南北核周围','34.821466','113.542081',1),('000009','00004','南边草坪','34.815354','113.546429',1),('000010','00004','各院办公楼周围','34.825015','113.546168',1),('000011','00005','南北核周围','34.821666','113.543904',0),('000012','00006','荷园餐厅东','34.821526','113.537544',0),('000013','00007','图书馆南','34.822504','113.545477',0),('000014','00007','计算机中心楼西 ','34.823289','113.541317',0),('000015','00007','南北核周围','34.824401','113.543411',0);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flag`
--

DROP TABLE IF EXISTS `flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flag` (
  `F_id` varchar(6) NOT NULL,
  `A_id` varchar(6) DEFAULT NULL,
  `P_userflag` int(1) DEFAULT NULL,
  `F_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`F_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flag`
--

LOCK TABLES `flag` WRITE;
/*!40000 ALTER TABLE `flag` DISABLE KEYS */;
INSERT INTO `flag` VALUES ('000001','000010',1,0),('000002','000010',1,0),('000003','000002',1,1),('000004','000003',1,-1);
/*!40000 ALTER TABLE `flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind`
--

DROP TABLE IF EXISTS `kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kind` (
  `K_id` varchar(5) NOT NULL,
  `P_id` varchar(5) DEFAULT NULL,
  `K_1` varchar(10) DEFAULT NULL,
  `K_2` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`K_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind`
--

LOCK TABLES `kind` WRITE;
/*!40000 ALTER TABLE `kind` DISABLE KEYS */;
INSERT INTO `kind` VALUES ('00001','00001','花','秋'),('00002','00002','草','夏'),('00003','00003','花','秋'),('00004','00004','花','夏'),('00005','00005','树','灌木'),('00006','00006','花','秋'),('00007','00007','花','春夏');
/*!40000 ALTER TABLE `kind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newplant`
--

DROP TABLE IF EXISTS `newplant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newplant` (
  `N_id` varchar(6) NOT NULL,
  `P_name` varchar(8) DEFAULT NULL,
  `P_adress1` varchar(20) DEFAULT NULL,
  `N_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`N_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newplant`
--

LOCK TABLES `newplant` WRITE;
/*!40000 ALTER TABLE `newplant` DISABLE KEYS */;
INSERT INTO `newplant` VALUES ('000001','夹竹桃','荷园商业街',0);
/*!40000 ALTER TABLE `newplant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `Pic_id` varchar(7) NOT NULL,
  `P_id` varchar(5) NOT NULL,
  PRIMARY KEY (`Pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES ('00001','00001'),('00002','00002'),('00003','00003'),('00004','00004'),('00005','00005'),('00006','00006'),('00007','00007'),('00100','00001'),('00101','00001');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant` (
  `P_id` varchar(5) NOT NULL,
  `P_name` varchar(8) NOT NULL,
  `P_florescence` varchar(10) DEFAULT NULL,
  `P_summary` varchar(600) DEFAULT NULL,
  `P_feature` varchar(800) DEFAULT NULL,
  `P_distribution` varchar(400) DEFAULT NULL,
  `P_value` varchar(1600) DEFAULT NULL,
  `P_culture` varchar(1600) DEFAULT NULL,
  PRIMARY KEY (`P_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` VALUES ('00001','雏菊','4-6月','雏菊（学名：Bellis perennis L.），又名马头兰花、延命菊，春菊、太阳菊等。是菊科植物的一种，多年生草本植物。高10厘米左右。雏菊原产于欧洲。原种被视为丛生的杂草，开花期在春季。雏菊在能够渡夏的寒冷地区可以进行分枝繁殖。早春开花，生气盎然，具有君子的风度和天真烂漫的风采，深得意大利人的喜爱，因而推举为国花。','多年生或一年生葶状草本，高10厘米左右。叶基生，草质，匙形，顶端圆钝，基部渐狭成柄，上半部边缘有疏钝齿或波状齿。头状花序单生，直径2.5-3.5厘米，花葶被毛；总苞半球形或宽钟形；总苞片近2层，稍不等长，长椭圆形，顶端钝，外面被柔毛。舌状花一层，雌性，舌片白色带粉红色，开展，全缘或有2-3齿，中央有多数两性花，都结果实，筒状，檐部长，有4-5裂片。瘦果扁，有边脉，两面无脉或有1脉。冠毛不存在或有连合成环且与花冠筒部或瘦果合生。','雏菊性喜冷凉气候， 忌炎热。喜光， 又耐半阴，对栽培地土壤要求不严格。种子发芽适温22-28℃，生育适温20-25℃。西南地区适宜种植中、小花单瓣或半重瓣品种。中、大花重瓣品种长势弱， 结籽差。原产欧洲，中国各地庭园栽培作为花坛观赏植物。','药用价值\n\n雏菊又叫干菊、白菊，药用价值非常高。它还有挥发油、氨基酸和多种微量元素。其中，黄铜的含量比其他的菊花高32%到61%，锡的含量比其他菊花高八到五十倍。\n农学家张履祥，在其著作《补农书》中曾写道：“白菊性甘温，久服最有益，古人春食苗、夏食英、冬食根，有以也。每地棱头种一二株，取其花，可以减茶之半，茶性苦寒与苦菊同泡。[8] \n观赏价值\n\n雏菊的叶为匙形丛生呈莲座状，密集矮生，颜色碧翠。从叶间抽出花葶，葶一花，错落排列，外观古朴，花朵娇小玲珑，色彩和谐。从叶间抽出花葶，葶一花，错落排列，外观古朴，花朵娇小玲珑，色彩和谐。早春开花，生气盎然，具有君子的风度和天真烂漫的风采，[9] \n园艺价值\n\n1、雏菊生长势强，易栽培。\n2、雏菊花梗高矮适中，花朵整齐，色彩明媚素净，可做盆植美化庭院阳台，也可用作园林观赏，盆栽、花境、切花等。\n3、花期长，耐寒能力强，是早春地被花卉的首选。\n4、雏菊作为街头绿地的地被花卉，具有较强的魅力，可与金盏菊、三色堇、杜鹃、红叶小檗等配植。','名称来源\n它的中文名叫雏菊是因为它和菊花很像，是线条花瓣的，区别在于菊花花瓣纤长而且卷曲油亮，雏菊花瓣则短小笔直，就像是未成形的菊花，故名雏菊。\n文学作品\n英国的莎士比亚在《哈姆雷特》中描写丹麦王的儿媳-奥菲利娅发疯投河那场戏中，奥菲利娅一边唱着自编 的歌谣，一边编织花环，那四种花中，其中一种就有雏菊。这是表示记忆的迷迭香；爱人，你记着吧；这是表示思想的三色堇。这是给您的茴香和漏斗花；这是给您的慈悲草。这儿是一枝雏菊；我想给您几朵紫罗兰，可是我父亲一死，它们全部谢了，她将迷迭香与三色堇放在了哈姆雷特的座椅上，递给王后茴香和漏斗花，给国王和自己芸香，也就是慈悲草，哥哥拿到雏菊，献给死去父亲的是紫罗兰。\n意大利国花\n雏菊花细小玲珑，惹人喜爱，外观古朴，花朵娇小玲珑，色彩和谐，早春开花，生气盎然，具有很高的观赏价值。意大利人十分喜爱清丽姣娆的雏菊，认为它具有君子的风度和天真烂漫的风采，因此将雏菊定为国花。\n雏菊花语\n雏菊的花语是天真、和平、希望、纯洁的美以及深藏在心底的爱。\n占卜爱情\n自古以来在西方国家，雏菊花常常被用来占卜爱情。把雏菊花的花瓣一片一片剥下来，每剥下一片，在心中默念：爱我，不爱我。直到最后一片花瓣，即代表爱人的心意。另一种占卜婚姻的方法是：如果你想知道自己在什么年岁结婚，只要随手拔起一把花，看看当中有几朵雏菊花，雏菊花的数目便是距离结婚日的年数。'),('00002','狗尾巴草','6-9月','狗尾巴草，别名狗尾草，属禾本科、狗尾草属一年生草本植物。根为须状，高大植株具支持根。秆直立或基部膝曲，高10-100厘米，基部径达3-7毫米。叶鞘松弛，无毛或疏具柔毛或疣毛，边缘具较长的密绵毛状纤毛；有祛风明目，清热利尿的作用。生于海拔4000米以下的荒野、道旁，为旱地作物常见的一种杂草。','狗尾巴草（原亚种），一年生。根为须状，高大植株具支持根。秆直立或基部膝曲，高10-100厘米，基部径达3-7毫米。叶鞘松弛，无毛或疏具柔毛或疣毛，边缘具较长 \n图册\n图册(9张)\n的密绵毛状纤毛；叶舌极短，缘有长1-2毫米的纤毛；叶片扁平，长三角状狭披针形或线状披针形，先端长渐尖或渐尖，基部钝圆形，几呈截状或渐窄，长4-30厘米，宽2-18毫米，通常无毛或疏被疣毛，边缘粗糙。圆锥花序紧密呈圆柱状或基部稍疏离，直立或稍弯垂，主轴被较长柔毛，长2-15厘米，宽4-13毫米（除刚毛外），刚毛长4-12毫米，粗糙或微粗糙，直或稍扭曲，通常绿色或褐黄到紫红或紫色；小穗2-5个簇生于主轴上或更多的小穗着生在短小枝上，椭圆形，先端钝，长2-2.5毫米，铅绿色；第一颖卵形、宽卵形，长约为小穗的1/3，先端钝或稍尖，具3脉；第二颖几与小穗等长，椭圆形，具5-7脉；第一外稃与小穗第长，具5-7脉，先端钝，其内稃短小狭窄；第二外稃椭圆形，顶端钝，具细点状皱纹，边缘内卷，狭窄；鳞被楔形，顶端微凹；花柱基分离；叶上下表皮脉间均为微波纹或无波纹的、壁较薄的长细胞。颖果灰白色。花果期5-10月。','生于海拔4 000米以下的荒野、道旁，为旱地作物常见的一种杂草。[1] 狗尾巴草种子发芽适宜温度为15~30℃。种子借风、灌溉浇水及收获物进行传播。种子经越冬休眠后萌发。适生性强，耐旱耐贫瘠，酸性或碱性土壤均可生长。[2] 生于农田、路边、荒地。分布中国各地；原产欧亚大陆的温带和暖温带地区，现广布于全世界的温带和亚热带地区。','饲用价值\n\n狗尾巴草秆、叶可作饲料，是牛驴马羊爱吃的植物。秋季的干草还可以作燃料生火烧水做饭，取暖铺床。小穗可提炼糠醛，全草含粗脂肪2.6%，粗蛋白10.27%，无氮浸出物34.55%，粗纤维34.40%，粗灰分10.60%。[1] 全草加水煮沸20分钟后，滤出液可喷杀菜虫。\n药用价值\n\n功能主治\n清热利湿；祛风明目；解毒；杀虫。主风热感冒；黄疸；小儿疳积；痢疾；小便涩痛；目赤涩痛；目赤肿痛；痈肿；寻常疣；疮癣。[3] \n1、《纲目》：治疣目，贯发，穿之即干灭也。凡赤眼拳毛倒睫者，翻转目险，以一、二茎蘸水戛去恶血。\n2、《纲目拾遗》：治疔痈癣。面上生癣，取草效茎揉软，不时搓之。\n3、《贵州民间方药集》：解热，治目疾。又用治麻（疣）子。\n4、《陆川本草》：去湿，消肿。治黄水疮。\n5、《重庆草药》：治目疾流泪起雾。','花语寓意\n\n花语\n坚忍、不被人了解的、艰难的爱，暗恋。[2] \n有一个很漂亮的小女孩过生日，很多男孩都送她花，各种各样的，但都很美。有一个穷人家的男孩就送了那个女孩一束狗尾巴花，当时那个女孩很生气，把他赶了出去，后来仔细想了，她想知道原因，男孩告诉她，狗尾巴草象征不被人了解的爱，但却可以为她默默付出。[2] \n寓意\n把三支狗尾巴草编成麻花辫状，遍成一条，根据手指的大小，然后弯个圈打成结，带到手指上，代表私定终身[2] \n传说故事\n\n狗尾巴草是仙女下凡时，从天上带下来的爱犬化作的。仙女在人间和一位书生相恋，但却遭到王母娘娘的阻挠，仙女和书生为了在一起，不惜反抗王母娘娘。在对抗的最后的时刻，仙女的爱犬为了救助人而不惜舍弃自己的性命。最终仙女和书生化作了阴阳两块玉佩，在人世间流传。相传相恋的两个人，如果分别获得这两块玉佩，便能有情人终成眷属。仙女的爱犬死后则化作了狗尾巴草，世世代代，传承着对爱情的见证。'),('00003','萱草','7-9月','萱草（学名：Hemerocallis fulva）属多年生宿根草本。具短根状茎和粗壮的纺锤形肉质根。萱草别名众多，有“金针”、“黄花菜”、“忘忧草”、“宜男草”、“疗愁”、“鹿箭”等名，英文中称萱草为“虎百合”（Tiger Lily，这也是卷丹的英文名）。当食用时，多被称为“金针”（golden needle）。其叶形为扁平状的长线型，与地下茎有微量的毒，不可直接食用。花形则是于开花期会长出细长绿色的开花枝，花色橙黄、花柄很长、呈为像百合花一样的筒状。结出来的果子有翅。全国各地常见栽培，秦岭以南各省区有野生的。\n萱草类花卉虽原主产中国，但长期以来改良不多。1930年代以后，美国一些植物园、园艺爱好者收集中、日等国所产萱草属植物，进行杂交育种，现品种已达万种以上，成为重要的观赏及切花花卉，也是百合科花卉中品种最多的一类。\n同时，萱草也是中国的母亲花。','多年生草本，根状茎粗短，具肉质纤维根，多数膨大呈窄长纺锤形。叶基生成丛，条状披针 \n萱草照片集锦\n萱草照片集锦(11张)\n形，长30～60cm，宽约2.5cm，背面被白粉。夏季开橘黄色大花，花葶长于叶，高达1m以上；圆锥花序顶生，有花6～12朵，花梗长约1cm，有小的披针形苞片；花长7～12cm，花被基部粗短漏斗状，长达2.5cm，花被6片，开展，向外反卷，外轮3片，宽1～2cm，内轮3片宽达2.5cm，边缘稍作波状；雄蕊6，花丝长，着生花被喉部；子房上位，花柱细长。[2] \n本种的主要特征是：根近肉质，中下部有纺锤状膨大；叶一般较宽；花早上开晚上凋谢，无香味，桔红色至桔黄色，内花被裂片下部一般有∧形采斑。这些特征可以区别于本国产的其他种类。花果期为5-7月。','原产于中国、西伯利亚、日本和东南亚。性强健，耐寒，华北可露地越冬，适应性强，喜湿润也耐旱，喜阳光又耐半荫。对土壤选择性不强，但以富含腐殖质，排水良好的湿润土壤为宜。适应在海拔300-2500米生长。','药用价值\n\n功能主治\n清热利尿，凉血止血。用于腮腺炎，黄疸，膀胱炎，尿血，小便不利，乳汁缺乏，月经不调，衄血，便血。外用治乳腺炎。[6] \n利水，凉血。治水肿，小便不利，淋浊，带下，黄疸，衄血，便血，崩漏，乳痈。\n①《本草拾遗》：治沙淋，下水气，主酒疸黄色通身者，捣绞汁服。\n②《本草衍义》：研汁一盏，生姜汁半盏相和，时时细呷，治大热衄血。\n③《滇南本草》：治乳结红肿硬痛，乳汁不通，乳痈，乳岩，攻痈疮，汉中产者，其性补阴血，止腰疼，治崩漏，止大肠下血。\n④《本草蒙筌》：咀和酒煎，为破脑伤风要药。\n⑤《本草正》：治带浊。\n⑥《本草从新》：小便不通，煎水频饮甚良；遍身水肿亦效。\n⑦《分类草药性》：滋阴补神气，通女子血气，消肿，治小儿咳嗽。\n⑧《天宝本草》：治膀胱疝气，气火瘰疬。\n⑨《贵州民间方药集》：通经，治妇女月经不调，红崩白带，月经来时腰酸腹痛，又可健胃补脾。观赏价值\n\n花色鲜艳，栽培容易，且春季萌发早，绿叶成丛极为美观。园林中多丛植或于花境、路旁栽植。萱草类耐半荫，又可做疏林地被植物。\n其他价值\n\n萱草在现代化学染料出现之前，还是一种常用的染料。另外，萱草对氟十分敏感，当空气受到氟污染时，萱草叶子的尖端就变成红褐色，所以常被用来监测环境是否受到氟污染的指针植物。','含义\n\n中国母亲花\n早在康乃馨成为母爱的象征之前，我国也有一种母亲之花，它就是萱草花。[8] \n花语\n1、遗忘的爱，萱草又名忘忧草，代表“忘却一切不愉快的事”。\n2、放下他（她）放下忧愁。\n3、隐藏起来的心情。\n4、萱草的花语是爱的忘却。\n5、同时又是中国的母亲花。\n历史记载\n\n萱草在中国有几千年载培历史，萱草又名谖草，谖就是忘的意思。最早文字记载见之于《诗经· \n萱草(图6)\n萱草(图6)(2张)\n卫风·伯兮》：\"焉得谖草，言树之背\"。朱熹注曰：\"谖草，令人忘忧；背，北堂也。\"\n另一称号忘忧（忘忧草），来自《博物志》中：\"萱草，食之令人好欢乐，忘忧思，故曰忘忧草。《诗经疏称：\"北堂幽暗，可以种萱\"；北堂即代表母亲之意。古时候当游子要远行时，就会先在北堂种萱草，希望减轻母亲对孩子的思念，忘却烦忧。唐朝孟郊《游子诗》写道：\"萱草生堂阶，游子行天涯；慈母倚堂门，不见萱草花。王冕《偶书》\"今朝风日好，堂前萱草花。持杯为母寿，所喜无喧哗。\"历代文人也常以之为咏吟的题材，曹植为之作颂，苏东坡为之作诗，夏侯湛为之作赋，一一的点出萱草在生活中的地位。萱草又名‘宜男草’，《风土记》云：‘妊妇佩其草则生男’，故称此名。\n萱草在中国有悠久的栽培历史，早在二千多年前的《诗经魏风》中就有记载。后来的许多植物学著作中，如《救荒本草》、《花镜》、《本草纲目》等多有记述。《花镜》中还首记载了重瓣首草，并指出它的花有毒，不可食用。[3] \n古代文化\n\n相关诗词\n萱草（明·高启）。\n萱草（宋·苏东坡）。\n萱草（唐·李峤）。\n萱草（宋·苏辙）。\n萱草（宋·朱熹）\n对萱草（唐·韦应物）。\n咏常季庭前萱草（清·姚永概）。\n游子诗（唐·孟郊）。\n酬梦得比萱草见赠（唐·白居易）。\n魏氏园林人赋一物得秋亭萱草（陈子昂）。\n惜馀春慢/选冠子（陈德武）。\n满庭芳（黄庭坚）。\n赠李彦深（黄庭坚）。\n牡丹（李商隐）。\n庭前（陆龟蒙）。\n萱草（李咸用）。\n所思（李中）。\n医药典故\n明·高启《萱草》。\n萱草，俗称黄花菜，它不仅是名花佳卉，也是佳肴良蔬，自古以来就为历代诗人所吟咏。在历史文献中，不仅留下许多明诗佳作，而且还有动听的传说。\n传说故事\n相传，大泽乡起义前的陈胜，家境十分贫困，因为家中无米下锅，不得不出去讨饭度日，加之营养缺乏，他患了全身浮肿症，胀痛难忍。\n有一天，陈胜讨饭到一户姓黄\n萱草\n萱草\n的母女家，黄婆婆是个软心肠，她见陈胜的可怜模样，让他进屋，给他蒸了三大碗萱草花让他吃。对当时的陈胜来说，能解决饥寒交迫的萱草花是那样香甜可口，不亚于山珍海味。只见他狼吞虎吞，不一会三大碗萱草花全进肚子里去了。几天后，全身浮肿便消退了。陈胜十分感谢黄家母女，并表示今后会报答的。\n大泽乡起义后，陈胜称王之时，他没有忘记黄家母女，为感谢黄家母女的恩情，便将她们请进宫里。每天摆酒设宴，那无数佳肴珍膳都引不起陈胜的食欲。突然，陈胜想起了当年萱草花的美味，便请黄婆婆再蒸一碗给他吃。黄婆婆又采了一些萱草花，亲自蒸好送给陈胜。陈胜端起饭碗，只尝一口，竟难以下咽，连说：“怎么回事，味道不如当年了，这可太奇怪了。”黄婆婆说“实际没什么可奇怪的，这真是饥饿之时萱草香，吃惯酒肉萱草苦啊!”一席话，羞得陈胜跪倒在地连连下拜。黄婆婆连连说：“使不得，使不得”，忙把陈胜扶起来。\n从此，陈胜将黄家母女留在宫中，专门种植萱草，并时常吃它。同时，又给萱草另外取了二个名字，一名为“忘忧草”，一名为“黄花菜”。因为黄婆婆的女儿名叫金针，而且萱草叶的外形像针一样，所以人们又叫它“金针菜”。\n消息一传开，人们就纷纷用萱草根来治疗浮肿病症，后来被郎中发现，经过反复应用成为一味常用中药。'),('00004','月季','4-9月','月季花（学名：Rosa chinensis Jacq.），被称为花中皇后，又称“月月红”，是常绿、半常绿低矮灌木，四季开花﹐一般为红色﹐或粉色、偶有白色和黄色﹐可作为观赏植物，也可作为药用植物，亦称月季。有三个自然变种，现代月季花型多样，有单瓣和重瓣，还有高心卷边等优美花型；其色彩艳丽、丰富，不仅有红、粉黄、白等单色，还有混色、银边等品种；多数品种有芳香。月季的品种繁多，世界上已有近万种，中国也有千种以上。\n自然花期8月到次年4月，花成大型，由内向外，呈发散型，有浓郁香气，可广泛用于园艺栽培和切花。月季的适应性强，耐寒、耐寒，不论地栽、盆栽均可，适用于美化庭院、装点园林、布置花坛、配植花篱、花架，月季栽培容易，可作切花，用于做花束和各种花篮，月季花朵可提取香精，并可入药。也有较好的抗真菌及协同抗耐药真菌活性。红色切花更成为情人间必送的礼物之一，并成为爱情诗歌的主题。\n中国是月季的原产地之一。月季花荣秀美，姿色多样，四时常开，深受人们的喜爱，中国有52个城市将他选为市花，1985年5月月季被评为中国十大名花之五','月季花是直立灌木，高1-2米；小枝粗壮，圆柱形，近无毛，有短粗的钩状皮刺。小叶3-5，稀7，连叶柄长5-11厘米，小叶片宽卵形至卵状长圆形，长2.5-6厘米，宽1-3厘米，先端长渐尖或渐尖，基部近圆形或宽楔形，边缘有锐锯齿，两面近无毛，上面暗绿色，常带光泽，下面颜色较浅，顶生小叶片有柄，侧生小叶片近无柄，总叶柄较长，有散生皮刺和腺毛；托叶大部贴生于叶柄，仅顶端分离部分成耳状，边缘常有腺毛。[1] \n花几朵集生，稀单生，直径4-5厘米；花梗长2.5-6厘米，近无毛或有腺毛，萼片卵形，先端尾状渐尖，有时呈叶状，边缘常有羽状裂片，稀全缘，外面无毛，内面密被长柔毛；花瓣重瓣至半重瓣，红色、粉红色至白色，倒卵形，先端有凹缺，基部楔形；花柱离生，伸出萼筒口外，约与雄蕊等长。果卵球形或梨形，长1-2厘米，红色，萼片脱落。花期4-9月，果期6-11月。','月季对气候、土壤要求虽不严格，但以疏松、肥沃、富含有机质、微酸性、排水良好的的壤土较为适宜。性喜温暖、日照充足、空气流通的环境。大多数品种最适温度白天为15-26℃，晚上为10-15℃。冬季气温低于5℃即进入休眠。有的品种能耐-15℃的低温和耐35℃的高温；夏季温度持续30℃以上时，即进入半休眠，植株生长不良，虽也能孕蕾，但花小瓣少，色暗淡而无光泽，失去观赏价值。中国是月季的原产地之一。在中国主要分布于湖北、四川和甘肃等省的山区，尤以上海、南京、南阳、常州、天津、郑州和北京等市种植最多。','园林绿化\n\n月季花在园林绿化中，有着不可或缺的价值，月季在南北园林中，使用次数是最多的一种花卉。月季花是春季主要的观赏花卉，其花期长，观赏价值高，价格低廉，受到各地园林的喜爱。可用于园林布置花坛、花境、庭院花材，可制作月季盆景，作切花、花篮、花束等。\n月季因其攀援生长的特性，主要用于垂直绿化，在园林街景，美花环境中具有独特的作用。如能构成赏心悦目的能道和花柱，做成各种拱形，网格形，框架式架子供月季攀附，再经过适当的修剪整形，可装饰建筑物，成为联系建筑物与园林的巧妙“纽带”。\n环保作用\n\n可以做成延绵不断的花篱、花屏、花墙、用于机关、学校、居民小区、城区广场等地方，不仅能净化空气，美化环境，还能大降低周围地区的噪音污染，缓解火热夏季城市的温室效应。月季花还是吸收有害气体的能手，能吸收硫化氢、氟化氢、苯、苯酚等有害气体，同时对二氧化硫、二氧化氮等有较强的抵抗能力，因此月季花也是保护人类生活环境的良好花木。\n药用价值\n\n花可提取香料。根、叶、花均可入药，具有活血消肿、消炎解毒功效。而且是一味妇科良药。中医认为，月季味甘、性温，入肝经有活血调经、消肿解毒之功效。由于月季花的祛瘀、行气、止痛作用明显，故常被用于治疗月经不调、痛经等病症。\n月经过多、白带多，用月季花（或根）15g水煎服或炖猪肉食；月季花10g、大枣12g同煎，汤成后加适量蜂蜜服用，此方又香又甜，不像是药，对经期潮热很有效。此外，女性常用月季花瓣泡水当茶饮，或加入其他健美茶中冲饮，还可活血美容，使人青春长驻。','文化\n\n月季在中国传统文化中处于弱势地位，但新的考古发现，月季花是华夏先民北方系--相当于传说中的黄帝部族的图腾植物。为中国十大名花之一。月季被誉为“花中皇后”，而且有一种坚韧不屈的精神，花香悠远。原产中国，早在汉代就有栽培，唐宋以后更是栽种不绝，历来文人也留下了不少赞美月季的诗句。\n唐代著名诗人白居易曾有“晚开春去后，独秀院中央”的诗句，宋代诗人苏东坡诗云“花落花开无间断，春来春去不相关；牡丹最贵惟春晚，芍药虽繁只夏初，惟有此花开不厌，一年常占四时春” 。 北宋韩琦对它更是赞誉有加：“牡丹殊绝委春风，露菊萧疏怨晚丛。何以此花容艳足，四时长放浅深红。”[11] \n市花\n\n十八世纪，中国月季由印度传入欧洲，以后经过育种家与当地蔷薇反复杂交，终于在1867年培育成杂交茶香月季，很快就风行全世界，被誉为“花中皇后，”作为幸福、美好、和平、友谊的象征，深受人们喜爱，一些国家把它选为国花。[11] \n月季花是美国、意大利、卢森堡、伊拉克、叙利亚等国的国花。\n是中国北京市、天津市、石家庄、邯郸、廊坊、沧州、邢台、辛集，郑州、南阳、漯河、淮阳、焦作、商丘、驻马店、平顶山、新乡、三门峡、信阳、开封、南昌、鹰潭、吉安、新余、大连、锦州、辽阳、沙市、宜昌、恩施、十堰、随州，淮阴、宿迁、常州、奉州，安庆、蚌埠、芜湖、皁阳、淮南、淮北，威海、莱州、济宁、青岛、衡阳、邵阳，德阳、西昌，长治，西安、石嘴山等52个市的市花。花语\n\n红月季表示纯洁的爱，热恋或热情可嘉、贞节等，人们多把它作为爱情的信物，爱的代名词，是情人节首选花卉，红月季的蓓蕾还表示可爱。\n白月季寓意尊敬和崇高，在日本，白玫瑰（月季）像征父爱，是父亲节的主要用花。\n粉红月季表示初恋；黑色月季表示有个性和创意。\n蓝紫色月季表示珍贵、珍稀。\n橙黄色月季表示富有青春气息、美丽。\n黄色月季表示道歉（但在法国人看来是妒忌或不忠诚）。\n绿白色月季表示纯真、俭朴或赤子之心。\n双色月季表示矛盾或兴趣较多。\n三色月季表示博学多才、深情。'),('00005','玫瑰果','8-9月','玫瑰果，学名野蔷薇，也称作天然刺玫果，又名野刺玫果，山刺玫果，是野生玫瑰的果实，是蔷薇科、蔷薇属多年生落叶灌木，是我国高等植物之一。','玫瑰果的维生素C含量最高。经检测每百克鲜果可食部分VC含量6810毫克以上，最高达8300毫克，居于一切蔬菜、水果之首，是“大地植物果实之冠”；号称“VC之王”。按其含量计算，玫瑰果的VC含量是柑橘的220倍；苹果的1360倍；一克玫瑰果相当于一公斤苹果的VC含量；是黑加仑的26倍；草莓的190倍；是红豆的213倍；是猕猴桃的130倍。2-3个玫瑰果就够人体有昼夜对VC的需要，一罐500克的刺玫果酱的VC含量即可保证军队一个连队战士全天的需要。被欧洲各国视为“治疗坏血病特效药”；有“维生素记录保持者”之称。由于维生素C含量高，也尊定了玫瑰果在美容界的广泛应用。而且.玫瑰果很适合制作蛋糕、水果塔等甜点、或是作成果酱、果冻风味也很棒。','性强健、喜光、耐半阴、耐寒、对土壤要求不严，在粘重土中也可正常生长。耐瘠薄，忌低洼积水。 以肥沃、疏松的微酸性土壤最好。','玫瑰果还含有二十碳二稀酸，二十碳三稀酸等高级不饱和脂肪酸。由于玫瑰果含有多种营养成分，因此功能独特。据有关资料记载，天然玫瑰果是治维生素缺乏症的良药，各种制剂可用来治疗高血压、动脉粥样硬化、脑溢血、肝、肾、胃溃疡。玫瑰果浸膏能医治慢性肝炎和肠道疾病。种籽油用于治疗营养不全性溃疡，皮肤病，结肠炎和痔疮。枝，熬汤内服，用以医治赤痢，风湿病和神经根炎。种籽或根熬成汤汁是人体中任何结石溶解的良 \n玫瑰果\n玫瑰果(20张)\n剂。经中国科学院、卫生部临床检验中心、中国中医研究院、解放军二0七医院、黑龙江中医学院、天津医学院、同济医科大学、航天医学工程研究所、吉林中医中药研究院、黑龙江省老年医学研究院、沈阳医学院等二十多个科研单位、大专院校研究和临床实验证明；天然玫瑰果制品有显著的抗衰老、抗疲劳、抗辐射、耐缺氧、除血栓、降血压、防癌、治癌、强身壮阳、健脑增智、延年益寿的作用。对儿童因缺锌导致的营养不良、智力低下也有显著疗效。由此可见，天然玫瑰果是一种不可多得的食、药同源的宝贵资源。 　天然玫瑰果全身是宝，用途广泛。不仅果实营养价值高，而且花、叶、根、籽都有利用价值。经国内外有关专家研究确认；玫瑰果花，可以提取玫瑰果精油，畅销国内外，价格高于黄金；还可以提取色素、香精用于食品饮料；叶，可以配制茶叶，具有强身、造血、消炎等功效；根，可以制药，止咳祛痰、止痢、止血；籽，可以榨油，用于化妆品生产，也可以制药，治疗皮肤病、结肠炎和各种结石，籽和籽饼可以作为饲料，养虾、养鸡提高增长率和产蛋率。天然玫瑰果既是各种饮料，特别是高级保健和运动饮料的原料，又是食品不可多得的添加剂，也可以直接生产果酱、果冻、果脯等食品。同时还是医疗保健药品的原料。除此之外，还可以从玫瑰果花中提取VC，色素和香精。 　经国家食品质量卫生监督部门对玫瑰果急性、蓄积性、亚慢性的毒性试验确认，玫瑰果不致癌、不致畸、不致突变，为安全无毒食品原料，其理化和卫生指标符合中华人民共和国国颁标准。 　天然玫瑰果是一种多营养，多功能，多用途的珍贵资源。','暂无'),('00006','夹竹桃','6-9月','夹竹桃（Nerium indicum ），植物界被子植物门双子叶植物纲捩花目夹竹桃科夹竹桃属。有较强的毒性，可入药，孕妇忌服。有助于强心利尿、镇痛祛瘀。原产于印度、伊朗和阿富汗，在我国栽培历史悠久，遍及南北城乡各地。夹竹桃喜欢充足的光照，温暖和湿润的气候条件。其花色有红色、白色和黄色。','常绿直立大灌木，高达5米，枝条灰绿色，含水液；嫩枝条具稜，被微毛，老时毛脱落。叶3-4枚轮生，下枝为对生，窄披针形，顶端极尖，基部楔形，叶缘反卷，长11-15厘米，宽2-2.5厘米，叶面深绿，无毛，叶背浅绿色，有多数洼点，幼时被疏微毛，老时毛渐脱落；中脉在叶面陷入，在叶背凸起，侧脉两面扁平，纤细，密生而平行，每边达120条，直达叶缘；叶柄扁平，基部稍宽，长5-8毫米，幼时被微毛，老时毛脱落；叶柄内具腺体。\n聚伞花序顶生，着花数朵；总花梗长约3厘米，被微毛；花梗长7-10毫米；苞片披针形，长7毫米，宽1.5毫米；花芳香；花萼5深裂，红色，披针形，长3-4毫米，宽1.5-2毫米，外面无毛，内面基部具腺体；花冠深红色或粉红色，栽培演变有白色或黄色，花冠为单瓣呈5裂时，其花冠为漏斗状，长和直径约3厘米，其花冠筒圆筒形，上部扩大呈钟 \n夹竹桃图片\n夹竹桃图片(5张)\n形，长1.6-2厘米，花冠筒内面被长柔毛，花冠喉部具5片宽鳞片状副花冠，每片其顶端撕裂，并伸出花冠喉部之外，花冠裂片倒卵形，顶端圆形，长1.5厘米，宽1厘米；花冠为重瓣呈15-18枚时，裂片组成三轮，内轮为漏斗状，外面二轮为辐状，分裂至基部或每2-3片基部连合，裂片长2-3.5厘米，宽约1-2厘米，每花冠裂片基部具长圆形而顶端撕裂的鳞片；雄蕊着生在花冠筒中部以上，花丝短，被长柔毛，花药箭头状，内藏，与柱头连生，基部具耳，顶端渐尖，药隔延长呈丝状，被柔毛；无花盘；心皮2，离生，被柔毛，花柱丝状，长7-8毫米，柱头近球圆形，顶端凸尖；每心皮有胚珠多颗。\n蓇葖2，离生，平行或并连，长圆形，两端较窄，长10-23厘米，直径6-10毫米，绿色，无毛，具细纵条纹；种子长圆形，基部较窄，顶端钝、褐色，种皮被锈色短柔毛，顶端具黄褐色绢质种毛；种毛长约1厘米。花期6~10月。果期一般在冬春季，栽培很少结果。','原产于伊朗，印度等国家和地区。 现广植于亚热带及热带地区。中国引种始于十五世纪，各省区均有栽培。喜光，喜温暖湿润气候，不耐寒，忌水渍，耐一定程度空气干燥。适生于排水良好、肥沃的中性土壤，微酸性、微碱土也能适应。','夹竹桃为夹竹科植物夹竹桃NeriumindicumMill. cvPaihua的叶。本品属于强心类中药。味苦、性寒、有毒，归心经。主要功能为强心利尿、祛痰定喘、镇痛、祛瘀。近代临床运用该药治疗心力衰竭、喘息咳嗽、癫痫、跌打损伤、经闭、斑秃。本品有毒，内服煎汤，剂量为0.3～0.9 g。药理作用\n1）强心作用：夹竹桃的叶、茎、皮、木质、花，均有较显著的强心作用，以叶的作用最强。其叶的醇提取物所含欧夹竹桃苷C对实验动物心脏及心电图表现有强心苷样作用，可增强心肌纤维收缩力，延长不应期，抑制心脏传导和刺激迷走神经使心脏传导功能更为降低。其有效剂量使实验动物心肌收缩加强，收缩振幅加\n法国庭院夹竹桃\n法国庭院夹竹桃\n大的同时，血压随之升高，接近中毒时，血压开始下降，心律紊乱。它是一种迟效强心苷，作用强于洋地黄，弱于毒毛旋花子苷。镇静作用：夹竹桃煎剂及醇提取液对实验白鼠有镇静作用，表现自发活动减少、嗜睡，并能延长巴比妥的睡眠时间，但无抗惊厥作用，其镇静作用出现在心律变化之后。体内反应过程：夹竹桃之摄取物在胃、肠吸收都比较快，实验猫口服后，3小时吸收50%左右。用鸽测得的口服吸收率欧夹竹桃苷C为53%，比洋地黄、地高辛高一倍左右，因此作用出现迅速，但蓄积作用比较明显，鸽蓄积率为37%，介于羊角蚴与洋地黄毒苷之间。3天消除56.3%，15天才排泄完。动物实验还表明，口服欧夹竹桃苷C需2倍于静脉注射剂量才能出现同样的作用。[3] \n临床应用\n主要用于治疗心力衰竭，用法用量各不相同。一般都是采用不老不嫩的鲜叶擦净，低温烘干或晒干，研末过筛，装入胶囊或打成片剂，每片含生药0.05g，给药分快速给药和缓给法，前者0.2～0.6g，分2～3次服用，第2、3日根据症状和心律变化酌情给药，产生疗效后改用维持量。每天0.05～0.1 g，1周或症状消失后停药。各家报道夹竹桃化的剂量从150～800 mg不等（多数为200 mg左右）。有的则认为夹竹桃化剂量相当于老叶0.5～1片，可于1～4日内完成（一般2～3日），然后维持每日50～100 mg缓给法，每日1次为维持量，由于叶子有老嫩，采集的气候、时间、炮制方法都会影响强心苷的含量，故临床用量也不同，难于统一规格。用夹竹桃治疗各种心脏病导致的心力衰竭，多数人认为疗效满意，其作用比洋地黄快而蓄积作用较小，一般用药后12～72小时发生疗效。患者的症状和体征均有好转和改善。表现心律减慢，尿量增多，水肿消退或改善，肝脏缩小，咳喘、胸闷、发绀等消失或减轻，肺部啰音减小或消失等。有的房颤患者可恢复窦性心律，多数心衰在1周左右可以控制，一般有效率在90%以上。对于合并有心绞痛的心力衰竭，夹竹桃治疗效果更好。据文献记载夹竹桃有缓解冠状动脉痉挛的作用。应注意的是它对活动性风湿性心脏病无效，可能对心肌炎不利，应慎用。[3] \n使用“黄夹苷”（从黄花夹竹桃果核中果仁提取而得的一种静脉注射剂）和夹竹桃胶囊配合用于治疗21例心力衰竭患者，取得显著疗效，19例患者口服夹竹桃的量最小0.4 g，最大1.6 g，一般平均量为0.4～0.9g，即能有效地增加患者的尿量，消除全身水肿，降低静脉压，用药持续至症状消失后改用维持量。在21例患者中仅有2例口服夹竹桃发生一般性的胃肠道及心律失常不良反应，经停药，补钾处理后很快会恢复正常。[3] \n用夹竹桃后，最常见的反应为呕吐，有认为与洋地黄的过量呕吐不同，可能仅仅是一种不良反应，有的患者出现呕吐后继续用药，其消化道症状反而日渐减轻。[3] \n总之本品含多种强心苷，其强心作用较强。临床上用夹竹桃叶煎剂口服过量可致死亡，服用有效剂量而发生毒性反应者占30%左右，而且与患者的耐受程度及敏感性等有很大关系，故临床用药应密切观察病情，包括心电图观察，以确保安全。','诗词歌赋\n\n《浮生拾慧》---夹竹桃[6]  （黄廷法 文）\n夹竹桃，假竹桃也，其叶似竹，其花似桃，实又非竹非桃，故名。\n《夹竹桃》（宋代汤清伯七绝）\n芳姿劲节本来同，绿荫红妆一样浓。\n我若化龙君作浪，信知何处不相逢。\n作者：宋 汤清伯\n花语\n\n桃色夹竹桃：咒骂，注意危险；黄色夹竹桃的花语：深刻的友情。\n黄色夹竹桃是夹竹桃里的一个特殊品种，黄色夹竹桃的叶片如柳似竹，黄色灼灼，胜似桃花，花冠粉黄色至深黄色或白色，有特殊香气，花期为6～10月，是有名的观赏花卉。\n传说\n\n相传，在远古的时候，一个叫桃的美丽女孩，她爱上了一个性格刚强的叫竹的长工小伙。由于父亲的门户之见，将竹活活打死。竹死后，桃也跟着为自己心爱的人殉了情。当他们的灵魂到了天国，上 \n夹竹桃\n夹竹桃(9张)\n苍为他们的真情所动，答应满足他们一个要求，桃说她一生就喜欢桃花的纯洁，而竹却希望保留他像竹子一样的坚韧。于是，这世界上就产生了有着竹子一样的叶子，开着像桃花一样的植物——夹竹桃。\n那个时候的夹竹桃花儿是纯白的，很纯洁的白色。有一个公主爱上了自己的家臣，由于家族的反对，脆弱的公主选择了和自己的心上人一起殉情的命运。她一直天真的相信自己的情人绝对会和自己永远一起，但是她只是自己单纯的这么认为，她的家臣并不是真心的喜欢她，仅仅是为了自己的利益而扮演了这个角色。悲伤的公主在夹竹桃下自杀。只有她一个人的血浸润了花朵，夹竹桃从此就开着粉红和雪白的花。误托终身，公主在地下不停地怨怼，怨恨生成毒汁随着夹竹桃的根茎衍生，在人世间艳丽而警惕地开着。很多年以后，那个家奴途经公主的坟前，被那叶怀竹之风骨，花有桃之美貌的夹竹桃所吸引，被红白色的花儿所陶醉，俯身而闻，结果中毒身亡。'),('00007','醡浆草','12-次年7月','\',\'酢浆草，别名：酸味草、鸠酸、酸醋酱，拉丁文名：Oxalis corniculata L. 酢浆草科、 酢浆草属草本，全株被柔毛。根茎稍肥厚。茎细弱，多分枝，直立或匍匐，匍匐茎节上生根。叶基生或茎上互生；托叶小，长圆形或卵形，边缘被密长柔毛，基部与叶柄合生，或同一植株下部托叶明显而上部托叶不明显；全国广布。生于山坡草池、河谷沿岸、路边、田边、荒地或林下阴湿处等。亚洲温带和亚热带、欧洲、地中海和北美皆有分布。全草入药，能解热利尿，消肿散淤；茎叶含草酸，可用以磨镜或擦铜器，使其具光泽。牛羊食其过多可中毒致死。','草本，高10-35厘米，全株被柔毛。根茎稍肥厚。茎细弱，多分枝，直立或匍匐，匍匐茎节上生根。叶基生或茎上互生；托叶小，长圆形或卵形，边缘被密长柔毛，基部与叶柄合生，或同一植株下部托叶明显而上部托叶不明显；叶柄长1-13厘米，基部具关节；小叶3，无柄，倒心形，长4-16毫米，宽4-22毫米，先端凹入，基部宽楔形，两面被柔毛或表面无毛，沿脉被毛较密，边缘具贴伏缘毛。花单生或数朵集为伞形花序状，腋生，总花梗淡红色，与叶近等长；花梗长4-15毫米，果后延伸；小苞片2，披针形，长2.5-4毫米，膜质；萼片5，披针形或长圆状披针形，长3-5毫米，背面和边缘被柔毛，宿存；花瓣5，黄色，长圆状倒卵形，长6-8毫米，宽4-5毫米；雄蕊10，花丝白色半透明，有时被疏短柔毛，基部合生，长、短互间，长者花药较大且早熟；子房长圆形，5室，被短伏毛，花柱5，柱头头状。蒴果长圆柱形，长1-2.5厘米，5棱。种子长卵形，长1-1.5毫米，褐色或红棕色，具横向肋状网纹。花、果期2-9月。','喜向阳、温暖、湿润的环境，夏季炎热地区宜遮半荫，抗旱能力较强，不\n酢浆草\n酢浆草[2]\n耐寒，华北地区冬季需进温室栽培，长江以南，可露地越立，喜阴湿环境，对土壤适应性较强，一般园土均可生长，但以腐殖质丰富的砂质壤土生长旺盛，夏季有短期的休眠。在阳光极其灿烂时开放。[3] 生于山坡草池、河谷沿岸、路边、田边、荒地或林下阴湿处等。','药用价值\n\n全草入药，能解热利尿，消肿散淤；茎叶含草\n酢浆草\n酢浆草[2]\n酸。[1] \n【佤药】日希打鼓，歹西打古：全草治骨折，跌打损伤，毒蛇咬伤，黄疸型肝炎，风湿性关节炎《中佤药》、《滇药录》。西对鸟：用于失眠多梦，跌打损伤，火烫伤，呼吸道炎症。\n【彝药】酢浆草，阿渣吉吉，阿渣俄吉，维塞肉白，酸浆草：全草或根治疗风寒感冒，月经不调，痔疮出血，牙痛，腰痛，骨折，热结大肠，冷寒身痛，腿疮溃烂《彝植药续》。全草用于瘀血肿痛，痔瘘肛裂，肛肠脱垂，痈疡疔疽《哀牢》。\n【苗药】马汉酸，董枕密：全草治恶疮痔瘘，小便诸淋，赤白带下，痔痛脱肛，汤火蛇蝎伤，妇人血结二便不通，癣疮作痒，牙齿肿痛。治发热，咳嗽，心胃气痛，疮疡肿胀作痛，毒疮《湘蓝考》。屙薯该：全草治尿闭，难产，胎衣不下，癣，带状疱疹，脓疱疮《桂药编》。\n【傣药】宋香嘎：用于清热利尿，凉血散瘀，消肿解毒《傣医药》。宋香嘎：全草治疗心慌头晕，汗多虚脱，风湿关节炎《版纳傣药》。耸香嘎：全株用于心慌头晕，汗多虚脱，风湿关节炎《滇省志》。\n【白药】全草治疗感冒发热，肠炎，肝炎，尿路感染，结石，神经衰弱；外用治跌打损伤《大理资志》。\n景颇药】byviqzvin：用于肠炎，肝炎，尿路感染，结石，外用跌打损伤《德宏药录》。\n【阿昌药】酢浆草：功用同景颇族《德宏药录》。\n【德昂药】刀布让瑞：功用同景颇族《德宏药录》。\n酢浆草\n酢浆草[2]\n【水药】骂烘低：全草治骨折《水医药》。\n【侗药】骂登胜：全草治无名肿毒《桂药编》。档兔松：全草治小儿哮喘。\n【毛难药】蜗肫槽：全草治沙虫脚《桂药编》。Mal demh semt，三巴辰（Samp bav semt）：全草主治宾楔烂狗义子，命刀（扭伤）《侗医学》。\n【瑶药】咖毕：全草治痢疾，难产，胎衣不下，脓疱疮，刀枪伤《桂药编》。\n【壮药】老鸦酸：全草治咽喉痛，跌打肿痛，产后流血，各种出血，大小便不利，脓疱疮，湿疹，毒蛇咬伤，骨折《桂药编》。\n【傈僳药】阿拉檫簸：全草用于感冒发热，肠炎，肝炎，尿路感染，结石，神经衰弱；鲜叶外用捣敷患处，治跌打损伤，痈肿疮疖《怒江药》。\n【畲药】全草治白喉，咽喉炎，扁桃体炎，口腔炎，尿道感染，胆道蛔虫，小儿夜啼，产褥热，产后腹痛，乳腺炎初起，痔疮，脱肛，湿疹，癣，带状疱疹，无名肿毒，烫伤，跌打损伤《畲医药》。\n【哈尼药】阿咪我铅：全草治感冒发热，肠炎，肝炎，尿路感染，跌打损伤《哈尼药》。\n【土家药】酸味席（suan wei xir）：全草治疗感冒发热，尿路感染、跌打损扭伤《土家药》。[5] \n功能主治\n①《唐本草》：主恶疮瘸瘘捣敷之，杀诸小虫。\n酢浆草(图4)\n酢浆草(图4)[2]\n食之解热渴。\n②《本草图经》：治妇人血结不通，净洗细研，暖酒调服之。\n③《滇南本草》：治久泻肠滑，久痢赤白，用砂糖同煎服。\n④《纲目》：主小便诸淋，赤白带下，同地钱、地龙治砂石淋；煎汤洗痔痛脱肛；捣敷汤火蛇蝎伤。\n⑤《生草药性备要》：杀螆止痛，散热消肿，理跌打，散瘀血，煲酒服；又干水止痒。\n⑥《医林纂要》：补肺泻肝，除热气，去瘀血，敛阴。\n⑦《分类草药性》：截疟塞鼻；酒炒敷鱼口。\n⑧《岭南采药录》：治麻疹，蛇毒，疥疮。\n⑨《陆川本草》：消肿止痛，去腐肉。\n治疮痈溃烂。\n⑩《贵阳民间药草》：清热，利尿，接骨。\n治尿结，黄疸。\n⑾《中国药植图鉴》：用红糖混煎服，治流火(丝虫病初期)。\n⑿《陕西植药调查》：健胃止咳。\n⒀《湖南药物志》：治发热咳嗽，心胃气痛，疮疡肿胀作痛，毒疮。\n【用法与用量】内服：煎汤，2-4钱(鲜者1-2两)；捣汁或研末。\n外用：煎水洗、捣敷、捣汁涂、调敷或煎水漱口。','白色酢浆草是爱尔兰的国花，而且童军也以它做徽章。一般的酢浆草只有三片小叶，偶尔会出现突变的四片小叶个体，称为“幸运草”。传说如果有四片小叶的幸运草就能许愿使愿望成真，幸运草之所以特别，其实只是一种突变现象，所以幸运草纯粹只是突变而来的。\n美国农业部证实，产生这种四叶现象的酢浆草其学名是Trifolium repens L.，又称为白色酢浆草，是一种三叶的多年生草本植物，生长缓慢，但是大约每10,000株当中，会有一株长出四片叶子。\n据奥勒冈州立大学植物及植病系教授亚伦李斯顿（Aaron Liston）的说法，太阳的紫外线和肥料中的某些化学物质是造成此类突变的重要原因。而脱氧核醣核酸（DNA）发生错误也会造成突变，属于非外力因素。\n许多国家确实都流传著四叶幸运酢浆草的传说，早期威尔斯的塞尔特人相信白色酢浆草可以对抗恶魔。1620年，约翰梅尔顿爵士（Sir John Melton）写道：如果有人在田间巧遇任何有四片叶子的草，就将会有好运降临。\n爱尔兰国花“白花酢浆草”，是用来献给爱尔兰守护圣人——圣帕特里克的花朵。爱尔兰为了争取独立曾经和英国长期浴血抗战。因此，它的花语是——爱国。\n酢浆草的株高依品种的不太，可由10-40厘米不等。紫花品种，没有明显的茎，叶片可以说自根际直接长出，具有又长又细的叶柄，叶片则由三枚倒心形的小叶组合而成，偶尔会出现突变的四枚小叶组成的个体，即俗称的“幸运草”。而大轮的黄花品种，其植株性状和紫花相似，但小轮的黄花品种则不然，虽然与紫花酢浆草同科又同属，却具有又长又细的匍匐茎，叶在茎上对生，叶片亦由三枚小叶组成，但小叶的大小则较紫花酢浆草要小一些。');
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-19 16:45:04