.class public Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentTimeOutHistory"
.end annotation


# instance fields
.field count:I

.field first_index:I

.field last_index:I

.field timeout_list:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2493
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    .line 2494
    return-void
.end method


# virtual methods
.method public addRecord2(J)V
    .locals 4
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2497
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2498
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    .line 2499
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 2500
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    aput-wide p1, v0, v1

    .line 2518
    :goto_0
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Now: last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",first = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :cond_0
    return-void

    .line 2502
    :cond_1
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    if-nez v0, :cond_2

    .line 2503
    iput v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 2504
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    aput-wide p1, v0, v3

    .line 2505
    iput v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_0

    .line 2507
    :cond_2
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    if-ne v2, v0, :cond_3

    .line 2508
    iput v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    .line 2509
    iput v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 2510
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    aput-wide p1, v0, v2

    .line 2511
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_0

    .line 2514
    :cond_3
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 2515
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    aput-wide p1, v0, v1

    .line 2516
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_0
.end method

.method public isPeriodical()Z
    .locals 6

    .prologue
    .line 2522
    iget v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 2523
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "average alarm cyc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    iget v5, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->first_index:I

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x9

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_0
    const/4 v0, 0x1

    .line 2527
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
