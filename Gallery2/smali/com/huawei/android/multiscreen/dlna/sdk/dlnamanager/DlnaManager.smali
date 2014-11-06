.class public Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;
.super Ljava/lang/Object;
.source "DlnaManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$EDlnaInitMode:[I

.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$ELogLevel:[I

.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;


# instance fields
.field private context:Landroid/content/Context;

.field private dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

.field private dmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

.field private dmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

.field private isNetworkSetted:Z

.field private isStarted:Z

.field private netWorkPlocy:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;

.field private stackInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field private systemEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$EDlnaInitMode()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$EDlnaInitMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$EDlnaInitMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$ELogLevel()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$ELogLevel:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ERROR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->INFO:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->TRACE:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->WARNING:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$ELogLevel:[I

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
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->isNetworkSetted:Z

    .line 107
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->systemEventListenerList:Ljava/util/List;

    .line 110
    return-void
.end method

.method private checkDmsDmrName(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z
    .locals 3
    .parameter "initMode"

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$EDlnaInitMode()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 149
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    .line 102
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    return-object v0
.end method

.method private nofitySystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;Ljava/lang/Object;)V
    .locals 4
    .parameter "type"
    .parameter "data"

    .prologue
    .line 185
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->systemEventListenerList:Ljava/util/List;

    monitor-enter v3

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->systemEventListenerList:Ljava/util/List;

    .line 187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 186
    if-nez v2, :cond_0

    .line 185
    monitor-exit v3

    .line 197
    return-void

    .line 188
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;

    .line 189
    .local v0, item:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;
    if-nez v0, :cond_1

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 185
    .end local v0           #item:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 192
    .restart local v0       #item:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;->onEvent(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->systemEventListenerList:Ljava/util/List;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->systemEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v1

    .line 270
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exitDlna()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiStackDestroy()I

    move-result v0

    .line 201
    .local v0, ret:I
    if-nez v0, :cond_0

    .line 202
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->isStarted:Z

    .line 203
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->DlnaServiceDown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->nofitySystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->clearAllDevice()V

    .line 207
    const/4 v1, 0x1

    .line 210
    :cond_0
    return v1
.end method

.method public exitMS()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->MSApiStackDestroy()I

    move-result v0

    .line 220
    .local v0, ret:I
    if-nez v0, :cond_0

    .line 221
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->isStarted:Z

    .line 222
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->DlnaServiceDown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->nofitySystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->clearAllDevice()V

    .line 226
    const/4 v1, 0x1

    .line 229
    :cond_0
    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDlnaNetworkPolicy()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->netWorkPlocy:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;

    return-object v0
.end method

.method public getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    return-object v0
.end method

.method public getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    return-object v0
.end method

.method public getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/DmsDevice;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->dmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    return-object v0
.end method

.method public getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->stackInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->context:Landroid/content/Context;

    .line 234
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->isStarted:Z

    return v0
.end method

.method public removeDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->systemEventListenerList:Ljava/util/List;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->systemEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 273
    monitor-exit v1

    .line 276
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentActiveNetwork(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V
    .locals 1
    .parameter "networkInfo"

    .prologue
    .line 314
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->onReceiveNetworkInfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    .line 315
    if-eqz p1, :cond_0

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->isNetworkSetted:Z

    .line 318
    :cond_0
    return-void
.end method

.method public setDlnaNetworkPolicy(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->netWorkPlocy:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;

    .line 323
    return-void
.end method

.method public setLogLevel(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;)V
    .locals 2
    .parameter "level"

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$dlnamanager$ELogLevel()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiSetLogLevel(I)I

    goto :goto_0

    .line 284
    :pswitch_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->setLogLevel(I)V

    goto :goto_1

    .line 287
    :pswitch_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->setLogLevel(I)V

    goto :goto_1

    .line 290
    :pswitch_2
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->setLogLevel(I)V

    goto :goto_1

    .line 293
    :pswitch_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->setLogLevel(I)V

    goto :goto_1

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startDlna(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z
    .locals 9
    .parameter "initMode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 152
    if-eqz p1, :cond_0

    iget-boolean v7, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->isNetworkSetted:Z

    if-nez v7, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v5

    .line 155
    :cond_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getNetworkInfo()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    move-result-object v3

    .line 156
    .local v3, networkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v7

    sget-object v8, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    if-eq v7, v8, :cond_0

    .line 159
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->stackInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 160
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->checkDmsDmrName(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z

    move-result v2

    .line 161
    .local v2, nameCheck:Z
    if-eqz v2, :cond_0

    .line 166
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "databases"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, dbPath:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v7

    .line 174
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->getValue()I

    move-result v8

    .line 173
    invoke-virtual {v7, v8, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiStackInit(ILjava/lang/String;)I

    move-result v4

    .line 175
    .local v4, ret:I
    if-nez v4, :cond_0

    .line 176
    iput-boolean v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->isStarted:Z

    .line 177
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->DlnaServiceUp:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->nofitySystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;Ljava/lang/Object;)V

    move v5, v6

    .line 179
    goto :goto_0
.end method
