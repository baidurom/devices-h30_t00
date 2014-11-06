.class Lcom/android/server/NotificationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 564
    .local v10, action:Ljava/lang/String;
    const/16 v21, 0x0

    .line 565
    .local v21, queryRestart:Z
    const/16 v18, 0x0

    .line 567
    .local v18, packageChanged:Z
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 572
    :cond_0
    const/16 v20, 0x0

    .line 573
    .local v20, pkgList:[Ljava/lang/String;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 607
    :goto_0
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    array-length v2, v0

    if-lez v2, :cond_3

    .line 608
    move-object/from16 v11, v20

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    aget-object v3, v11, v14

    .line 609
    .local v3, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v21, :cond_6

    const/4 v6, 0x1

    :goto_2
    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 608
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 575
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_1
    if-eqz v21, :cond_2

    .line 576
    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 579
    .local v24, uri:Landroid/net/Uri;
    if-nez v24, :cond_4

    .line 682
    .end local v20           #pkgList:[Ljava/lang/String;
    .end local v24           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void

    .line 582
    .restart local v20       #pkgList:[Ljava/lang/String;
    .restart local v24       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 583
    .restart local v3       #pkgName:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 586
    if-eqz v18, :cond_5

    .line 590
    const/4 v13, 0x0

    .line 592
    .local v13, enabled:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 600
    const/4 v2, 0x1

    if-eq v13, v2, :cond_3

    if-eqz v13, :cond_3

    .line 605
    .end local v13           #enabled:I
    :cond_5
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .end local v20           #pkgList:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v3, v20, v2

    .restart local v20       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .line 594
    .restart local v13       #enabled:I
    :catch_0
    move-exception v15

    .line 596
    .local v15, ignored:Ljava/lang/IllegalArgumentException;
    const-string v2, "NotificationService"

    const-string v4, "Unknown package failed to install"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 609
    .end local v13           #enabled:I
    .end local v15           #ignored:Ljava/lang/IllegalArgumentException;
    .end local v24           #uri:Landroid/net/Uri;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v17       #len$:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 613
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v20           #pkgList:[Ljava/lang/String;
    :cond_7
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 620
    :cond_8
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 625
    :cond_9
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 626
    const-string v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 627
    .local v22, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x1

    :goto_4
    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v4, v2}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 627
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 629
    .end local v22           #state:Ljava/lang/String;
    :cond_c
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 630
    const-string v2, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 631
    .local v9, userHandle:I
    if-ltz v9, :cond_3

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_3

    .line 634
    .end local v9           #userHandle:I
    :cond_d
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_3

    .line 642
    :cond_e
    const-string v2, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mDmLock:Z
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_3

    .line 645
    :cond_f
    const-string v2, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mDmLock:Z
    invoke-static {v2, v4}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_3

    .line 647
    :cond_10
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 657
    :cond_11
    const-string v2, "com.huawei.permissionmanager.notification.allow"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 658
    const-string v2, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 659
    .local v19, pkg:Ljava/lang/String;
    const-string v2, "uid"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 660
    .local v23, uid:I
    if-eqz v19, :cond_3

    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_3

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v19

    move/from16 v1, v23

    #calls: Lcom/android/server/NotificationManagerService;->recoverNotificationContentView(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 666
    .end local v19           #pkg:Ljava/lang/String;
    .end local v23           #uid:I
    :cond_12
    const-string v2, "com.huawei.permissionmanager.notification.refuse"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 667
    const-string v2, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 668
    .restart local v19       #pkg:Ljava/lang/String;
    const-string v2, "uid"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 669
    .restart local v23       #uid:I
    if-eqz v19, :cond_3

    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_3

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOriginContentViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 671
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOriginContentViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 672
    .local v16, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;>;"
    :cond_13
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 673
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;

    .line 674
    .local v12, cvr:Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;
    iget-object v2, v12, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, v12, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->uid:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_13

    .line 675
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 678
    .end local v12           #cvr:Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;
    .end local v16           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v16       #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;>;"
    :cond_14
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method
