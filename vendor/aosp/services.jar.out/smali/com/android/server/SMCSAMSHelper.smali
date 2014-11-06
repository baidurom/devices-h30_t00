.class public final Lcom/android/server/SMCSAMSHelper;
.super Ljava/lang/Object;
.source "SMCSAMSHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DBG_PERFORMANCE:Z = true

.field static final SMCS_AMS_GET_MAX_OOM_MIN_FREE:I = 0x6

.field private static final SMCS_AMS_GET_RUNNING_PROCESS:I = 0x1

.field static final SMCS_AMS_MOVE_SELF_AUTO_TRIMED_PROCS:I = 0x5

.field private static final SMCS_AMS_MOVE_ST_EVENTS:I = 0x2

.field private static final SMCS_AMS_TRIM_PKGS:I = 0x4

.field private static final SMCS_AMS_TRIM_PROCESSES:I = 0x3

.field static final SMCS_TRIM_TYPE_SELF_AUTO:Ljava/lang/String; = "trimer_self_auto"

.field static final SMCS_TRIM_TYPE_USER_ONE_SHOOT:Ljava/lang/String; = "trimer_user_one_shoot"

#the value of this static final field might be set in the static constructor
.field private static final STP_EVENT_MAX_NUM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SMCSAMSHelper"

.field private static mSelf:Lcom/android/server/SMCSAMSHelper;


# instance fields
.field private mAlarmService:Lcom/android/server/AlarmManagerService;

.field private mSTPEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/smcs/SmartTrimProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfAutoTrimId:J

.field private mSelfAutoTrimedProcs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "ro.enable.st_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SMCSAMSHelper;->mSelf:Lcom/android/server/SMCSAMSHelper;

    .line 96
    const-string v0, "ro.smart_trim.stpe_num"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/SMCSAMSHelper;->STP_EVENT_MAX_NUM:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimId:J

    .line 92
    iput-object v2, p0, Lcom/android/server/SMCSAMSHelper;->mAlarmService:Lcom/android/server/AlarmManagerService;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    .line 103
    return-void
.end method

