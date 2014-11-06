.class Lcom/android/hwcamera/PhotoModule$6;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V
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
    .line 1410
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$6;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$6;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/indicator/FaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$6;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/indicator/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->clear()V

    .line 1417
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$6;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/indicator/FaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->setVisibility(I)V

    .line 1420
    :cond_0
    return-void
.end method
