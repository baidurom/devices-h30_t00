.class Lcom/mediatek/audioprofile/AudioProfileService$6;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, action:Ljava/lang/String;
    const-string v10, "AudioProfileService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mUpgradeReceiver start update profile: action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v10, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 479
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 481
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 482
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 483
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 484
    .local v6, profileKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 486
    .local v7, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v10, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v10, :cond_1

    .line 487
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1300()I

    move-result v12

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 490
    :cond_1
    iget-object v10, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v10, :cond_2

    .line 491
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500()I

    move-result v12

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 495
    :cond_2
    iget-object v10, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-nez v10, :cond_0

    .line 496
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1600()I

    move-result v12

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 500
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #profileKey:Ljava/lang/String;
    .end local v7           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1300()I

    move-result v12

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_1
    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z
    invoke-static {v11, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1002(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 507
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v9

    .line 509
    .local v9, volumePath:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 512
    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 514
    .restart local v6       #profileKey:Ljava/lang/String;
    const-string v10, "AudioProfileService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mUpgradeReceive deal case: profileKey = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v5, 0x0

    .line 516
    .local v5, newUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v10, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    .line 518
    .restart local v7       #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v10, 0x1

    invoke-static {v6, v10}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, dataKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v11, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    const/4 v12, 0x1

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUri(Ljava/lang/String;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v10, v2, v11, v12, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1800(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 522
    if-eqz v5, :cond_6

    .line 523
    iput-object v5, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 524
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v11, 0x1

    invoke-virtual {v10, v6, v11, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 525
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 527
    :try_start_2
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 528
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "is_ringtone"

    const-string v11, "1"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 537
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_6
    :goto_3
    const/16 v10, 0x8

    invoke-static {v6, v10}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v11, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    const/16 v12, 0x8

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUri(Ljava/lang/String;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v10, v2, v11, v12, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1800(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 541
    if-eqz v5, :cond_7

    .line 542
    iput-object v5, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 543
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v11, 0x8

    invoke-virtual {v10, v6, v11, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 544
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 546
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 547
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v10, "is_ringtone"

    const-string v11, "1"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 556
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_4
    const/4 v10, 0x2

    invoke-static {v6, v10}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v11, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    const/4 v12, 0x2

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUri(Ljava/lang/String;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v10, v2, v11, v12, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1800(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 560
    if-eqz v5, :cond_5

    .line 561
    iput-object v5, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 562
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v11, 0x2

    invoke-virtual {v10, v6, v11, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 563
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 565
    :try_start_4
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 566
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v10, "is_notification"

    const-string v11, "1"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 568
    .end local v8           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 569
    .local v3, ex:Ljava/lang/UnsupportedOperationException;
    const-string v10, "AudioProfileService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t set ringtone flag for id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 503
    .end local v1           #allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #dataKey:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v5           #newUri:Landroid/net/Uri;
    .end local v6           #profileKey:Ljava/lang/String;
    .end local v7           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v9           #volumePath:[Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 530
    .restart local v1       #allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #dataKey:Ljava/lang/String;
    .restart local v5       #newUri:Landroid/net/Uri;
    .restart local v6       #profileKey:Ljava/lang/String;
    .restart local v7       #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v9       #volumePath:[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 531
    .restart local v3       #ex:Ljava/lang/UnsupportedOperationException;
    const-string v10, "AudioProfileService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t set ringtone flag for id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 549
    .end local v3           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v3

    .line 550
    .restart local v3       #ex:Ljava/lang/UnsupportedOperationException;
    const-string v10, "AudioProfileService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t set ringtone flag for id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 575
    .end local v2           #dataKey:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v5           #newUri:Landroid/net/Uri;
    .end local v6           #profileKey:Ljava/lang/String;
    .end local v7           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_9
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v11, 0x1

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v10, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1900(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 576
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v11, 0x8

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v10, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1900(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 577
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v11, 0x2

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v10, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1900(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 579
    .end local v1           #allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #volumePath:[Ljava/lang/String;
    :cond_a
    const-string v10, "AudioProfileService"

    const-string v11, "mUpgradeReceiver<<<"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method
