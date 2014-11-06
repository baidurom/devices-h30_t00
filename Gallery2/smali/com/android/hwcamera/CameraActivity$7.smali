.class Lcom/android/hwcamera/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/CameraActivity;->onStorageStateChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$7;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$7;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$7;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isExtalCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->refreshGalleryPictures(Z)V

    .line 1428
    return-void

    .line 1427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
