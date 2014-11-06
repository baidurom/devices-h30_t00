.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3378
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3379
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3380
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 3385
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 3502
    :cond_0
    :goto_0
    return-void

    .line 3387
    :sswitch_0
    const/4 v1, 0x0

    .line 3388
    .local v1, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v14

    .line 3389
    :try_start_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)I

    move-result v15

    if-ne v13, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v1

    .line 3394
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3395
    if-eqz v1, :cond_0

    .line 3396
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NetTransition Wakelock for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " released by timeout"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_0

    .line 3394
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 3400
    .end local v1           #causedBy:Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 3401
    .local v12, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v12}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto :goto_0

    .line 3405
    .end local v12           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_2
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 3406
    .local v6, netType:I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 3407
    .local v2, condition:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v13, v6, v2}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;II)V

    goto :goto_0

    .line 3412
    .end local v2           #condition:I
    .end local v6           #netType:I
    :sswitch_3
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 3413
    .restart local v6       #netType:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 3414
    .local v10, sequence:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v13, v6, v10}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 3419
    .end local v6           #netType:I
    .end local v10           #sequence:I
    :sswitch_4
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 3420
    .local v9, preference:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v13, v9}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 3425
    .end local v9           #preference:I
    :sswitch_5
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v3, 0x1

    .line 3426
    .local v3, enabled:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v13, v3}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 3425
    .end local v3           #enabled:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 3431
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3436
    :sswitch_7
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v5, 0x1

    .line 3437
    .local v5, met:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v13, v14, v5}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3436
    .end local v5           #met:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 3442
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 3443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)I

    move-result v14

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static {v13, v14}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 3449
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 3450
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v13, v4}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3454
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_a
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 3455
    .local v7, networkType:I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v3, 0x1

    .line 3456
    .restart local v3       #enabled:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v13, v7, v3}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3455
    .end local v3           #enabled:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 3460
    .end local v7           #networkType:I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 3461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    invoke-virtual {v14, v13}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3468
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    move v14, v13

    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/app/Notification;

    move/from16 v0, v16

    #calls: Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V
    invoke-static {v15, v14, v0, v13}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x0

    move v14, v13

    goto :goto_4

    .line 3475
    :sswitch_d
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 3476
    .local v8, preSlotId:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 3478
    .local v11, slotId:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_SET_MOBILE_DATA IN  slotId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "preSlotId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataConnectionChange(II)V
    invoke-static {v13, v8, v11}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 3485
    .end local v8           #preSlotId:I
    .end local v11           #slotId:I
    :sswitch_e
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 3486
    .restart local v11       #slotId:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_SET_MOBILE_DATA_ENABLED_GEMINI IN  slotId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v13, v11}, Lcom/android/server/ConnectivityService;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_0

    .line 3495
    .end local v11           #slotId:I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataUpdate()V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3385
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_0
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x32 -> :sswitch_f
    .end sparse-switch
.end method
