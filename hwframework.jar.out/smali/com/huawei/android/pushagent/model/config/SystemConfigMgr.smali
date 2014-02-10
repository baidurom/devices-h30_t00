.class public Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;
.super Ljava/lang/Object;
.source "SystemConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/config/SystemConfigMgr$SystemStatus;,
        Lcom/huawei/android/pushagent/model/config/SystemConfigMgr$ITEM_NAME;
    }
.end annotation


# static fields
.field public static final CFG_DEFAULT_ITEM:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/android/pushagent/datatype/CFG_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUSH_CONFIG_FILENAME:Ljava/lang/String; = "pushConfig"

.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;


# instance fields
.field private cfgItem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/android/pushagent/datatype/CFG_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    .line 32
    invoke-static {}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->initDefault()V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->context:Landroid/content/Context;

    .line 226
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->context:Landroid/content/Context;

    .line 227
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->init()V

    .line 228
    return-void
.end method

.method public static getALLSystemCfg(Landroid/content/Context;)Ljava/util/LinkedList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/huawei/android/pushagent/datatype/CFG_TYPE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    sget-object v1, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    iget-object v1, v1, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getCfgLinkList(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 190
    move v0, p2

    .line 192
    .local v0, temp:Z
    :try_start_0
    invoke-static {p0, p1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCfgLinkList(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/LinkedList;
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/android/pushagent/datatype/CFG_TYPE;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/huawei/android/pushagent/datatype/CFG_TYPE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, hashCfg:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 125
    .local v0, cfgItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/huawei/android/pushagent/datatype/CFG_TYPE;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 126
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;>;"
    :cond_0
    return-object v0
.end method

.method public static getChannelType(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
    .locals 6
    .parameter "context"

    .prologue
    .line 307
    const-string v3, "USE_SSL"

    invoke-static {p0, v3}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    move-result-object v0

    .line 309
    .local v0, cfg:Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
    sget-object v1, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    .line 310
    .local v1, channelType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
    if-eqz v0, :cond_1

    .line 311
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 313
    .local v2, useSSL:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->values()[Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 315
    :cond_0
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useSSL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid cfg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v2           #useSSL:Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-object v1

    .line 318
    .restart local v2       #useSSL:Ljava/lang/Integer;
    :cond_2
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->values()[Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, v3, v4

    goto :goto_0
.end method

.method public static getConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
    .locals 3
    .parameter "context"
    .parameter "itemName"

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v1

    .line 304
    :cond_1
    :goto_0
    return-object v0

    .line 298
    :cond_2
    sget-object v2, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    iget-object v2, v2, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    .line 299
    .local v0, config:Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 300
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;
    .locals 2
    .parameter "context"

    .prologue
    .line 149
    const-class v1, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    monitor-exit v1

    return-object v0

    .line 152
    :cond_0
    if-nez p0, :cond_1

    .line 153
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    :try_start_1
    new-instance v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    .line 156
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 174
    move v0, p2

    .line 176
    .local v0, temp:I
    :try_start_0
    invoke-static {p0, p1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 179
    :goto_0
    return v0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .parameter "context"
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 182
    move-wide v0, p2

    .line 184
    .local v0, temp:J
    :try_start_0
    invoke-static {p0, p1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 187
    :goto_0
    return-wide v0

    .line 185
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 198
    move-object v3, p2

    .line 199
    .local v3, temp:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v4, v3

    .line 208
    .end local v3           #temp:Ljava/lang/String;
    .local v4, temp:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 204
    .end local v4           #temp:Ljava/lang/String;
    .restart local v3       #temp:Ljava/lang/String;
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v3

    .line 208
    .end local v3           #temp:Ljava/lang/String;
    .restart local v4       #temp:Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v4           #temp:Ljava/lang/String;
    .restart local v3       #temp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "PushLog2510"

    const-string v6, "getString from config failed!"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "context"
    .parameter "cfgItemName"

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v1

    .line 164
    :cond_1
    sget-object v2, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    iget-object v2, v2, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    .line 165
    .local v0, config:Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, v0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static initDefault()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 41
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 42
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_isLogLocal"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_isLogLocal"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_pushLogLevel"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_pushLogLevel"

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_isReportLog"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_isReportLog"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_isNoDelayConnect"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_isNoDelayConnect"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_isSupportUpdate"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_isSupportUpdate"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_isSupportCollectSocketInfo"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_isSupportCollectSocketInfo"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_trsIp"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_trsIp"

    const-class v4, Ljava/lang/String;

    const-string v5, "push.hicloud.com"

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "cloudpush_fixHeatBeat"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "cloudpush_fixHeatBeat"

    const-class v4, Ljava/lang/String;

    const-string v5, " unit sec"

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    const-string v1, "USE_SSL"

    new-instance v2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v3, "USE_SSL"

    const-class v4, Ljava/lang/Integer;

    sget-object v5, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-virtual {v5}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private loadFromFile()V
    .locals 10

    .prologue
    .line 231
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 233
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->context:Landroid/content/Context;

    const-string v5, "pushConfig"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 235
    .local v3, sf:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    sget-object v5, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 261
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 262
    .local v1, fileCfgs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 263
    .local v2, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 267
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, v4, v8, v9}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    .end local v0           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    return-void
.end method

.method private saveItem(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)Z
    .locals 6
    .parameter "context"
    .parameter "cfg"

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->context:Landroid/content/Context;

    .line 276
    :cond_0
    const-string v2, "pushConfig"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 278
    .local v1, sf:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 279
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-class v2, Ljava/lang/Boolean;

    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    .line 280
    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    iget-object v2, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2

    .line 281
    :cond_2
    const-class v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    .line 282
    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    iget-object v2, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 283
    :cond_3
    const-class v2, Ljava/lang/Long;

    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    .line 284
    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    iget-object v2, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 285
    :cond_4
    const-class v2, Ljava/lang/Integer;

    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_5

    .line 286
    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    iget-object v2, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 287
    :cond_5
    const-class v2, Ljava/lang/Float;

    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 288
    iget-object v3, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    iget-object v2, p2, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V
    .locals 3
    .parameter "context"
    .parameter "cfg"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set value err, cfg is null or itemName is null, cfg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    if-nez v0, :cond_2

    .line 218
    const-string v0, "PushLog2510"

    const-string v1, "System init failed in set Value"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->g_SystemConfigMgr:Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->saveItem(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteNoSysCfg()V
    .locals 9

    .prologue
    .line 66
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->context:Landroid/content/Context;

    const-string v7, "pushConfig"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 68
    .local v5, sf:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 71
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 72
    .local v3, rmItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, item:Ljava/lang/String;
    sget-object v6, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->CFG_DEFAULT_ITEM:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "NeedMyServiceRun"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remove from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pushConfig"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in deleteNoSysCfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 80
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .restart local v2       #item:Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->cfgItem:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    .end local v2           #item:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->initDefault()V

    .line 37
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->loadFromFile()V

    .line 38
    return-void
.end method
