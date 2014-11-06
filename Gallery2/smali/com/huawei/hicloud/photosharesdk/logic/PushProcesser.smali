.class public Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;
.super Ljava/lang/Object;
.source "PushProcesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk$logic$PushProcesser$PushCommand:[I = null

.field private static final TAG:Ljava/lang/String; = "PushProcesser"

.field private static ignoredPushCommand:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mToken:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk$logic$PushProcesser$PushCommand()[I
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$logic$PushProcesser$PushCommand:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->values()[Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushError:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareChangeNtf:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInvite:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInviteResult:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$logic$PushProcesser$PushCommand:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->ignoredPushCommand:Ljava/util/Set;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static deleteReceiveFolderByPush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "receiver"
    .parameter "sharePath"

    .prologue
    const/4 v7, 0x1

    .line 274
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    .line 275
    .local v0, accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, currentAccount:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PushProcesser current:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",receiver"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 279
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 278
    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 281
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    const/4 v6, 0x0

    .line 286
    .local v6, result:Z
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 287
    .local v5, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 290
    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, p1, v8}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 291
    .local v4, folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x0

    .line 301
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 309
    .end local v4           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :goto_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PushProcesser local data exist:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    if-eqz v6, :cond_0

    .line 312
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v8

    .line 313
    const-string v9, "3"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    .line 312
    invoke-virtual {v8, v7, p1, v9, v10}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;II)V

    .line 316
    .end local v5           #operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    .end local v6           #result:Z
    :cond_0
    return-void

    .restart local v4       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .restart local v5       #operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    .restart local v6       #result:Z
    :cond_1
    move v6, v7

    .line 291
    goto :goto_0

    .line 293
    .end local v4           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :catch_0
    move-exception v2

    .line 295
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "6"

    const-string v10, "checkFolderDataExit db"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    :try_start_3
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 303
    :catch_1
    move-exception v3

    .line 305
    .local v3, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "6"

    const-string v10, "checkFolderDataExit db"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 301
    :try_start_4
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 307
    :goto_2
    throw v7

    .line 303
    :catch_2
    move-exception v3

    .line 305
    .restart local v3       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "6"

    const-string v10, "checkFolderDataExit db"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 303
    .end local v3           #e2:Ljava/lang/Exception;
    .restart local v4       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :catch_3
    move-exception v3

    .line 305
    .restart local v3       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "6"

    const-string v10, "checkFolderDataExit db"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static ignorePushMessages(Ljava/util/EnumSet;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, pushCommands:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->ignoredPushCommand:Ljava/util/Set;

    .line 78
    return-void
.end method

.method private static isIgnored(Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;)Z
    .locals 1
    .parameter "pushCommand"

    .prologue
    .line 324
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->ignoredPushCommand:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static parsePushCommand(Ljava/lang/String;)Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;
    .locals 7
    .parameter "msg"

    .prologue
    .line 81
    const/4 v3, 0x0

    .line 84
    .local v3, pushcommand:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    .local v0, code:Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareChangeNtf:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    :cond_0
    :goto_0
    move-object v4, v3

    .line 99
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #json:Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 86
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Lorg/json/JSONException;
    const-string v4, "PushProcesser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "msg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushError:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    goto :goto_1

    .line 94
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #code:Ljava/lang/String;
    .restart local v2       #json:Lorg/json/JSONObject;
    :cond_1
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInvite:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    goto :goto_0

    .line 96
    :cond_2
    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInviteResult:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    goto :goto_0
.end method

.method public static processPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "msg"
    .parameter "token"

    .prologue
    .line 104
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "PushProcesser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/api/AccountSettings;->getLogOnInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    sput-object p2, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->mToken:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->parsePushCommand(Ljava/lang/String;)Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    move-result-object v0

    .line 110
    .local v0, pushCommand:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->isIgnored(Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$logic$PushProcesser$PushCommand()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-static {p1, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->processPushShareChangeNtf(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-static {p1, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->processPushShareInvite(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-static {p1, p0}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->processPushShareInviteResult(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static processPushShareChangeNtf(Ljava/lang/String;Landroid/content/Context;)V
    .locals 12
    .parameter "msg"
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 136
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 138
    .local v0, gson:Lcom/google/gson/Gson;
    const-class v6, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;

    .line 137
    invoke-virtual {v0, p0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;

    .line 140
    .local v2, pushShareChangeNtf:Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->getUserID()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, pushUserId:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, localUserId:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "processPushShareChangeNtf pushUserId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 143
    const-string v9, "## localUserId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "processPushShareChangeNtf return"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->getSharePath()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, sharePath:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->getScope()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_1
    const-string v6, "myphoto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    const-string v4, "/Photoshare/myphoto"

    .line 164
    :cond_1
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 165
    .local v5, type:I
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v4, v5, v10}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;II)V

    goto :goto_0

    .line 176
    .end local v5           #type:I
    :pswitch_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4, v11, v10}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;II)V

    goto :goto_0

    .line 180
    :pswitch_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v6

    invoke-virtual {v6, v10, v4, v11, v10}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;II)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static processPushShareInvite(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 187
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getSharePhotoSwitch()Z

    move-result v7

    if-nez v7, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 192
    .local v0, gson:Lcom/google/gson/Gson;
    const-class v7, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;

    .line 191
    invoke-virtual {v0, p0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;

    .line 193
    .local v2, pushShareInvite:Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->getSharer()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, sharer:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->getShareName()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, shareName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->getSharePath()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, sharePath:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->getUserID()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, pushUserId:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, localUserId:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "processPushShareInvite pushUserId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 201
    const-string v10, "## localUserId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 200
    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz v3, :cond_2

    const-string v7, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 203
    if-eqz v1, :cond_2

    const-string v7, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 206
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    const-string v9, "processPushShareInvite return"

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->isNewInvitedNotified(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 211
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 213
    const/4 v7, 0x0

    invoke-static {p1, v6, v7, v4, v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendNewInvite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static processPushShareInviteResult(Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .parameter "msg"
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 218
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getSharePhotoSwitch()Z

    move-result v8

    if-nez v8, :cond_0

    .line 270
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 223
    .local v1, gson:Lcom/google/gson/Gson;
    const-class v8, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;

    .line 222
    invoke-virtual {v1, p0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;

    .line 226
    .local v4, pushShareInviteResult:Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->getUserID()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, pushUserId:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, localUserId:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "processPushShareInviteResult pushUserId:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 229
    const-string v11, "## localUserId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 228
    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz v5, :cond_1

    const-string v8, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 231
    if-eqz v2, :cond_1

    const-string v8, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 232
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 234
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "processPushShareInviteResult return"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->getReceiver()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, receiver:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->getSharePath()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, sharePath:Ljava/lang/String;
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v3, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 241
    .local v3, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;-><init>()V

    .line 242
    .local v0, fr:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverAccount(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setSharedPath(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setStateChangedTime(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->getResult()Ljava/lang/String;

    move-result-object v8

    .line 246
    const-string v9, "0"

    .line 245
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 248
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->getShareName()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-static {p1, v6, v12, v8, v7}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendReceiverConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverState(I)V

    .line 259
    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z

    goto/16 :goto_0

    .line 250
    :cond_3
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->getResult()Ljava/lang/String;

    move-result-object v8

    .line 251
    const-string v9, "1"

    .line 250
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 253
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->getShareName()Ljava/lang/String;

    move-result-object v8

    .line 252
    invoke-static {p1, v6, v12, v8, v7}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendReceiverReject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverState(I)V

    .line 257
    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->deleteReceiveFolderByPush(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static registerToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "token"

    .prologue
    .line 337
    sput-object p1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->mToken:Ljava/lang/String;

    .line 338
    invoke-static {p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;->writeTokenToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, request:Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;
    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;->setSharePath(Ljava/lang/String;)V

    .line 341
    const/16 v1, 0x10b

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;->setFusionCode(I)V

    .line 342
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 343
    return-void
.end method

.method public static unRegisterToken(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 328
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->mToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 329
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;->readTokenFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->mToken:Ljava/lang/String;

    .line 331
    :cond_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, unbindPushRequest:Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;->setToken(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 334
    return-void
.end method
