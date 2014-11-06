.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "l"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 583
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 584
    return-void
.end method

.method private getUidFromPid(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, runningApps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 589
    .local v0, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p2, :cond_0

    .line 590
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 593
    .end local v0           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v2

    .line 592
    :cond_1
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUidFromPid no find this pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private stopAppOfUsingSDcard(Ljava/lang/String;)V
    .locals 14
    .parameter "path"

    .prologue
    .line 596
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 597
    .local v8, pm:Landroid/content/pm/IPackageManager;
    iget-object v11, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 598
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 599
    .local v9, runningApps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 601
    .local v10, uidMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v11, p1}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v7

    .line 602
    .local v7, pids:[I
    if-eqz v7, :cond_2

    array-length v11, v7

    if-eqz v11, :cond_2

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 603
    move-object v2, v7

    .local v2, arr$:[I
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v6, v2, v3

    .line 604
    .local v6, pid:I
    invoke-direct {p0, v9, v6}, Lcom/android/server/MountService$MountServiceHandler;->getUidFromPid(Ljava/util/List;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 606
    .end local v6           #pid:I
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 607
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 609
    :try_start_0
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    invoke-interface {v8, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 610
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_1

    .line 611
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "forceStopPackage="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 614
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v11

    goto :goto_1

    .line 619
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #arr$:[I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 623
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 625
    :pswitch_0
    const-string v22, "MountService"

    const-string v23, "H_UNMOUNT_PM_UPDATE"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/MountService$UnmountCallBack;

    .line 627
    .local v20, ucb:Lcom/android/server/MountService$UnmountCallBack;
    const/16 v21, 0x0

    .line 628
    .local v21, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 629
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    .line 630
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    const-string v23, "android.intent.action.MEDIA_EJECT"

    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)I

    move-result v22

    if-lez v22, :cond_1

    .line 640
    const-wide/16 v22, 0x1f4

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    .line 645
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v22, "MountService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " registered = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 651
    const-string v22, "MountService"

    const-string v23, "Updating external media status on PackageManager"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 630
    :catchall_0
    move-exception v22

    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 642
    :cond_1
    const-wide/16 v22, 0x5dc

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 663
    .end local v20           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .end local v21           #volume:Landroid/os/storage/StorageVolume;
    :pswitch_1
    const-string v22, "MountService"

    const-string v23, "H_UNMOUNT_PM_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v22, "MountService"

    const-string v23, "Updated status. Processing requests"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 667
    .local v16, size:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 668
    .local v17, sizeArr:[I
    const/16 v18, 0x0

    .line 670
    .local v18, sizeArrN:I
    const-string v22, "activity"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 672
    .local v4, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v7, 0x0

    .local v7, i:I
    move/from16 v19, v18

    .end local v18           #sizeArrN:I
    .local v19, sizeArrN:I
    :goto_2
    move/from16 v0, v16

    if-ge v7, v0, :cond_11

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/MountService$UnmountCallBack;

    .line 674
    .restart local v20       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 675
    .local v13, path:Ljava/lang/String;
    const/4 v11, 0x0

    .line 676
    .local v11, needKill:Z
    const/4 v5, 0x0

    .line 677
    .local v5, done:Z
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 678
    const/4 v5, 0x1

    .line 726
    :cond_2
    :goto_3
    if-nez v5, :cond_f

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    .line 728
    const-string v22, "MountService"

    const-string v23, "Retrying to kill storage users again"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v25, v0

    add-int/lit8 v26, v25, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x1e

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v18, v19

    .line 672
    .end local v19           #sizeArrN:I
    .restart local v18       #sizeArrN:I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v18

    .end local v18           #sizeArrN:I
    .restart local v19       #sizeArrN:I
    goto :goto_2

    .line 681
    :cond_3
    invoke-static {}, Lcom/android/server/MountService;->access$1700()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    const-string v23, "persist.sys.primarysd"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 683
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService$MountServiceHandler;->stopAppOfUsingSDcard(Ljava/lang/String;)V

    .line 687
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v14

    .line 688
    .local v14, pids:[I
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 689
    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .line 690
    :cond_6
    if-eqz v4, :cond_e

    .line 691
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 692
    .local v15, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v15, :cond_c

    .line 693
    array-length v10, v14

    .line 694
    .local v10, len:I
    const/4 v9, 0x0

    .local v9, k:I
    :goto_5
    if-ge v9, v10, :cond_7

    .line 695
    if-eqz v11, :cond_9

    .line 710
    .end local v9           #k:I
    .end local v10           #len:I
    :cond_7
    :goto_6
    if-eqz v11, :cond_d

    .line 712
    const-string v22, "unmount media"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v14, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v14

    .line 715
    if-eqz v14, :cond_8

    array-length v0, v14

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 716
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 698
    .restart local v9       #k:I
    .restart local v10       #len:I
    :cond_9
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 699
    .local v12, p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    aget v23, v14, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 700
    const/4 v11, 0x1

    .line 701
    const-string v22, "MountService"

    const-string v23, "java process, need kill!"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v12           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 708
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #k:I
    .end local v10           #len:I
    :cond_c
    const-string v22, "MountService"

    const-string v23, "runningList from AMS is null!"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 719
    :cond_d
    const-string v22, "MountService"

    const-string v23, "all native process, don\'t need kill!"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 723
    .end local v15           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_e
    const-string v22, "MountService"

    const-string v23, "Fail to get AMS while unmount!"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 734
    .end local v14           #pids:[I
    :cond_f
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    .line 735
    const-string v22, "MountService"

    const-string v23, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_10
    add-int/lit8 v18, v19, 0x1

    .end local v19           #sizeArrN:I
    .restart local v18       #sizeArrN:I
    aput v7, v17, v19

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 744
    .end local v5           #done:Z
    .end local v11           #needKill:Z
    .end local v13           #path:Ljava/lang/String;
    .end local v18           #sizeArrN:I
    .end local v20           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v19       #sizeArrN:I
    :cond_11
    add-int/lit8 v7, v19, -0x1

    :goto_7
    if-ltz v7, :cond_0

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget v23, v17, v7

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 744
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 750
    .end local v4           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v7           #i:I
    .end local v16           #size:I
    .end local v17           #sizeArr:[I
    .end local v19           #sizeArrN:I
    :pswitch_2
    const-string v22, "MountService"

    const-string v23, "H_UNMOUNT_MS"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/MountService$UnmountCallBack;

    .line 752
    .restart local v20       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 757
    .end local v20           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 758
    :catch_0
    move-exception v6

    .line 759
    .local v6, ex:Ljava/lang/Exception;
    const-string v22, "MountService"

    const-string v23, "Boot-time mount exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
