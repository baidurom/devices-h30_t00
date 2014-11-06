.class Lcom/android/hwcamera/CameraActivity$8;
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

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$8;->this$0:Lcom/android/hwcamera/CameraActivity;

    iput-object p2, p0, Lcom/android/hwcamera/CameraActivity$8;->val$action:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$8;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$8;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$8;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$8;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;
    invoke-static {v0}, Lcom/android/hwcamera/CameraActivity;->access$700(Lcom/android/hwcamera/CameraActivity;)Lcom/android/hwcamera/storage/StorageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/storage/StorageService;->isActualSaveToSdCard()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$8;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1443
    :goto_0
    return-void

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$8;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->updateThumbnailUncached()V

    goto :goto_0
.end method
