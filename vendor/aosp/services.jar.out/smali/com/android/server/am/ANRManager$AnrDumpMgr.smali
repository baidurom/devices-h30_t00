.class public Lcom/android/server/am/ANRManager$AnrDumpMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnrDumpMgr"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;

.field protected mDumpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ANRManager$AnrDumpRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/server/am/ANRManager;)V
    .locals 1
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z
    .locals 3
    .parameter

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 741
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ANRManager$AnrDumpRecord;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x1

    monitor-exit v1

    .line 744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected cancelDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 3
    .parameter

    .prologue
    .line 699
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 702
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 703
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 704
    if-eqz v0, :cond_2

    .line 705
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    .line 707
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dumpAnrDebugInfo(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 4
    .parameter

    .prologue
    .line 749
    if-nez p1, :cond_0

    .line 750
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_0
    return-void

    .line 753
    :cond_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 757
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v1, :cond_1

    .line 758
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpAnrDebugInfo During shutdown skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v1, :cond_2

    .line 764
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpAnrDebugInfo Crashing app skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 766
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 767
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo dump stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 773
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_1
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfo end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    const-string v1, "ANRManager"

    const-string v2, "dumpAnrDebugInfo exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, -0x1

    .line 781
    monitor-enter p1

    .line 782
    :try_start_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAnrDebugInfoLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    monitor-exit p1

    .line 941
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v4, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 787
    iget-object v5, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 788
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 789
    new-instance v7, Landroid/util/SparseArray;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 792
    const/4 v0, 0x0

    .line 793
    if-eqz v4, :cond_17

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v10, :cond_17

    .line 794
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    .line 799
    :goto_1
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 802
    if-eqz v5, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 803
    :cond_1
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_2
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_3
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 808
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 809
    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_4

    .line 810
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 811
    if-lez v8, :cond_4

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v8, v9, :cond_4

    if-eq v8, v1, :cond_4

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v9, :cond_4

    .line 812
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_5

    .line 813
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_4
    :goto_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 815
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 822
    :cond_6
    if-eqz v3, :cond_8

    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 823
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 824
    if-eqz v0, :cond_7

    .line 825
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 826
    iget v8, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v8, :cond_7

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v8, :cond_7

    .line 827
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 828
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4

    .line 837
    :cond_8
    if-eqz v4, :cond_9

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v10, :cond_9

    .line 838
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v6, v7}, Lcom/android/server/am/ANRManager$BinderWatchdog;->a(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 847
    :cond_9
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 849
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    if-eqz v5, :cond_a

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_a

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move v1, v0

    .line 852
    :cond_a
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v0, :cond_b

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 857
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 858
    if-eqz v0, :cond_c

    .line 859
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 860
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_c

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_c

    .line 861
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 863
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_c
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 873
    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 875
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 876
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 877
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 881
    :cond_e
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 882
    iget-object v1, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 885
    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 886
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 887
    const-string v3, "ANR in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    if-eqz v0, :cond_f

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 889
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :cond_f
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    if-eqz v1, :cond_10

    .line 893
    const-string v3, "Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_10
    if-eqz v5, :cond_11

    if-eq v5, v0, :cond_11

    .line 896
    const-string v0, "Parent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :cond_11
    new-instance v0, Lcom/android/internal/os/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    .line 901
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 902
    monitor-exit p1

    goto/16 :goto_0

    .line 905
    :cond_12
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/am/ANRManager;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v6, v0, v7, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 907
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 908
    monitor-exit p1

    goto/16 :goto_0

    .line 911
    :cond_13
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    .line 912
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 913
    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    invoke-virtual {v6}, Lcom/android/server/am/ANRManager;->getAndroidTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ANRManager;->a()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-wide v7, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/os/ProcessStats;->printCurrentState(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 918
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 919
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v0, "ANRManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 927
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 918
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 928
    :cond_14
    if-nez v1, :cond_15

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 932
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 935
    :cond_15
    const-string v0, "ro.monkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_16

    .line 939
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    .line 940
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_17
    move-object v3, v0

    goto/16 :goto_1
.end method

.method protected removeDumpRecord(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 3
    .parameter

    .prologue
    .line 711
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 714
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 716
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected startAsyncDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 7
    .parameter

    .prologue
    .line 720
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncDump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 727
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    monitor-exit v1

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 732
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    iget-object v0, v0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 735
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->a:Lcom/android/server/am/ANRManager;

    iget-object v2, v2, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 736
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
