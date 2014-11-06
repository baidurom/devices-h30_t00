.class Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/PanoramaModule;Lcom/android/hwcamera/PanoramaModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1249
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1249
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$400(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 1253
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$400(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$400(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1260
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 1261
    const/4 v0, 0x0

    return-object v0

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1249
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1266
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/hwcamera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v2, v3}, Lcom/android/hwcamera/PanoramaModule;->access$3102(Lcom/android/hwcamera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1267
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;
    invoke-static {v2}, Lcom/android/hwcamera/PanoramaModule;->access$1100(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/RotateDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/RotateDialogController;->dismissDialog()V

    .line 1268
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v2}, Lcom/android/hwcamera/PanoramaModule;->access$100(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1269
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V
    invoke-static {v2}, Lcom/android/hwcamera/PanoramaModule;->access$3200(Lcom/android/hwcamera/PanoramaModule;)V

    .line 1270
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;
    invoke-static {v2}, Lcom/android/hwcamera/PanoramaModule;->access$3300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/ui/LayoutNotifyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/LayoutNotifyView;->getWidth()I

    move-result v1

    .line 1271
    .local v1, w:I
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;
    invoke-static {v2}, Lcom/android/hwcamera/PanoramaModule;->access$3300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/ui/LayoutNotifyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/LayoutNotifyView;->getHeight()I

    move-result v0

    .line 1272
    .local v0, h:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1273
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->configMosaicPreview(II)V
    invoke-static {v2, v1, v0}, Lcom/android/hwcamera/PanoramaModule;->access$3400(Lcom/android/hwcamera/PanoramaModule;II)V

    .line 1275
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->resetToPreview()V
    invoke-static {v2}, Lcom/android/hwcamera/PanoramaModule;->access$700(Lcom/android/hwcamera/PanoramaModule;)V

    .line 1276
    return-void
.end method
