ScenceFromTo(41, 29, 33, 29);
jyx2_CameraFollow("Level/NPC/zuolengchan");
Talk(22, "我五岳剑派同气连枝，百余年来携手结盟，早便如同一家．兄弟忝为五派盟主，亦已多历年所．只是近来武林中出了不少大事，兄弟与五岳剑派的前辈师兄们商量，均觉若非连成一派，统一号令，来日大难，只怕不易抵挡．", "talkname22", 0);
Talk(20, "不知左盟主和那一派的前辈师兄们商量过了？怎地我莫某人不知其事？", "talkname20", 0);
Talk(22, "兄弟适才说到，武林中出了不少大事，五派非合而为一不可．其中一件大事，便是咱们五派中人，自相残杀，不顾同盟义气．莫大先生，我嵩山派弟子费师弟，在衡山城外丧命．有人亲眼目睹，说是你莫大先生下的毒手，不知此事可真？", "talkname22", 0);
Talk(20, "并无其事！谅莫某这一点微末道行，怎杀得了那大嵩阳手？", "talkname20", 0);
Talk(22, "莫兄，这件事你也不用太过担心，等我五派合并之后，莫兄和我也是师兄弟了．死者已矣，活着的人又何必再逞凶杀，多造杀孽？莫兄，你说是不是呢？", "talkname22", 0);
Talk(20, "哼！", "talkname20", 0);
Talk(22, "南岳衡山派于并派之议，是无意见了．东岳泰山派天门道兄，贵派意思如何？", "talkname22", 0);
Talk(23, "泰山派自祖师爷东灵道长创派以来，已三百余年．贫道无德无能，不能发扬光大泰山一派，可是这三百多年的基业，说什么也不能自贫道手中断绝．并派之议，万万不能从命．", "talkname23", 0);
Talk(22, "道兄此言差矣．五派合并后我五岳派声势壮大，其下各个弟子，那一个不沾到光？道兄何必为这区区泰山派掌门一职的私心，而阻扰了全派的大业．", "talkname22", 0);
Talk(23, "我这掌门人，做不做有什么干系？只是泰山一派，恁说也不能在我手中给人并吞．", "talkname23", 0);
Talk(22, "道兄说了这么多，心中却就是为了放不下掌门人的名位．", "talkname22", 0);
Talk(23, "你真道我是如此私心？好，从此刻起，我这掌门人不做了．．．", "talkname23", 0);
Talk(22, "道兄是赞成此事了．．．", "talkname22", 0);
Talk(23, "你．．．．．．", "talkname23", 0);
Talk(0, "＜这老道性子太急了，一被激就着了人家的道＞", "talkname0", 1);
Talk(21, "左盟主已然身为五岳剑派盟主，位望何等尊崇，何必定要并五派，由一人任掌门．", "talkname21", 0);
Talk(22, "师太此言差矣．左某只是提议五派合并．这掌门之位，当然还是要由我五派之人推举出来．", "talkname22", 0);
ScenceFromTo(33, 29, 41, 29);
jyx2_CameraFollowPlayer();
WalkFromTo(41, 29, 35, 29);
Talk(0, "我看别讨论了，学武之人，就在武功下见真章．来来来，有谁要跟我打？", "talkname0", 1);
Talk(22, "不知阁下是谁？竟擅闯我嵩山派，你不知道我五岳派在此聚会吗？", "talkname22", 0);
Talk(19, "这位少侠前些时日来到我华山，我已让他入我华山派了．", "talkname19", 0);
Talk(22, "原来是华山派的弟子，照如此说，岳先生也是赞成这”比剑夺帅”的方法了？", "talkname22", 0);
Talk(19, "比剑夺帅，原也是一法，但只可点到为止，以免伤了和气．", "talkname19", 0);
Talk(23, "原来华山派是赞成并派的，我天门就先来领教你华山派的高招．", "talkname23", 0);
Talk(0, "这让我来就可以了．", "talkname0", 1);
if TryBattle(30) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(0, "承让了，道长．", "talkname0", 1);
    Talk(21, "让我定闲来领教领教华山派的高招．", "talkname21", 0);
    if TryBattle(31) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(0, "承让了，师太．接下来不知是那位．", "talkname0", 1);
        Talk(20, "你连战两场，先下去休息吧．", "talkname20", 0);
        Talk(0, "没关系，少年人体力充沛，莫掌门请出手吧．", "talkname0", 1);
        if TryBattle(32) == true then goto label2 end;
            Dead();
            do return end;