.method private addSTPEvent(Lcom/huawei/android/smcs/SmartTrimProcessEvent;)V
    .locals 9
    .parameter "e"

    .prologue
    .line 364
    const-wide/16 v3, -0x1

    .line 367
    .local v3, timeStart:J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 370
    iget-object v6, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    if-eqz p1, :cond_3

    .line 372
    :try_start_1
    iget-object v5, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget v7, Lcom/android/server/SMCSAMSHelper;->STP_EVENT_MAX_NUM:I

    if-lt v5, v7, :cond_1

    .line 373
    sget-boolean v5, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v5, :cond_0

    .line 374
    const-string v5, "SMCSAMSHelper"

    const-string v7, "SMCSAMSHelper.addSTPEvent: the number of the stp events has reached the upper limit."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v5, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 378
    :cond_1
    sget-boolean v5, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v5, :cond_2

    .line 379
    const-string v5, "SMCSAMSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.addSTPEvent: add one event. STP_EVENT_MAX_NUM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/SMCSAMSHelper;->STP_EVENT_MAX_NUM:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    iget-object v5, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v3

    .line 387
    .local v0, costTime:J
    const-string v5, "SMCSAMSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMCSAMSHelper.addSTPEvent: cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms end."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 392
    .end local v0           #costTime:J
    :goto_0
    return-void

    .line 383
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, exce:Ljava/lang/Exception;
    const-string v5, "SMCSAMSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMCSAMSHelper.addSTPEvent: catch exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpSTProcessRecords(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "sLog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/smcs/STProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, stProcessRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/smcs/STProcessRecord;>;"
    const/4 v0, 0x0

    .line 770
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/smcs/STProcessRecord;>;"
    const/4 v2, 0x0

    .line 771
    .local v2, stpr:Lcom/huawei/android/smcs/STProcessRecord;
    const/4 v1, 0x0

    .line 773
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 774
    :cond_0
    const-string v3, "SMCSAMSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty process records."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_0
    return-void

    .line 778
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #sb:Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 779
    .restart local v1       #sb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 781
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 782
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #stpr:Lcom/huawei/android/smcs/STProcessRecord;
    check-cast v2, Lcom/huawei/android/smcs/STProcessRecord;

    .line 783
    .restart local v2       #stpr:Lcom/huawei/android/smcs/STProcessRecord;
    if-eqz v2, :cond_2

    .line 786
    invoke-virtual {v2}, Lcom/huawei/android/smcs/STProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 789
    :cond_3
    const-string v3, "SMCSAMSHelper"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpSmartTrimProcessEvent(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "sLog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/smcs/SmartTrimProcessEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/smcs/SmartTrimProcessEvent;>;"
    const/4 v0, 0x0

    .line 750
    .local v0, event:Lcom/huawei/android/smcs/SmartTrimProcessEvent;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 752
    .local v2, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 753
    :cond_0
    const-string v4, "SMCSAMSHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": empty events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return-void

    .line 757
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 759
    .local v3, size:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": total "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " events."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 761
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #event:Lcom/huawei/android/smcs/SmartTrimProcessEvent;
    check-cast v0, Lcom/huawei/android/smcs/SmartTrimProcessEvent;

    .line 762
    .restart local v0       #event:Lcom/huawei/android/smcs/SmartTrimProcessEvent;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 765
    :cond_2
    const-string v4, "SMCSAMSHelper"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpStrings(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "sLog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, strs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 730
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 731
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 733
    .local v2, sb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    if-nez p1, :cond_0

    .line 745
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 740
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 741
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #s:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 742
    .restart local v1       #s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 744
    :cond_1
    const-string v3, "SMCSAMSHelper"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/SMCSAMSHelper;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/SMCSAMSHelper;->mSelf:Lcom/android/server/SMCSAMSHelper;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/server/SMCSAMSHelper;

    invoke-direct {v0}, Lcom/android/server/SMCSAMSHelper;-><init>()V

    sput-object v0, Lcom/android/server/SMCSAMSHelper;->mSelf:Lcom/android/server/SMCSAMSHelper;

    .line 118
    :cond_0
    sget-object v0, Lcom/android/server/SMCSAMSHelper;->mSelf:Lcom/android/server/SMCSAMSHelper;

    return-object v0
.end method

.method private handleDirectTrimPkgs(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 2
    .parameter "data"
    .parameter "reply"
    .parameter "flag"

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 642
    .local v0, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 643
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->hwTrimPkgs(Ljava/util/ArrayList;)V

    .line 644
    sget-boolean v1, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 645
    const-string v1, "SMCSAMSHelper.handleDirectTrimPkgs: trimed pkgs"

    invoke-direct {p0, v0, v1}, Lcom/android/server/SMCSAMSHelper;->dumpStrings(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 647
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 648
    invoke-direct {p0, v0}, Lcom/android/server/SMCSAMSHelper;->stringChangeA2H(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/SMCSAMSHelper;->informTrimAlarm(Ljava/util/HashSet;)V

    .line 649
    return-void
.end method

.method private handleDirectTrimProcesses(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 4
    .parameter "data"
    .parameter "reply"
    .parameter "flag"

    .prologue
    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 615
    .local v2, trimedPkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 617
    .local v0, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 618
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 619
    .restart local v0       #pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService;->hwTrimApk(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 620
    invoke-direct {p0, v0}, Lcom/android/server/SMCSAMSHelper;->stringChangeH2A(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v2

    .line 621
    sget-boolean v3, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v3, :cond_0

    .line 622
    const-string v3, "SMCSAMSHelper.handleDirectTrimProcesses: trimed pkgs"

    invoke-direct {p0, v2, v3}, Lcom/android/server/SMCSAMSHelper;->dumpStrings(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 624
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 625
    invoke-direct {p0, v0}, Lcom/android/server/SMCSAMSHelper;->informTrimAlarm(Ljava/util/HashSet;)V

    .line 626
    return-void
.end method

.method private handleGetMaxOomMinFree(Landroid/os/Parcel;)V
    .locals 3
    .parameter "reply"

    .prologue
    .line 662
    const-wide/16 v0, -0x1

    .line 664
    .local v0, maxOomMinFree:J
    if-nez p1, :cond_0

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getHWMemFreeLimit()J

    move-result-wide v0

    .line 668
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0
.end method

.method private handleGetRunningProcesses(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 2
    .parameter "data"
    .parameter "reply"
    .parameter "flag"

    .prologue
    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, runList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/smcs/STProcessRecord;>;"
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcessRecord(Ljava/util/ArrayList;)V

    .line 452
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 453
    return-void
.end method

.method private handleMoveSTEvents(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 4
    .parameter "data"
    .parameter "reply"
    .parameter "flag"

    .prologue
    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 473
    iget-object v1, p0, Lcom/android/server/SMCSAMSHelper;->mSTPEvent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 474
    monitor-exit v2

    .line 479
    :goto_0
    return-void

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SMCSAMSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMCSAMSHelper.handleMoveSTEvents: catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveSelfAutoTrimedProcs(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 7
    .parameter "data"
    .parameter "reply"

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 584
    .local v1, trimedId:J
    iget-wide v3, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimId:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 585
    sget-boolean v3, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v3, :cond_0

    .line 586
    const-string v3, "SMCSAMSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMCSAMSHelper.handleMoveSelfAutoTrimedProcs: trimed id is different "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v3, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    if-eqz v3, :cond_3

    .line 591
    iget-object v3, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget-object v3, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 593
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 596
    :cond_2
    iget-object v3, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 598
    :cond_3
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimId:J

    goto :goto_0
.end method

.method private handleSelfAutoTrimPostProcess(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;)V
    .locals 1
    .parameter "trimProc"
    .parameter "uid"
    .parameter "trimType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p4, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimedProcs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    invoke-direct {p0, p4}, Lcom/android/server/SMCSAMSHelper;->informTrimAlarm(Ljava/util/HashSet;)V

    .line 413
    return-void
.end method

.method private handleSelfAutoTrimProcess(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "data"
    .parameter "flag"

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, trimProc:Ljava/lang/String;
    const/4 v1, -0x1

    .line 551
    .local v1, uid:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/SMCSAMSHelper;->mSelfAutoTrimId:J

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 553
    sget-boolean v2, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v2, :cond_0

    .line 554
    const-string v2, "SMCSAMSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMCSAMSHelper.handleSelfAutoTrimProcess: trim process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 557
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 558
    :cond_1
    sget-boolean v2, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v2, :cond_2

    .line 559
    const-string v2, "SMCSAMSHelper"

    const-string v3, "SMCSAMSHelper.handleSelfAutoTrimProcess: invalid trim process name."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    :goto_0
    return-void

    .line 563
    :cond_3
    if-gez v1, :cond_4

    .line 564
    sget-boolean v2, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v2, :cond_2

    .line 565
    const-string v2, "SMCSAMSHelper"

    const-string v3, "SMCSAMSHelper.handleSelfAutoTrimProcess: invalid trim process uid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    const-string v3, "trimer_self_auto"

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->hwTrimApkPost(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleTrimPkgs(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 3
    .parameter "data"
    .parameter "reply"
    .parameter "flag"

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, trimType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 526
    :cond_0
    sget-boolean v1, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v1, :cond_1

    .line 527
    const-string v1, "SMCSAMSHelper"

    const-string v2, "SMCSAMSHelper.handleTrimPkgs: invalid trim type."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 532
    :cond_2
    const-string v1, "trimer_user_one_shoot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SMCSAMSHelper;->handleDirectTrimPkgs(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private handleTrimProcesses(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 4
    .parameter "data"
    .parameter "reply"
    .parameter "flag"

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, trimType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 496
    sget-boolean v1, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 497
    const-string v1, "SMCSAMSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMCSAMSHelper.handleTrimProcesses: trimType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 508
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    const-string v1, "trimer_self_auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    invoke-direct {p0, p1, p3}, Lcom/android/server/SMCSAMSHelper;->handleSelfAutoTrimProcess(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 505
    :cond_3
    const-string v1, "trimer_user_one_shoot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SMCSAMSHelper;->handleDirectTrimProcesses(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private informTrimAlarm(Ljava/util/HashSet;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/SMCSAMSHelper;->mAlarmService:Lcom/android/server/AlarmManagerService;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/server/SMCSAMSHelper;->mAlarmService:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->postTrimAlarm(Ljava/util/HashSet;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-boolean v0, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "SMCSAMSHelper"

    const-string v1, "SMCSAMSHelper.informTrimAlarm: invalid alarm service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stringChangeA2H(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, src:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 682
    .local v0, dst:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 683
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 685
    .local v2, sPkg:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 686
    :cond_0
    const/4 v3, 0x0

    .line 697
    :goto_0
    return-object v3

    .line 689
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #dst:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 690
    .restart local v0       #dst:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 691
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sPkg:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 693
    .restart local v2       #sPkg:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 694
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v3, v0

    .line 697
    goto :goto_0
.end method

.method private stringChangeH2A(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, src:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 711
    .local v0, dst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 712
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 714
    .local v2, sPkg:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 715
    :cond_0
    const/4 v3, 0x0

    .line 725
    :goto_0
    return-object v3

    .line 718
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #dst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .restart local v0       #dst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 720
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 721
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sPkg:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 722
    .restart local v2       #sPkg:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 725
    goto :goto_0
.end method


# virtual methods
.method public handleTransact(Landroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "data"
    .parameter "reply"
    .parameter "flag"

    .prologue
    .line 146
    const/4 v0, -0x1

    .line 147
    .local v0, iEvent:I
    const/4 v1, 0x1

    .line 149
    .local v1, res:Z
    if-nez p1, :cond_0

    .line 150
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    sget-boolean v2, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v2, :cond_1

    .line 154
    const-string v2, "SMCSAMSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMCSAMSHelper.handleTransact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 182
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 185
    goto :goto_0

    .line 158
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SMCSAMSHelper;->handleGetRunningProcesses(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 162
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SMCSAMSHelper;->handleMoveSTEvents(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 166
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SMCSAMSHelper;->handleTrimProcesses(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 170
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SMCSAMSHelper;->handleTrimPkgs(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    goto :goto_1

    .line 174
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/SMCSAMSHelper;->handleMoveSelfAutoTrimedProcs(Landroid/os/Parcel;Landroid/os/Parcel;)V

    goto :goto_1

    .line 178
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/server/SMCSAMSHelper;->handleGetMaxOomMinFree(Landroid/os/Parcel;)V

    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setAlarmService(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter "alarmService"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/SMCSAMSHelper;->mAlarmService:Lcom/android/server/AlarmManagerService;

    .line 131
    return-void
.end method

.method public smartTrimAddProcessRelation(Ljava/lang/String;ILjava/util/HashSet;Ljava/lang/String;ILjava/util/HashSet;)V
    .locals 9
    .parameter "clientProc"
    .parameter "clientCurAdj"
    .parameter
    .parameter "serverProc"
    .parameter "serverCurAdj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, clientPkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p6, serverPkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 237
    .local v2, e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    const-wide/16 v4, -0x1

    .line 240
    .local v4, timeStart:J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 243
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 244
    :cond_0
    sget-boolean v6, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v6, :cond_1

    .line 245
    const-string v6, "SMCSAMSHelper"

    const-string v7, "SMCSAMSHelper.smartTrimAddProcessRelation: the client process is invalide"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v2           #e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    :cond_1
    :goto_0
    return-void

    .line 249
    .restart local v2       #e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    :cond_2
    if-gez p2, :cond_3

    .line 250
    sget-boolean v6, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v6, :cond_1

    .line 251
    const-string v6, "SMCSAMSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.smartTrimAddProcessRelation: the client process curAdj is too small. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v6

    move-object v3, v2

    .end local v2           #e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    .local v3, e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    move-object v2, v6

    .line 296
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    const-string v6, "SMCSAMSHelper"

    .end local v3           #e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.smartTrimAddProcessRelation: catch exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .local v2, e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    :cond_3
    if-eqz p3, :cond_4

    :try_start_1
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 256
    :cond_4
    sget-boolean v6, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v6, :cond_1

    .line 257
    const-string v6, "SMCSAMSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.smartTrimAddProcessRelation: the client process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no pkgs."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 262
    :cond_6
    sget-boolean v6, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v6, :cond_1

    .line 263
    const-string v6, "SMCSAMSHelper"

    const-string v7, "SMCSAMSHelper.smartTrimAddProcessRelation: the service process is invalide"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    :cond_7
    if-gez p5, :cond_8

    .line 268
    sget-boolean v6, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v6, :cond_1

    .line 269
    const-string v6, "SMCSAMSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.smartTrimAddProcessRelation: the service curAdj is too small. serviceProc.curAdj "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    :cond_8
    if-eqz p6, :cond_9

    invoke-virtual {p6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_a

    .line 274
    :cond_9
    sget-boolean v6, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v6, :cond_1

    .line 275
    const-string v6, "SMCSAMSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.smartTrimAddProcessRelation: the server process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no pkgs."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 280
    :cond_a
    sget-boolean v6, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v6, :cond_b

    .line 281
    const-string v6, "SMCSAMSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.smartTrimAddProcessRelation: clientProc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " serviceProc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_b
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 288
    new-instance v3, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    invoke-direct {v3, p1, p3, p4, p6}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;-><init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;Ljava/util/HashSet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    .end local v2           #e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    .restart local v3       #e:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/SMCSAMSHelper;->addSTPEvent(Lcom/huawei/android/smcs/SmartTrimProcessEvent;)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 293
    .local v0, costTime:J
    const-string v6, "SMCSAMSHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMCSAMSHelper.smartTrimAddProcessRelation: cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms end."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 295
    .end local v0           #costTime:J
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method public smartTrimProcessPackageResume(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .parameter "cn"
    .parameter "processName"

    .prologue
    .line 311
    const/4 v4, 0x0

    .line 312
    .local v4, sPkg:Ljava/lang/String;
    const/4 v2, 0x0

    .line 313
    .local v2, e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    const-wide/16 v5, -0x1

    .line 316
    .local v5, timeStart:J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 319
    if-nez p1, :cond_1

    .line 320
    sget-boolean v7, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v7, :cond_0

    .line 321
    const-string v7, "SMCSAMSHelper"

    const-string v8, "SMCSAMSHelper.smartTrimProcessPackageResume: the component name is invalid."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v2           #e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    :cond_0
    :goto_0
    return-void

    .line 326
    .restart local v2       #e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 327
    :cond_2
    sget-boolean v7, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v7, :cond_0

    .line 328
    const-string v7, "SMCSAMSHelper"

    const-string v8, "SMCSAMSHelper.smartTrimProcessPackageResume: invalid process name"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v7

    move-object v3, v2

    .end local v2           #e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    .local v3, e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    move-object v2, v7

    .line 349
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    const-string v7, "SMCSAMSHelper"

    .end local v3           #e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMCSAMSHelper.smartTrimProcessPackageResume: catch exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .local v2, e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 334
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 335
    :cond_4
    sget-boolean v7, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v7, :cond_0

    .line 336
    const-string v7, "SMCSAMSHelper"

    const-string v8, "SMCSAMSHelper.smartTrimProcessPackageResume: the component name has not pkg name."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_5
    new-instance v3, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    invoke-direct {v3, v4, p2}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    .end local v2           #e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    .restart local v3       #e:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/SMCSAMSHelper;->addSTPEvent(Lcom/huawei/android/smcs/SmartTrimProcessEvent;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v5

    .line 346
    .local v0, costTime:J
    const-string v7, "SMCSAMSHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMCSAMSHelper.smartTrimProcessPackageResume: cost time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms end."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 348
    .end local v0           #costTime:J
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public trimProcessPostProcess(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;)V
    .locals 7
    .parameter "trimProc"
    .parameter "uid"
    .parameter "trimType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p4, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v2, -0x1

    .line 201
    .local v2, timeStart:J
    const-wide/16 v0, -0x1

    .line 203
    .local v0, timeCost:J
    sget-boolean v4, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 206
    :cond_0
    const-string v4, "trimer_self_auto"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SMCSAMSHelper;->handleSelfAutoTrimPostProcess(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;)V

    .line 213
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v4, :cond_2

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 215
    const-string v4, "SMCSAMSHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMCSAMSHelper.trimProcessPostProcess: total cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    return-void

    .line 209
    :cond_3
    sget-boolean v4, Lcom/android/server/SMCSAMSHelper;->DBG:Z

    if-eqz v4, :cond_1

    .line 210
    const-string v4, "SMCSAMSHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMCSAMSHelper.trimProcessPostProcess: unkonw trim type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
