.class public Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;
.super Ljava/lang/Object;
.source "DeviceTokenMgr.java"


# static fields
.field public static final PUSH_CLIENT_INFO:Ljava/lang/String; = "pclient_info"

.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static g_DeviceTokenMgr:Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;


# instance fields
.field public tokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->g_DeviceTokenMgr:Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    .line 40
    const-string v6, "PushLog2510"

    const-string v7, "DeviceTokenMgr: create the DeviceTokenMgr"

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v4, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v6, "pclient_info"

    invoke-direct {v4, p1, v6}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .local v4, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 45
    const-string v6, "PushLog2510"

    const-string v7, "create TokenMap occur an error!!"

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 51
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 53
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, token:Ljava/lang/String;
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 58
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v4, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static buildRegisterReqMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 2
    .parameter "context"
    .parameter "deviceId"
    .parameter "packageName"

    .prologue
    .line 171
    invoke-static {p0, p2}, Lcom/huawei/android/pushagent/utils/CommFun;->getPackageNameWithChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, packageNameWithChannel:Ljava/lang/String;
    new-instance v1, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;

    invoke-direct {v1, p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static createRegListApk(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "context"
    .parameter "deviceId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, mPushMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;>;"
    .local p3, installPkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v5, "pclient_request_info"

    invoke-direct {v3, p0, v5}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    .local v3, pushRef:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 187
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 188
    .local v4, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    invoke-static {p0, p1, v2}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->buildRegisterReqMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the package name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " need register"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the package name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    goto :goto_0

    .line 201
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static createRegListSDK(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter "deviceId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, mPushMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;>;"
    .local p3, installPkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v4, "pclient_request_info"

    invoke-direct {v3, p0, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .local v3, pushRef:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->clear()Z

    .line 154
    new-instance v2, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v4, "pclient_info"

    invoke-direct {v2, p0, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .local v2, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    invoke-static {p0, p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->buildRegisterReqMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the package name is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " need register"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v2, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    invoke-virtual {v2, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 164
    invoke-static {p0, p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->buildRegisterReqMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the package name is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " need register"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v1           #packageName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static delClientInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "token"

    .prologue
    .line 239
    const-string v0, ""

    .line 240
    .local v0, packagename:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 241
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #packagename:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 244
    .restart local v0       #packagename:Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v2, "pclient_info"

    invoke-direct {v1, p0, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    .local v1, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseUnregisterToken,after delPClientInfo token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packagename:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v1, v0}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 249
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    const-class v1, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->g_DeviceTokenMgr:Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->g_DeviceTokenMgr:Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    monitor-exit v1

    return-object v0

    .line 36
    :cond_0
    :try_start_1
    new-instance v0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->g_DeviceTokenMgr:Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    .line 37
    sget-object v0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->g_DeviceTokenMgr:Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPkgNameByToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "token"

    .prologue
    .line 256
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTokenByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "pkgname"

    .prologue
    .line 252
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v1, "pclient_info"

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    .local v0, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v0, p1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isRegistered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 204
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v1, "pclient_info"

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    .local v0, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const/4 v1, 0x1

    .line 210
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryAllClientRequest(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 20
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v13, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v17, "pclient_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .local v13, pushClientInfoPref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v8, mPushMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.huawei.android.push.intent.RECEIVE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    const/4 v10, 0x0

    .line 85
    .local v10, num:I
    :goto_0
    if-nez v10, :cond_2

    .line 86
    const-string v17, "PushLog2510"

    const-string v18, "we have no push client"

    invoke-static/range {v17 .. v18}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_1
    return-object v8

    .line 83
    .end local v10           #num:I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    .line 90
    .restart local v10       #num:I
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/huawei/android/pushagent/utils/CommFun;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, deviceId:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 93
    const-string v17, "PushLog2510"

    const-string v18, "have no deviceId, when queryAllClientForRegister"

    invoke-static/range {v17 .. v18}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v7, installPkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 100
    .local v12, pushClientInfoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 102
    .local v11, pushCientInfoPkgNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v10, :cond_6

    .line 104
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 106
    .local v3, ci:Landroid/content/pm/ComponentInfo;
    :goto_3
    if-eqz v3, :cond_4

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "com.huawei.android.pushagent"

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 107
    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 105
    .end local v3           #ci:Landroid/content/pm/ComponentInfo;
    :cond_5
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 111
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string v17, "com.huawei.android.pushagent"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "android"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 113
    :cond_7
    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v7}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->createRegListApk(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 119
    :goto_4
    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_a

    .line 120
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 121
    .local v15, str:Ljava/lang/String;
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 122
    invoke-virtual {v13, v15}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, token:Ljava/lang/String;
    const-string v17, "PushLog2510"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "this package ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] need to unregister device toeken ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v9, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->removeClientInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 115
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .end local v15           #str:Ljava/lang/String;
    .end local v16           #token:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v7}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->createRegListSDK(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 132
    :cond_a
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_0

    .line 133
    const-string v17, "PushLog2510"

    const-string v18, "there is no more client need register and unregister token"

    invoke-static/range {v17 .. v18}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static reRegisterDeviceToken(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 263
    new-instance v4, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v5, "pclient_info"

    invoke-direct {v4, p0, v5}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    .local v4, registedPkgsPref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 265
    .local v3, registedPkgsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 266
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v5, "pclient_request_info"

    invoke-direct {v1, p0, v5}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    .local v1, noRegistePkgsPref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    .local v2, pkgName:Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v1, v2, v5}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " need to register again"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->clear()Z

    .line 272
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v5

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 275
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #noRegistePkgsPref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :cond_1
    return-void
.end method

.method static removeClientInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pkgname"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 229
    const-string v1, "PushLog2510"

    const-string v2, "when removeClientInfo, tokenMap the map is null!!! "

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v1, "pclient_info"

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    .local v0, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v0, p1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static saveClientInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "token"
    .parameter "pkgname"

    .prologue
    .line 214
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "PushLog2510"

    const-string v2, "responseRegisterToken the map is null!!! "

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v1, "pclient_info"

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    .local v0, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v0, p2, p1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
