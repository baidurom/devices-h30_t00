.class public Lcom/huawei/hicloud/photosharesdk/api/FolderLogic;
.super Ljava/lang/Object;
.source "FolderLogic.java"


# static fields
.field public static final FAILED_3G_CODE:I = 0x2

.field private static final FAILED_CODE:I = 0x1

.field public static final FROM_BROAD:I = 0x1

.field public static final FROM_UI:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FolderLogic"

.field public static final TYPE_ALL:I = 0x3

.field public static final TYPE_MYPHOTO:I = 0x0

.field public static final TYPE_MYRECEIVE:I = 0x2

.field public static final TYPE_MYSHARE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    return-void
.end method

.method public static cancelReceiverFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
    .locals 5
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 328
    const/4 v1, 0x1

    .line 329
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 330
    const-string v3, "FolderLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "cancelReceiverFolder input is:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v2, ""

    .line 331
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v3, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    if-eqz p1, :cond_1

    .line 334
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->cancelReceiverFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I

    move-result v1

    .line 338
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    :cond_1
    return v1

    .line 331
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static confirmReceiverFolder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "SharePath"
    .parameter "confirmType"
    .parameter "accountName"
    .parameter "displayName"

    .prologue
    .line 359
    const/4 v6, 0x1

    .line 360
    .local v6, ret:I
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 362
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v1, "confirmReceiverFolder input is:SharePath="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 363
    if-nez p1, :cond_2

    const-string v1, ""

    .line 362
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, ",confirmType="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",accoutnName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "displayName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, "FolderLogic"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 369
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 370
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->confirmReceiverFolder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 374
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    :cond_1
    return v6

    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_2
    move-object v1, p1

    .line 363
    goto :goto_0
.end method

.method public static createAsynShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
    .locals 5
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 218
    const/4 v1, 0x1

    .line 219
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 220
    const-string v3, "FolderLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "createAsynShareFolder input is:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v2, ""

    .line 221
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v3, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    const/4 v2, 0x2

    .line 234
    :goto_1
    return v2

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 229
    :cond_2
    if-eqz p1, :cond_3

    .line 230
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->createAsynShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I

    move-result v1

    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    :cond_3
    move v2, v1

    .line 234
    goto :goto_1
.end method

.method public static createShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .locals 1
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public static delShareFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "localPath"
    .parameter "cloudPath"
    .parameter "sharePath"

    .prologue
    .line 190
    const/4 v1, 0x1

    .line 191
    .local v1, ret:I
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "localPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cloudPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    const-string v4, ",sharePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v3, "FolderLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delShareFolder,input is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 198
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->delShareFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 202
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    :cond_1
    return v1
.end method

.method public static getFolderInfo(Landroid/content/Context;II)Ljava/util/HashMap;
    .locals 5
    .parameter "context"
    .parameter "queryType"
    .parameter "queryFrom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;>;"
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "FolderLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFolderInfo,input is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->getFolderInfo(Landroid/content/Context;II)Ljava/util/HashMap;

    move-result-object v1

    .line 101
    return-object v1
.end method

.method public static getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .locals 5
    .parameter "context"
    .parameter "sharePath"
    .parameter "queryFrom"

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, sFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 160
    const-string v2, "FolderLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFolderInfoByPath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v1

    .line 167
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    :cond_1
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_2

    .line 168
    const-string v2, "FolderLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sFolder is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_2
    return-object v1
.end method

.method public static getFolderInfoList(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "queryType"
    .parameter "queryFrom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_0

    .line 122
    const-string v5, "FolderLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getFolderInfoList,input is :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v1, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v1, p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->getFolderInfo(Landroid/content/Context;II)Ljava/util/HashMap;

    move-result-object v4

    .line 129
    .local v4, retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    const/16 v5, 0x20

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .restart local v3       #retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 136
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 137
    const/4 v3, 0x0

    .line 140
    :cond_2
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_3

    .line 141
    const-string v5, "FolderLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "list is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_3
    return-object v3

    .line 130
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 132
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 133
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static modifyShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
    .locals 5
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 266
    const/4 v1, 0x1

    .line 267
    .local v1, ret:I
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 269
    const-string v3, "FolderLogic"

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "modifyShareFolder input is:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v2, ""

    .line 271
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v3, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    if-eqz p1, :cond_1

    .line 274
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->modifyShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I

    move-result v1

    .line 278
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    :cond_1
    return v1

    .line 271
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static modifyShareFolderRec(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "sharepath"
    .parameter
    .parameter
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 300
    .local v1, ret:I
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "modifyShareFolderRec input is:sharepath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 303
    if-nez p1, :cond_2

    const-string v3, ""

    .line 302
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v3, ",addList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v3, ",delList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v3, "FolderLogic"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p1, :cond_1

    .line 309
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->modifyShareFolderRec(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    .line 313
    .end local v0           #impl:Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
    :cond_1
    return v1

    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_2
    move-object v3, p1

    .line 303
    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
