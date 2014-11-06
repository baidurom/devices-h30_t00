.class Lcom/android/server/ConnectivityService$4;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 5159
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5162
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 5164
    .local v2, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "keyguard"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 5166
    .local v11, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isLockScreenDisabled()Z

    move-result v4

    .line 5167
    .local v4, disable:Z
    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v14

    .line 5168
    .local v14, locked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "max_level"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    if-nez v4, :cond_5

    if-nez v14, :cond_0

    const-string v17, "android.intent.action.KEYGUARD_UNLOCK"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 5169
    :cond_0
    const-string v17, "android.intent.action.KEYGUARD_UNLOCK"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 5171
    :try_start_0
    const-string v17, "receive keyguard unlock intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5173
    sget-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v17, :cond_1

    .line 5174
    const-string v17, "stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)V

    .line 5176
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 5178
    :cond_1
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5195
    :cond_2
    :goto_0
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 5196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 5198
    :try_start_1
    const-string v17, "sys.iswifihotspoton"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 5199
    .local v10, isWifiApOn:Z
    const-string v17, "sys.isusbtetheringon"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 5200
    .local v9, isUsbTetheringOn:Z
    const-string v17, "sys.isbthotspoton"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 5201
    .local v6, isBtTetheringOn:Z
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "wifi tethering: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5202
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Usb tethering: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5203
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bt tethering: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5207
    sget-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-nez v17, :cond_3

    .line 5208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "gprs_connection_setting"

    const/16 v21, -0x4

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/ConnectivityService;->DATA_SLOT:I

    .line 5211
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "receive screen off intent! DATA_SLOT = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/ConnectivityService;->DATA_SLOT:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5213
    const/4 v7, 0x0

    .line 5215
    .local v7, isDataConnected:Z
    const/4 v8, 0x0

    .line 5218
    .local v8, isInWhiteList:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v12, v3

    .local v12, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v12, :cond_a

    aget-object v16, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5219
    .local v16, nt:Landroid/net/NetworkStateTracker;
    if-nez v16, :cond_7

    .line 5218
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5178
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isBtTetheringOn:Z
    .end local v7           #isDataConnected:Z
    .end local v8           #isInWhiteList:Z
    .end local v9           #isUsbTetheringOn:Z
    .end local v10           #isWifiApOn:Z
    .end local v12           #len$:I
    .end local v16           #nt:Landroid/net/NetworkStateTracker;
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 5181
    :cond_5
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 5184
    :try_start_3
    const-string v17, "receive screen on intent! and stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5186
    sget-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v17, :cond_6

    .line 5187
    const-string v17, "stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)V

    .line 5189
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 5192
    :cond_6
    monitor-exit v18

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 5222
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v5       #i$:I
    .restart local v6       #isBtTetheringOn:Z
    .restart local v7       #isDataConnected:Z
    .restart local v8       #isInWhiteList:Z
    .restart local v9       #isUsbTetheringOn:Z
    .restart local v10       #isWifiApOn:Z
    .restart local v12       #len$:I
    .restart local v16       #nt:Landroid/net/NetworkStateTracker;
    :cond_7
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    .line 5224
    .local v15, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v17, v0

    aget-object v17, v17, v15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 5225
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 5227
    const/4 v13, 0x0

    .local v13, listIndex:I
    :goto_3
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$5200()[I

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_9

    .line 5228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v17, v0

    aget-object v17, v17, v15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/NetworkConfig;->type:I

    move/from16 v17, v0

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$5200()[I

    move-result-object v19

    aget v19, v19, v13

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 5229
    const/4 v8, 0x1

    .line 5227
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 5233
    :cond_9
    if-eqz v8, :cond_f

    .line 5234
    const/4 v7, 0x0

    .line 5235
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "white list data connection is exist and active; type = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/NetworkConfig;->type:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5247
    .end local v13           #listIndex:I
    .end local v15           #netType:I
    .end local v16           #nt:Landroid/net/NetworkStateTracker;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->getPowerSavingState()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 5249
    if-eqz v7, :cond_d

    if-nez v10, :cond_d

    if-nez v9, :cond_d

    if-nez v6, :cond_d

    .line 5251
    sget-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v19, "max_level"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    if-nez v4, :cond_d

    .line 5253
    :cond_b
    const-string v17, "start powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 5254
    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v19, "min_level"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 5255
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSaving()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;)V

    .line 5265
    :goto_4
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 5269
    :cond_d
    monitor-exit v18

    .line 5286
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isBtTetheringOn:Z
    .end local v7           #isDataConnected:Z
    .end local v8           #isInWhiteList:Z
    .end local v9           #isUsbTetheringOn:Z
    .end local v10           #isWifiApOn:Z
    .end local v12           #len$:I
    :cond_e
    :goto_5
    return-void

    .line 5238
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v5       #i$:I
    .restart local v6       #isBtTetheringOn:Z
    .restart local v7       #isDataConnected:Z
    .restart local v8       #isInWhiteList:Z
    .restart local v9       #isUsbTetheringOn:Z
    .restart local v10       #isWifiApOn:Z
    .restart local v12       #len$:I
    .restart local v13       #listIndex:I
    .restart local v15       #netType:I
    .restart local v16       #nt:Landroid/net/NetworkStateTracker;
    :cond_f
    const/4 v7, 0x1

    .line 5239
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mobile data connected! type = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/NetworkConfig;->type:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5269
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isBtTetheringOn:Z
    .end local v7           #isDataConnected:Z
    .end local v8           #isInWhiteList:Z
    .end local v9           #isUsbTetheringOn:Z
    .end local v10           #isWifiApOn:Z
    .end local v12           #len$:I
    .end local v13           #listIndex:I
    .end local v15           #netType:I
    .end local v16           #nt:Landroid/net/NetworkStateTracker;
    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v17

    .line 5258
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v5       #i$:I
    .restart local v6       #isBtTetheringOn:Z
    .restart local v7       #isDataConnected:Z
    .restart local v8       #isInWhiteList:Z
    .restart local v9       #isUsbTetheringOn:Z
    .restart local v10       #isWifiApOn:Z
    .restart local v12       #len$:I
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v19, "max_level"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    if-nez v4, :cond_11

    .line 5260
    sget-boolean v14, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 5263
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSavingI(Z)V
    invoke-static {v0, v14}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 5270
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isBtTetheringOn:Z
    .end local v7           #isDataConnected:Z
    .end local v8           #isInWhiteList:Z
    .end local v9           #isUsbTetheringOn:Z
    .end local v10           #isWifiApOn:Z
    .end local v12           #len$:I
    :cond_12
    const-string v17, "android.telephony.turnoff_DC"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 5271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 5272
    :try_start_6
    sget-boolean v17, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v17, :cond_13

    .line 5274
    const-string v17, "ConnectivityService"

    const-string v19, "turn off Data Connection!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;)V

    .line 5282
    :cond_13
    monitor-exit v18

    goto/16 :goto_5

    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v17
.end method
