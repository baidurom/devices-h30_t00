.class public Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;
.super Ljava/lang/Object;
.source "ErrorSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadCastSender"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method private static getPackageInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendAccountError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hicloud.photosharesdk.account"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "actionID"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v1, "com.huawei.photoshare.permissions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 46
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "BroadCastSender"

    const-string v2, "sendAccountError,cmdid=1000"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static sendDirError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "dir"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hicloud.photosharesdk.dir"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, sendIntent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->getPackageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "actionID"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "dir"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "com.huawei.photoshare.permissions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 65
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "BroadCastSender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendDirError,cmdid=2000dir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static sendNetWorkError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hicloud.photosharesdk.network"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, sendIntent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->getPackageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "actionID"

    const/16 v2, 0xbb9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v1, "com.huawei.photoshare.permissions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 97
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "BroadCastSender"

    const-string v2, "sendNetWorkError,cmdid=3001"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public static sendNoSpaceError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hicloud.photosharesdk.dir"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, sendIntent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->getPackageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "actionID"

    const/16 v2, 0x7d1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v1, "com.huawei.photoshare.permissions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 81
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "BroadCastSender"

    const-string v2, "sendNoSpaceError,cmdid=2001"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static sendServerNoSpaceError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hicloud.photosharesdk.server"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, sendIntent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->getPackageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "actionID"

    const/16 v2, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "com.huawei.photoshare.permissions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 114
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "BroadCastSender"

    const-string v2, "sendServerNoSpaceError,cmdid=6000"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method