::label2::
            LightScence();
            Talk(22, "真所谓”长江后浪推前浪”华山派岳先生为了今天，想必已筹划很久了吧．若左某也败了，我嵩山派自当奉岳先生为掌门．", "talkname22", 0);
            if TryBattle(33) == true then goto label3 end;
                Dead();
                do return end;
::label3::
                LightScence();
                Talk(0, "终于都解决了，好累．左冷禅，看来你的阴谋是无法达成了．", "talkname0", 1);
                Talk(22, "我不该低估你的．岳不群．想不到你的心计比我还深，左某是输你一筹．", "talkname22", 0);
                Talk(0, "胡说八道，人家岳先生才不想做什么掌门呢．今天我来，其最主要的就是要阻止你并派的阴谋．", "talkname0", 1);
                Talk(22, "岳兄当真不做这五岳派的掌门？", "talkname22", 0);
                Talk(19, "没错，我是跟这位少侠提到过，急于合并各派，实是难如登天，且会引起武林纠纷", "talkname19", 0);
                Talk(0, "你看，我说的没错吧．", "talkname0", 1);
                Talk(19, "但是各家门派如能择地域相近，武功相似，又或相互交好，先行进行合并．则十年八年之内，门户宗派便可减少一大半．慢慢来的话问题较小．咱们五岳剑派今日合成五岳派，就可为各家各派树一典范，他日必能成为武林中千古艳称的盛举．", "talkname19", 0);
                Talk(0, "＜事情怎会变成这样？好像跟我想的不太一样！＞", "talkname0", 1);
                Talk(19, "嗯，五岳派今日新创，百废待举，在下只能总领其事，各派的事务，还是由各派原任掌门主持．咱们五岳派今日合并，若不能和衷同济，那么五派合并云云，也只是虚名而已．在下无德无能，暂且执掌本门门户，种种兴革，还须和众位兄弟从长计议，在下不敢自专．现下天色已晚，各位都辛苦了，今天就到此为止，他日再到华山来共商大事．", "talkname19", 0);
                DarkScence();
                ModifyEvent(-2, 24, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 25, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 26, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 27, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 35, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 36, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 37, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 38, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 39, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 40, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 41, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 42, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 43, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 44, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 45, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 46, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 47, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 48, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 49, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 50, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                jyx2_ReplaceSceneObject("", "NPC/xuanci", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/zuolengchan", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/tangwenliang", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/hengshanpai", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/hetaichong", "");--战斗结束，移除人物
                  jyx2_ReplaceSceneObject("", "NPC/modaxiansheng", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/yuebuqun", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/TianMenDaoRen", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/miejue", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/wudangpai", "");--战斗结束，移除人物
                  jyx2_ReplaceSceneObject("", "NPC/emeipai1", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/wudangpai1", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/hengshanpai1", "");--战斗结束，移除人物
                jyx2_ReplaceSceneObject("", "NPC/shaolindizi", "");--战斗结束，移除人物
                 jyx2_ReplaceSceneObject("", "NPC/taishanpai1", "");--战斗结束，移除人物
                   jyx2_ReplaceSceneObject("", "NPC/kunlunpai1", "");--战斗结束，移除人物
                --jyx2_ReplaceSceneObject("", "NPC/kongtongpai1", "");--战斗结束，移除人物
                 jyx2_ReplaceSceneObject("", "NPC/huashanpai", "");--战斗结束，移除人物
                 jyx2_ReplaceSceneObject("", "NPC/kunlunpai", "");--战斗结束，移除人物
                ModifyEvent(-2, 2, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 3, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 14, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 15, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 16, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 17, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 18, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 19, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 20, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 21, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 22, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 23, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 29, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 30, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 31, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 32, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 33, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 34, -2, -2, 216, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 28, -2, -2, 207, -1, -1, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 58, 0, 0, -1, -1, 218, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 59, 0, 0, -1, -1, 218, -2, -2, -2, -2, -2, -2);
                ModifyEvent(-2, 56, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 57, -2, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2);
                ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -2, -2, -2, -2, -2, -2);
                LightScence();
                AddRepute(15);
do return end;
