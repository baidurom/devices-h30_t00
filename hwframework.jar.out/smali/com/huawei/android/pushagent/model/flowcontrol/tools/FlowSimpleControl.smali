.class public Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;
.super Ljava/lang/Object;
.source "FlowSimpleControl.java"

# interfaces
.implements Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;


# static fields
.field private static final DATA_TYPE_NUM:I = 0x4


# instance fields
.field public curVol:J

.field public fistrControlTime:J

.field public interval:J

.field public maxVol:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .parameter "interval"
    .parameter "maxVol"

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->interval:J

    .line 22
    iput-wide p3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->maxVol:J

    .line 23
    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    .line 24
    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    .line 25
    return-void
.end method


# virtual methods
.method public addFlow(J)Z
    .locals 2
    .parameter "num"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public canApply(J)Z
    .locals 13
    .parameter "num"

    .prologue
    const-wide/16 v11, 0x0

    .line 37
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enter FlowSimpleControl::canApply(num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", curVol:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", maxVol:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->maxVol:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 40
    .local v2, curTime:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->interval:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 42
    :cond_0
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " fistrControlTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " statInterval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->interval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " change fistrControlTime to cur"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    .line 47
    iput-wide v11, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    .line 69
    :cond_1
    :goto_0
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    add-long/2addr v5, p1

    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->maxVol:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 51
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, calendar:Ljava/util/Calendar;
    iget-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 54
    .local v4, lastMonth:I
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 55
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 56
    .local v1, cruMonth:I
    if-eq v4, v1, :cond_1

    .line 57
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    .line 58
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 60
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #cruMonth:I
    .end local v4           #lastMonth:I
    :catch_0
    move-exception v3

    .line 61
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "PushLog2510"

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 63
    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "PushLog2510"

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    .end local v3           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 65
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "PushLog2510"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isSetEqual(Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;)Z
    .locals 6
    .parameter "fc"

    .prologue
    const/4 v1, 0x0

    .line 28
    instance-of v2, p1, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    if-nez v2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    .line 32
    .local v0, fsc:Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;
    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->interval:J

    iget-wide v4, v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->interval:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->maxVol:J

    iget-wide v4, v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->maxVol:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadFromString(Ljava/lang/String;)Z
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x0

    .line 93
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    const-string v7, "PushLog2510"

    const-string v8, "in loadFromString, info is empty!"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return v6

    .line 97
    :cond_1
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "begin to parse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v5, ";"

    .line 100
    .local v5, typeSplit:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, datas:[Ljava/lang/String;
    array-length v7, v0

    if-eqz v7, :cond_0

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, idx:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 106
    .local v4, storeDataNum:I
    if-ne v4, v10, :cond_2

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    if-eq v4, v7, :cond_3

    .line 107
    :cond_2
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in fileNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", but need "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0           #datas:[Ljava/lang/String;
    .end local v3           #idx:I
    .end local v4           #storeDataNum:I
    .end local v5           #typeSplit:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 111
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #datas:[Ljava/lang/String;
    .restart local v3       #idx:I
    .restart local v4       #storeDataNum:I
    .restart local v5       #typeSplit:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->interval:J

    .line 112
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->maxVol:J

    .line 113
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    .line 114
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public saveToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-string v0, ";"

    .line 81
    .local v0, typeSplit:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->interval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->maxVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->curVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->fistrControlTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
