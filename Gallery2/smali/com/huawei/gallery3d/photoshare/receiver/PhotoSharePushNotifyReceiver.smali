.class public Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoSharePushNotifyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushNotifyReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getInvitePendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "loginAccount"
    .parameter "account"
    .parameter "sharePath"
    .parameter "displayName"
    .parameter "content"

    .prologue
    .line 149
    if-nez p2, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 151
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareInviteReceivedDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "loginAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "shareAccount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "dir"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "shareName"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "message"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-static {p4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getNotifyId(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method private getShowPhotoSharePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PHOTOSHARE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "context"
    .parameter "account"
    .parameter "folderName"
    .parameter "sharePath"
    .parameter "notificationKind"

    .prologue
    .line 73
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 78
    .local v11, notificationManager:Landroid/app/NotificationManager;
    packed-switch p5, :pswitch_data_0

    .line 125
    :pswitch_0
    const-string v0, "PushNotifyReceiver"

    const-string v1, "IN DEFAULT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v6, ""

    .line 127
    .local v6, content:Ljava/lang/String;
    const-string v12, ""

    .line 128
    .local v12, ticker_title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 132
    .local v8, contentIntent:Landroid/app/PendingIntent;
    :goto_0
    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v9, mBuilder:Landroid/app/Notification$Builder;
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 134
    const v0, 0x7f0202bf

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 135
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 136
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 138
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 139
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 140
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v9}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 143
    .local v7, bigText:Landroid/app/Notification$BigTextStyle;
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 144
    invoke-static/range {p4 .. p4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->getNotifyId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    return-void

    .line 80
    .end local v6           #content:Ljava/lang/String;
    .end local v7           #bigText:Landroid/app/Notification$BigTextStyle;
    .end local v8           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #mBuilder:Landroid/app/Notification$Builder;
    .end local v12           #ticker_title:Ljava/lang/String;
    :pswitch_1
    const v0, 0x7f0d0434

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 82
    .restart local v6       #content:Ljava/lang/String;
    const v0, 0x7f0d043a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 83
    .restart local v12       #ticker_title:Ljava/lang/String;
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v10

    .line 84
    .local v10, myAccount:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    const/4 v2, 0x0

    .line 85
    .local v2, loginAccount:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 86
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->getInvitePendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 88
    .restart local v8       #contentIntent:Landroid/app/PendingIntent;
    goto :goto_0

    .line 91
    .end local v2           #loginAccount:Ljava/lang/String;
    .end local v6           #content:Ljava/lang/String;
    .end local v8           #contentIntent:Landroid/app/PendingIntent;
    .end local v10           #myAccount:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    .end local v12           #ticker_title:Ljava/lang/String;
    :pswitch_2
    const-string v0, "PushNotifyReceiver"

    const-string v1, "IN PUSH_CONFIRM"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const v0, 0x7f0d0435

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .restart local v6       #content:Ljava/lang/String;
    const v0, 0x7f0d043b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 95
    .restart local v12       #ticker_title:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->getShowPhotoSharePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 96
    .restart local v8       #contentIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0

    .line 99
    .end local v6           #content:Ljava/lang/String;
    .end local v8           #contentIntent:Landroid/app/PendingIntent;
    .end local v12           #ticker_title:Ljava/lang/String;
    :pswitch_3
    const-string v0, "PushNotifyReceiver"

    const-string v1, "IN PUSH_REJECTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v0, 0x7f0d0436

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .restart local v6       #content:Ljava/lang/String;
    const v0, 0x7f0d043c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 103
    .restart local v12       #ticker_title:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->getShowPhotoSharePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 104
    .restart local v8       #contentIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0

    .line 107
    .end local v6           #content:Ljava/lang/String;
    .end local v8           #contentIntent:Landroid/app/PendingIntent;
    .end local v12           #ticker_title:Ljava/lang/String;
    :pswitch_4
    const-string v0, "PushNotifyReceiver"

    const-string v1, "IN PUSH_SHARE_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const v0, 0x7f0d0437

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .restart local v6       #content:Ljava/lang/String;
    const v0, 0x7f0d043d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 111
    .restart local v12       #ticker_title:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->getShowPhotoSharePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 112
    .restart local v8       #contentIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0

    .line 115
    .end local v6           #content:Ljava/lang/String;
    .end local v8           #contentIntent:Landroid/app/PendingIntent;
    .end local v12           #ticker_title:Ljava/lang/String;
    :pswitch_5
    if-nez p2, :cond_1

    .line 116
    const-string p2, ""

    .line 117
    :cond_1
    const v0, 0x7f0d0438

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .restart local v6       #content:Ljava/lang/String;
    const v0, 0x7f0d043e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 121
    .restart local v12       #ticker_title:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->getShowPhotoSharePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 122
    .restart local v8       #contentIntent:Landroid/app/PendingIntent;
    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x4

    const/4 v8, -0x1

    .line 30
    const-string v0, "actionID"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 31
    .local v6, cmdID:I
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "PushNotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive, cmdID is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    const-string v0, "shareAccount"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, shareAccount:Ljava/lang/String;
    const-string v0, "shareName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, folderName:Ljava/lang/String;
    const-string v0, "dir"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, sharePath:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 70
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    const/16 v5, 0x1389

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 44
    :pswitch_2
    const/16 v5, 0x138b

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    invoke-static {p1, v4, v8, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 50
    :pswitch_3
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v7

    .line 51
    .local v7, myAccount:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const/16 v5, 0x138a

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    invoke-static {p1, v4, v8, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 59
    .end local v7           #myAccount:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    :pswitch_4
    const/16 v5, 0x138d

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    invoke-static {p1, v4, v8, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 65
    :pswitch_5
    const/16 v5, 0x138e

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoSharePushNotifyReceiver;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
