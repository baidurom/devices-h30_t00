.class public Lcom/huawei/hicloud/photosharesdk/api/FriendsLogic;
.super Ljava/lang/Object;
.source "FriendsLogic.java"


# static fields
.field private static final FAILED_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FriendsLogic"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method public static addReceiver(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)I
    .locals 5
    .parameter "context"
    .parameter "fInfo"

    .prologue
    .line 177
    const/4 v1, 0x1

    .line 178
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 179
    const-string v3, "FriendsLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "addReceiver,input is :"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    .line 182
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->addReceiver(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)I

    move-result v1

    .line 186
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    :cond_1
    return v1

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static delReceiver(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 154
    const/4 v1, 0x1

    .line 155
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "FriendsLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delReceiver,input is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    .line 159
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->delReceiver(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 163
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    :cond_1
    return v1
.end method

.method public static getReceiver(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
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
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    invoke-virtual {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->getReceiver(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "FriendsLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getReceiver is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-object v1
.end method

.method public static isHWAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, ret:Z
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "FriendsLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isHWAccount , input is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 77
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->isHWAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 81
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    :cond_1
    return v1
.end method

.method public static isHWAccountList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
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
    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "isHWAccountList input is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_3

    .line 105
    :cond_0
    const-string v4, "FriendsLogic"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_1
    if-eqz p1, :cond_2

    .line 108
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    invoke-direct {v1, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    invoke-virtual {v1, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->isHWAccountList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 112
    .end local v1           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    :cond_2
    return-object v2

    .line 101
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_3
    aget-object v0, p1, v4

    .line 102
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static updateReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "nickName"

    .prologue
    .line 129
    const/4 v1, 0x1

    .line 130
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "FriendsLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateReceiver,input is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    .line 136
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;->updateReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 140
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
    :cond_1
    return v1
.end method
