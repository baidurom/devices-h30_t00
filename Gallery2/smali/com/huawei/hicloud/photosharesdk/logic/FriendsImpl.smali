.class public Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
.super Ljava/lang/Object;
.source "FriendsImpl.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/logic/FriendsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$SyncMessageCallableInnerForFindbug;,
        Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field friendsHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->getInstance()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$1;-><init>(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->friendsHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->afterQueryFriendSuccess(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;Ljava/util/LinkedHashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->afterCheckAccountSuccess(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method private afterCheckAccountSuccess(Ljava/util/LinkedHashMap;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 294
    .local v2, flag:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v6, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 296
    .local v3, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 308
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 309
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 310
    .local v4, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    invoke-virtual {v4, v6}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->addReceiver(Ljava/util/List;)Z

    move-result v2

    .line 311
    if-eqz v2, :cond_1

    .line 313
    const-string v8, ""

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v4           #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :cond_1
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, p1, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendIsHwAccount(Landroid/content/Context;Ljava/util/HashMap;I)V

    .line 321
    return-void

    .line 297
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, account:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 301
    .local v7, uid:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 302
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;-><init>()V

    .line 303
    .local v5, receiverInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;
    invoke-virtual {v5, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v5, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->setReceiverName(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private afterQueryFriendSuccess(Ljava/util/List;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "test for not empty"

    .line 261
    .local v7, uid:Ljava/lang/String;
    const/4 v1, 0x0

    .line 262
    .local v1, isNeedNotifyUI:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v6, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 264
    .local v4, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openReceiverInfoOperator(Landroid/content/Context;)V

    .line 265
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 278
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 279
    invoke-virtual {v4, v6}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->addReceiver(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 280
    const/4 v1, 0x1

    .line 283
    :cond_1
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeReceiverInfoOperator()V

    .line 288
    return-void

    .line 265
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    .line 266
    .local v0, friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v9, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 269
    const-string v10, "ReceiverAccount"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    .line 270
    const-string v14, "ReceiverName"

    aput-object v14, v12, v13

    .line 268
    invoke-virtual {v4, v9, v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 270
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 268
    if-nez v9, :cond_3

    .line 270
    const/4 v3, 0x1

    .line 272
    .local v3, needAdd:Z
    :goto_1
    if-eqz v3, :cond_0

    .line 273
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;-><init>()V

    .line 274
    .local v5, receiverInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v3           #needAdd:Z
    .end local v5           #receiverInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addReceiver(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)I
    .locals 1
    .parameter "context"
    .parameter "fInfo"

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public delReceiver(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public getReceiver(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, friendsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v3, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 137
    .local v3, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getReceiverInfo()Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 151
    return-object v1

    .line 138
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    .line 139
    .local v4, receiverInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;-><init>()V

    .line 140
    .local v0, friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->getReceiverAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setAccount(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setDispName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isHWAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isHWAccountList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .parameter "context"
    .parameter "accountList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 192
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->friendsHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p1}, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 193
    .local v2, request:Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;
    const/16 v3, 0x10a

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;->setFusionCode(I)V

    .line 194
    invoke-virtual {v2, v1}, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;->setShareResult(Ljava/util/ArrayList;)V

    .line 195
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 199
    const/4 v3, 0x0

    return-object v3

    .line 189
    .end local v2           #request:Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;
    :cond_0
    aget-object v0, p2, v3

    .line 190
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public updateReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "nickName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 218
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 219
    .local v0, params:[Ljava/lang/String;
    aput-object p2, v0, v5

    .line 220
    aput-object p3, v0, v6

    .line 221
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    .line 222
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;-><init>(Ljava/lang/Object;JI)V

    .line 221
    invoke-virtual {v1, v2, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Z)V

    .line 224
    return v5
.end method
