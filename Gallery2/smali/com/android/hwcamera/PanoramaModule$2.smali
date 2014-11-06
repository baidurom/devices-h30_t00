.class Lcom/android/hwcamera/PanoramaModule$2;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


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
    .line 293
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$500(Lcom/android/hwcamera/PanoramaModule;)V

    .line 299
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/hwcamera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/hwcamera/PanoramaModule;->access$600(Lcom/android/hwcamera/PanoramaModule;Landroid/graphics/Bitmap;)V

    .line 300
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PanoramaModule;->saveHighResMosaic(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$500(Lcom/android/hwcamera/PanoramaModule;)V

    .line 304
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$000(Lcom/android/hwcamera/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$700(Lcom/android/hwcamera/PanoramaModule;)V

    .line 316
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$1200(Lcom/android/hwcamera/PanoramaModule;)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$1100(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/hwcamera/PanoramaModule;->access$800(Lcom/android/hwcamera/PanoramaModule;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/hwcamera/PanoramaModule;->access$900(Lcom/android/hwcamera/PanoramaModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$1000(Lcom/android/hwcamera/PanoramaModule;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/hwcamera/PanoramaModule$2$1;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/PanoramaModule$2$1;-><init>(Lcom/android/hwcamera/PanoramaModule$2;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 319
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$500(Lcom/android/hwcamera/PanoramaModule;)V

    .line 320
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$700(Lcom/android/hwcamera/PanoramaModule;)V

    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$1200(Lcom/android/hwcamera/PanoramaModule;)V

    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$2;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$1300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
