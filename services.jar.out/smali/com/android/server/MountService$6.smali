.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1233
    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1234
    .local v3, encryptProgress:Ljava/lang/String;
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encryptProgress("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1236
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encryptProgress("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), skip the command to vold."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;
    invoke-static {v14}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v14

    const-string v15, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1251
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1327
    :cond_1
    :goto_0
    return-void

    .line 1260
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "list"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    const/16 v14, 0x6e

    invoke-static {v13, v14}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 1263
    .local v10, vols:[Ljava/lang/String;
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v11, v1, v4

    .line 1264
    .local v11, volstr:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1266
    .local v9, tok:[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v6, v9, v13

    .line 1267
    .local v6, path:Ljava/lang/String;
    const-string v8, "removed"

    .line 1270
    .local v8, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 1272
    .local v12, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    const/4 v13, 0x2

    :try_start_2
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1278
    .local v7, st:I
    if-nez v7, :cond_6

    .line 1279
    const-string v8, "removed"

    .line 1292
    :goto_2
    if-eqz v12, :cond_3

    if-eqz v8, :cond_3

    .line 1294
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating valid state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v13, v12, v8}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1263
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1272
    .end local v7           #st:I
    .end local v12           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1298
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #tok:[Ljava/lang/String;
    .end local v10           #vols:[Ljava/lang/String;
    .end local v11           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1299
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 1316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1320
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 1280
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #st:I
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #tok:[Ljava/lang/String;
    .restart local v10       #vols:[Ljava/lang/String;
    .restart local v11       #volstr:Ljava/lang/String;
    .restart local v12       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v13, 0x1

    if-ne v7, v13, :cond_7

    .line 1281
    :try_start_5
    const-string v8, "unmounted"

    goto :goto_2

    .line 1282
    :cond_7
    const/4 v13, 0x4

    if-ne v7, v13, :cond_8

    .line 1283
    const-string v8, "mounted"

    .line 1284
    const-string v13, "MountService"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1285
    :cond_8
    const/4 v13, 0x7

    if-ne v7, v13, :cond_9

    .line 1286
    const-string v8, "shared"

    .line 1287
    const-string v13, "MountService"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1289
    :cond_9
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
