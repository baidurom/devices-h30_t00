.class Lcom/android/hwcamera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/CameraActivity;->initThumbnailService()V
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
    .line 429
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 433
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->canGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I
    invoke-static {v0}, Lcom/android/hwcamera/CameraActivity;->access$000(Lcom/android/hwcamera/CameraActivity;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;

    #setter for: Lcom/android/hwcamera/CameraActivity;->mIsClickToGallery:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraActivity;->access$102(Lcom/android/hwcamera/CameraActivity;Z)Z

    .line 436
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getThumbnailService()Lcom/android/hwcamera/thumbnail/ThumbnailService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$2;->this$0:Lcom/android/hwcamera/CameraActivity;
    
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    #invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->gotoGallery()V

    .line 440
    :cond_0
    return-void
.end method
