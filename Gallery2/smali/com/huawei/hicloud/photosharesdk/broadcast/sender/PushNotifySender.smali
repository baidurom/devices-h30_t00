.class public Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;
.super Ljava/lang/Object;
.source "PushNotifySender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadCastSender"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPackageInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendNewInvite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "shareAccount"
    .parameter "shareNickName"
    .parameter "displayName"
    .parameter "sharePath"

    .prologue
    .line 49
    const/16 v5, 0x1389

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendOrderedBroad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method private static sendOrderedBroad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "nickName"
    .parameter "displayName"
    .parameter "sharePath"
    .parameter "cmdID"

    .prologue
    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.hicloud.photosharesdk.push"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, sendIntent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->getPackageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "actionID"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v2, "shareAccount"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v2, "shareNickName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "shareName"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "dir"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "com.huawei.photoshare.permissions"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v2, "sendpushNotify,cmdid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shareAccount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    const-string v3, "shareNickName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "shareName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dir"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "BroadCastSender"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static sendReceiverCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "nickName"
    .parameter "displayName"
    .parameter "sharePath"

    .prologue
    .line 92
    const/16 v5, 0x138c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendOrderedBroad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public static sendReceiverConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "nickName"
    .parameter "displayName"
    .parameter "sharePath"

    .prologue
    .line 78
    const/16 v5, 0x138b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendOrderedBroad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public static sendReceiverReject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "nickName"
    .parameter "displayName"
    .parameter "sharePath"

    .prologue
    .line 64
    const/16 v5, 0x138a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendOrderedBroad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public static sendShareFolderChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "nickName"
    .parameter "displayName"
    .parameter "sharePath"

    .prologue
    .line 121
    const/16 v5, 0x138e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendOrderedBroad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public static sendSharerCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "nickName"
    .parameter "displayName"
    .parameter "sharePath"

    .prologue
    .line 106
    const/16 v5, 0x138d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendOrderedBroad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    return-void
.end method
