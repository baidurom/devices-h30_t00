.class public Lcom/huawei/telephony/ProtocolLogManager;
.super Landroid/os/Handler;
.source "ProtocolLogManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PROTOCOL_LOG"

.field private static final REPORT_A_ABNORMAL_EVENT:I = 0x1

.field private static final REPORT_B_ABNORMAL_EVENT:I = 0x2

.field private static mClient:Lcom/huawei/lcagent/client/LogCollectManager;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/huawei/telephony/ProtocolLogManager;


# instance fields
.field private hasSetHeader:Z


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/telephony/ProtocolLogManager;->hasSetHeader:Z

    .line 184
    return-void
.end method

.method private eventToLevel(I)I
    .locals 4
    .parameter "event"

    .prologue
    .line 130
    const/4 v0, -0x1

    .line 131
    .local v0, level:I
    packed-switch p1, :pswitch_data_0

    .line 139
    const-string v1, "PROTOCOL_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpect event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return v0

    .line 133
    :pswitch_0
    const/4 v0, 0x1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_1
    const/16 v0, 0x10

    .line 137
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/telephony/ProtocolLogManager;
    .locals 4

    .prologue
    .line 45
    const-class v3, Lcom/huawei/telephony/ProtocolLogManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/huawei/telephony/ProtocolLogManager;->sInstance:Lcom/huawei/telephony/ProtocolLogManager;

    if-nez v2, :cond_0

    .line 46
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ProtocolLogManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 48
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 49
    .local v0, looper:Landroid/os/Looper;
    new-instance v2, Lcom/huawei/telephony/ProtocolLogManager;

    invoke-direct {v2, v0}, Lcom/huawei/telephony/ProtocolLogManager;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/huawei/telephony/ProtocolLogManager;->sInstance:Lcom/huawei/telephony/ProtocolLogManager;

    .line 51
    :cond_0
    sget-object v2, Lcom/huawei/telephony/ProtocolLogManager;->sInstance:Lcom/huawei/telephony/ProtocolLogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 45
    .end local v0           #looper:Landroid/os/Looper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    const-class v1, Lcom/huawei/telephony/ProtocolLogManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/telephony/ProtocolLogManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 33
    sput-object p0, Lcom/huawei/telephony/ProtocolLogManager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/huawei/lcagent/client/LogCollectManager;

    sget-object v2, Lcom/huawei/telephony/ProtocolLogManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/lcagent/client/LogCollectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/telephony/ProtocolLogManager;->mClient:Lcom/huawei/lcagent/client/LogCollectManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 36
    :cond_1
    :try_start_1
    sget-object v0, Lcom/huawei/telephony/ProtocolLogManager;->mContext:Landroid/content/Context;

    if-eq v0, p0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Detect difference context while do init"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private levelToEvent(I)I
    .locals 4
    .parameter "level"

    .prologue
    .line 114
    const/4 v0, -0x1

    .line 115
    .local v0, event:I
    sparse-switch p1, :sswitch_data_0

    .line 123
    const-string v1, "PROTOCOL_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpect level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return v0

    .line 117
    :sswitch_0
    const/4 v0, 0x1

    .line 118
    goto :goto_0

    .line 120
    :sswitch_1
    const/4 v0, 0x2

    .line 121
    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private reportAbnoramlLevel(Landroid/os/Message;I)V
    .locals 7
    .parameter "msg"
    .parameter "level"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/device/chrlog/ChrLogModel;

    .line 153
    .local v2, logInfo:Lcom/huawei/device/chrlog/ChrLogModel;
    :try_start_0
    iget-boolean v4, p0, Lcom/huawei/telephony/ProtocolLogManager;->hasSetHeader:Z

    if-nez v4, :cond_2

    .line 154
    iget-object v4, v2, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    invoke-virtual {v4}, Lcom/huawei/device/chrlog/CSegFILEHEAD;->toByteArray()[B

    move-result-object v1

    .line 156
    .local v1, header:[B
    sget-object v4, Lcom/huawei/telephony/ProtocolLogManager;->mClient:Lcom/huawei/lcagent/client/LogCollectManager;

    const/4 v5, 0x1

    array-length v6, v1

    invoke-virtual {v4, v5, v1, v6}, Lcom/huawei/lcagent/client/LogCollectManager;->setMetricStoargeHeader(I[BI)I

    .line 159
    iget-object v4, v2, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    invoke-virtual {v4}, Lcom/huawei/device/chrlog/CSegCOMHEAD;->toByteArray()[B

    move-result-object v1

    .line 160
    sget-object v4, Lcom/huawei/telephony/ProtocolLogManager;->mClient:Lcom/huawei/lcagent/client/LogCollectManager;

    const/4 v5, 0x1

    array-length v6, v1

    invoke-virtual {v4, v5, v1, v6}, Lcom/huawei/lcagent/client/LogCollectManager;->setMetricCommonHeader(I[BI)I

    .line 163
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/telephony/ProtocolLogManager;->hasSetHeader:Z

    .line 166
    .end local v1           #header:[B
    :cond_2
    iget-object v4, v2, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 167
    iget-object v4, v2, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/device/chrlog/ChrLogBaseModel;

    invoke-virtual {v4}, Lcom/huawei/device/chrlog/ChrLogBaseModel;->toByteArray()[B

    move-result-object v3

    .line 168
    .local v3, payload:[B
    sget-object v4, Lcom/huawei/telephony/ProtocolLogManager;->mClient:Lcom/huawei/lcagent/client/LogCollectManager;

    const/4 v5, 0x1

    array-length v6, v3

    invoke-virtual {v4, v5, p2, v3, v6}, Lcom/huawei/lcagent/client/LogCollectManager;->submitMetric(II[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v3           #payload:[B
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "PROTOCOL_LOG"

    const-string v5, "Call LogCollectService fail, did you install it?"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    const-string v4, "PROTOCOL_LOG"

    const-string v5, "log events is empty, not submit metric"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private sendMessage(Lcom/huawei/device/chrlog/ChrLogModel;I)V
    .locals 3
    .parameter "logInfo"
    .parameter "level"

    .prologue
    .line 98
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v0, -0x1

    .line 104
    .local v0, event:I
    invoke-direct {p0, p2}, Lcom/huawei/telephony/ProtocolLogManager;->levelToEvent(I)I

    move-result v0

    .line 106
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/huawei/telephony/ProtocolLogManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 108
    .local v1, targetMsg:Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/huawei/telephony/ProtocolLogManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 56
    if-nez p1, :cond_1

    .line 57
    const-string v1, "PROTOCOL_LOG"

    const-string v2, "msg is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "PROTOCOL_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The event is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/huawei/telephony/ProtocolLogManager;->eventToLevel(I)I

    move-result v0

    .line 67
    .local v0, level:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/huawei/telephony/ProtocolLogManager;->reportAbnoramlLevel(Landroid/os/Message;I)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reportAbnormalLevelA(Lcom/huawei/device/chrlog/ChrLogModel;)V
    .locals 2
    .parameter "logInfo"

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 80
    const-string v0, "PROTOCOL_LOG"

    const-string v1, "logInfo is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/telephony/ProtocolLogManager;->sendMessage(Lcom/huawei/device/chrlog/ChrLogModel;I)V

    goto :goto_0
.end method

.method public reportAbnormalLevelB(Lcom/huawei/device/chrlog/ChrLogModel;)V
    .locals 2
    .parameter "logInfo"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 90
    const-string v0, "PROTOCOL_LOG"

    const-string v1, "logInfo is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/huawei/telephony/ProtocolLogManager;->sendMessage(Lcom/huawei/device/chrlog/ChrLogModel;I)V

    goto :goto_0
.end method
