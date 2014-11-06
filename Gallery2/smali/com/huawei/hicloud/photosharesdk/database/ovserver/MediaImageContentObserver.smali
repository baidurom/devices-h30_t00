.class public final Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;
.super Landroid/database/ContentObserver;
.source "MediaImageContentObserver.java"


# static fields
.field private static final DELAY_TIME:J = 0x7d0L

.field public static final IMAGE_OBSERVER_CHANGED:I = 0x0

.field private static final MsgCode:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaImageContentObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 26
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 27
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private handleChange()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->sendImageChangedMsg()Z

    .line 77
    return-void
.end method

.method private sendImageChangedMsg()Z
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPhotoStreamSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/ovserver/MediaImageContentObserver;->handleChange()V

    goto :goto_0
.end method
