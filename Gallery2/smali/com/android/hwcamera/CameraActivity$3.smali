.class Lcom/android/hwcamera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraActivity;
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
    .line 562
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$3;->this$0:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$3;->this$0:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity$3;->this$0:Lcom/android/hwcamera/CameraActivity;

    #getter for: Lcom/android/hwcamera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/CameraActivity;->access$500(Lcom/android/hwcamera/CameraActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 567
    return-void
.end method
