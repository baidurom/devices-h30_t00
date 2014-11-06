.class public Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdCardBrocardcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoShareSdCardBrocardcastReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdCardBrocardcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdCardBrocardcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdCardBrocardcastReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isSupportPhotoShare()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    :cond_2
    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->initDirInfo(Landroid/content/Context;)V

    goto :goto_0
.end method
