.class public Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;
.super Ljava/lang/Object;
.source "FlowWindowsControl.java"

# interfaces
.implements Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;


# static fields
.field private static final DATA_TYPE_NUM:I = 0x7


# instance fields
.field private TIME_UNIT:J

.field private WINDOW_SIZE:I

.field private counts:[J

.field private current:J

.field private max:J

.field private oldTime:J

.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x3c

    iput v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    .line 13
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    .line 14
    iput-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    .line 15
    iput-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    .line 16
    iput-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    .line 19
    iput-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J

    .line 22
    return-void
.end method

.method public constructor <init>(JIJJ)V
    .locals 5
    .parameter "unit"
    .parameter "winSize"
    .parameter "valve"
    .parameter "max"

    .prologue
    const-wide/16 v3, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v1, 0x3c

    iput v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    .line 13
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    .line 14
    iput-wide v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    .line 15
    iput-wide v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    .line 16
    iput-wide v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    .line 19
    iput-wide v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J

    .line 36
    iput-wide p1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    .line 37
    iget-wide v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 38
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    .line 40
    :cond_0
    iput p3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    .line 41
    iget v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    if-gtz v1, :cond_1

    .line 42
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    .line 44
    :cond_1
    iput-wide p4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    .line 45
    iput-wide p6, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    .line 46
    iget v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    if-ge v0, v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    aput-wide v3, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J

    .line 51
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 8
    .parameter "statSize"
    .parameter "value"

    .prologue
    .line 56
    const-wide/16 v0, 0xa

    div-long v1, p1, v0

    const/16 v3, 0xa

    move-object v0, p0

    move-wide v4, p3

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;-><init>(JIJJ)V

    .line 57
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 205
    const-wide/32 v1, 0x16800

    .line 206
    .local v1, totalVolume:J
    new-instance v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;

    const-wide v3, 0x9a7ec800L

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;-><init>(JJ)V

    .line 207
    .local v0, fc:Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method private moveWindows(J)V
    .locals 11
    .parameter "curTime"

    .prologue
    const-wide/16 v9, 0x0

    .line 117
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J

    sub-long v2, p1, v5

    .line 118
    .local v2, n:J
    iget v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_2

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    if-ge v0, v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    aput-wide v9, v5, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iput-wide v9, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    .line 131
    .end local v0           #i:I
    :cond_1
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    div-long v5, p1, v5

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    mul-long/2addr v5, v7

    iput-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J

    .line 132
    return-void

    .line 124
    :cond_2
    const/4 v4, 0x0

    .line 125
    .local v4, pos:I
    const-wide/16 v0, 0x0

    .local v0, i:J
    :goto_1
    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 126
    add-long v5, p1, v0

    iget v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    int-to-long v7, v7

    rem-long/2addr v5, v7

    long-to-int v4, v5

    .line 127
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    iget-object v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    aget-wide v7, v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    .line 128
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    aput-wide v9, v5, v4

    .line 125
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addFlow(J)Z
    .locals 7
    .parameter "num"

    .prologue
    const/4 v6, 0x1

    .line 106
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 113
    :goto_0
    monitor-exit p0

    return v6

    .line 110
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    div-long v0, v2, v4

    .line 111
    .local v0, curTime:J
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    iget v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    int-to-long v3, v3

    rem-long v3, v0, v3

    long-to-int v3, v3

    aget-wide v4, v2, v3

    add-long/2addr v4, p1

    aput-wide v4, v2, v3

    .line 112
    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v0           #curTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public canApply(J)Z
    .locals 11
    .parameter "num"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v3

    .line 81
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    div-long v1, v5, v7

    .line 82
    .local v1, curTime:J
    iget v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    int-to-long v5, v5

    rem-long v5, v1, v5

    long-to-int v0, v5

    .line 83
    .local v0, cur:I
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J

    cmp-long v5, v1, v5

    if-nez v5, :cond_4

    .line 84
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    aget-wide v5, v5, v0

    add-long/2addr v5, p1

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    :cond_2
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    add-long/2addr v5, p1

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    :cond_3
    move v3, v4

    .line 85
    goto :goto_0

    .line 90
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->moveWindows(J)V

    .line 92
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    add-long/2addr v5, p1

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    move v3, v4

    .line 93
    goto :goto_0
.end method

.method public isSetEqual(Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;)Z
    .locals 6
    .parameter "fc"

    .prologue
    const/4 v1, 0x0

    .line 60
    instance-of v2, p1, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;

    .line 64
    .local v0, fsc:Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;
    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    iget-wide v4, v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    iget v3, v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    iget-wide v4, v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    iget-wide v4, v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadFromString(Ljava/lang/String;)Z
    .locals 14
    .parameter "info"

    .prologue
    .line 159
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 160
    const-string v10, "PushLog2510"

    const-string v11, "in loadFromString, info is empty!"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v10, 0x0

    .line 200
    :goto_0
    return v10

    .line 163
    :cond_0
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "begin to parse:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v9, ";"

    .line 166
    .local v9, typeSplit:Ljava/lang/String;
    const-string v2, "-"

    .line 167
    .local v2, dataSplit:Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, datas:[Ljava/lang/String;
    array-length v10, v3

    if-nez v10, :cond_1

    .line 169
    const/4 v10, 0x0

    goto :goto_0

    .line 171
    :cond_1
    const/4 v6, 0x0

    .line 172
    .local v6, idx:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .local v7, idx:I
    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 173
    .local v8, storeDataNum:I
    const/4 v10, 0x7

    if-ne v8, v10, :cond_2

    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    if-eq v8, v10, :cond_3

    .line 174
    :cond_2
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "storeDataNum:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", datas_len:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " DATA_TYPE_NUM:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " should equal!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v10, 0x0

    goto :goto_0

    .line 179
    :cond_3
    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget-object v10, v3, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    .line 180
    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    .line 181
    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget-object v10, v3, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    .line 182
    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    .line 183
    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget-object v10, v3, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    .line 185
    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .restart local v7       #idx:I
    aget-object v10, v3, v6

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, cns:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, countsLen:I
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    if-eq v1, v10, :cond_4

    .line 188
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "counts maybe err, needSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " storeSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 191
    :cond_4
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    new-array v10, v10, [J

    iput-object v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    .line 192
    const/4 v5, 0x1

    .local v5, i:I
    :goto_1
    array-length v10, v0

    if-ge v5, v10, :cond_5

    .line 193
    iget-object v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    add-int/lit8 v11, v5, -0x1

    aget-object v12, v0, v5

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 196
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget-object v10, v3, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 198
    .end local v0           #cns:[Ljava/lang/String;
    .end local v1           #countsLen:I
    .end local v2           #dataSplit:Ljava/lang/String;
    .end local v3           #datas:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #idx:I
    .end local v8           #storeDataNum:I
    .end local v9           #typeSplit:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 199
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "info:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is invalid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public saveToString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 135
    const-string v7, ";"

    .line 136
    .local v7, typeSplit:Ljava/lang/String;
    const-string v1, "-"

    .line 137
    .local v1, dataSplit:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v6, ret:Ljava/lang/StringBuffer;
    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-wide v9, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-wide v9, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-wide v9, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->value:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-wide v9, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    array-length v8, v8

    if-lez v8, :cond_0

    .line 147
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->counts:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v0, v2

    .line 150
    .local v3, l:J
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v3           #l:J
    :cond_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-wide v8, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->oldTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " WINDOW_SIZE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->WINDOW_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " TIME_UNIT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->TIME_UNIT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->current:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowWindowsControl;->max:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
