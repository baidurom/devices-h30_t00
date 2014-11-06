.class Lcom/android/hwcamera/PhotoModule$8;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V
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
    .line 1820
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$8;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1823
    invoke-static {v1}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 1824
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$8;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1825
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$8;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$7200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreviewGestures;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$8;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$7200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreviewGestures;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 1826
    :cond_0
    return-void
.end method
