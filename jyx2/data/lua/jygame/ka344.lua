ScenceFromTo(29, 24, 29, 17);
jyx2_CameraFollow("Level/NPC/baiwanjian");
Talk(41, "侠客岛赏善罚恶使者，前来拜见雪山派掌门！", "talkname41", 0);
Talk(43, "尊驾二位便是侠客岛的赏善罚恶使者吗？", "talkname43", 0);
Talk(42, "正是．不知那位是雪山派掌门人？我们奉侠客岛岛主之命，手持铜牌前来，邀请贵派掌门赴敝岛相叙，喝碗腊八粥．", "talkname42", 0);
ScenceFromTo(29, 17, 29, 24);
jyx2_CameraFollowPlayer();
Talk(0, "＜搞不好侠客岛上有线索？  不是有本书与”侠”字有  关联吗？＞", "talkname0", 1);
WalkFromTo(29, 24, 29, 19);
Talk(0, "铜牌给我好不好？", "talkname0", 1);
Talk(41, "恐怕不行，侠客岛所邀请的是各门派的掌门及对武学有特殊见解的武林高手．", "talkname41", 0);
Talk(0, "那如果我打败他，是不是表示我比他有资格去．", "talkname0", 1);
Talk(43, "那里来的小娃儿，敢在我凌霄城撒野．", "talkname43", 0);
if TryBattle(59) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(0, "前辈 ，承让了！", "talkname0", 1);
    Talk(43, "哼！白某无话可说，也无脸去喝这腊八粥．", "talkname43", 0);
    Talk(41, "好！这位兄弟，十二月初八，请到侠客岛喝碗腊八粥．", "talkname41", 0);
    jyx2_ReplaceSceneObject("", "NPC/shizhe1", "");--使者离开
    jyx2_ReplaceSceneObject("", "NPC/shizhe2", "");--使者离开
    ModifyEvent(-2, 12, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 13, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 10, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 11, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    ModifyEvent(-2, 5, -2, -2, 340, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 6, -2, -2, 340, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 7, -2, -2, 340, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 8, -2, -2, 340, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 9, -2, -2, 341, 342, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    GetItem(132, 1);
    AddEthics(1);
    AddRepute(2);
    ChangeMMapMusic(3);
do return end;
