.class Lcom/android/hwcamera/PanoramaModule$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PanoramaModule;->init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$000(Lcom/android/hwcamera/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$100(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$200(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 258
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$100(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$300(Lcom/android/hwcamera/PanoramaModule;)I

    move-result v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$200(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$200(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicPreviewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->alignFrameSync()V

    .line 264
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$1;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$400(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
