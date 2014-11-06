.class Lcom/android/hwcamera/PhotoModule$21;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->processUIforColorEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 5063
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5300(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/ColorEffect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5067
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    new-instance v1, Lcom/android/hwcamera/ui/ColorEffect;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mOrientation:I
    invoke-static {v4}, Lcom/android/hwcamera/PhotoModule;->access$7600(Lcom/android/hwcamera/PhotoModule;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/hwcamera/ui/ColorEffect;-><init>(Lcom/android/hwcamera/CameraActivity;Ljava/util/List;I)V

    #setter for: Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;
    invoke-static {v0, v1}, Lcom/android/hwcamera/PhotoModule;->access$5302(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/ui/ColorEffect;

    .line 5071
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5300(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/ColorEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$21;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ColorEffect;->show(Z)V

    .line 5074
    return-void
.end method
