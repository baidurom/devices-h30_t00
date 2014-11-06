.class Lcom/android/hwcamera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    .line 152
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 174
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/hwcamera/CameraManager$MsgObject;

    .line 175
    .local v3, msgObject:Lcom/android/hwcamera/CameraManager$MsgObject;
    iget-object v2, v3, Lcom/android/hwcamera/CameraManager$MsgObject;->mSig:Landroid/os/ConditionVariable;

    .line 176
    .local v2, mSig:Landroid/os/ConditionVariable;
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    if-nez v4, :cond_2

    .line 177
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 178
    :cond_1
    const/4 v2, 0x0

    .line 329
    :goto_0
    return-void

    .line 181
    :cond_2
    iget-object v4, v3, Lcom/android/hwcamera/CameraManager$MsgObject;->obj:Ljava/lang/Object;

    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 313
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid CameraProxy message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/RuntimeException;
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v5, :cond_3

    .line 318
    :try_start_1
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 322
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #setter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4, v8}, Lcom/android/hwcamera/CameraManager;->access$102(Lcom/android/hwcamera/CameraManager;Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 324
    :cond_3
    throw v0

    .line 185
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->release()V

    .line 186
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    const/4 v6, 0x0

    #setter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4, v6}, Lcom/android/hwcamera/CameraManager;->access$102(Lcom/android/hwcamera/CameraManager;Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 326
    :goto_2
    :pswitch_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 327
    :cond_4
    const/4 v2, 0x0

    .line 329
    goto :goto_0

    .line 190
    :pswitch_2
    :try_start_3
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    const/4 v6, 0x0

    #setter for: Lcom/android/hwcamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v4, v6}, Lcom/android/hwcamera/CameraManager;->access$202(Lcom/android/hwcamera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    :try_start_4
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 193
    :catch_1
    move-exception v1

    .line 194
    .local v1, ex:Ljava/io/IOException;
    :try_start_5
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #setter for: Lcom/android/hwcamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v4, v1}, Lcom/android/hwcamera/CameraManager;->access$202(Lcom/android/hwcamera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_2

    .line 199
    .end local v1           #ex:Ljava/io/IOException;
    :pswitch_3
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->unlock()V

    goto :goto_2

    .line 202
    :pswitch_4
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    iget-object v6, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v6}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/hwcamera/feature/ICamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    #setter for: Lcom/android/hwcamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4, v6}, Lcom/android/hwcamera/CameraManager;->access$302(Lcom/android/hwcamera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_2

    .line 206
    :pswitch_5
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->lock()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 211
    :pswitch_6
    :try_start_6
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/SurfaceTexture;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 212
    :catch_2
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_7
    :try_start_8
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/SurfaceHolder;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 220
    :catch_3
    move-exception v0

    .line 221
    .local v0, e:Ljava/io/IOException;
    :try_start_9
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_8
    :try_start_a
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->startPreview()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_2

    .line 229
    :catch_4
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v4

    new-instance v6, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;

    const/16 v7, 0x24

    invoke-direct {v6, v7}, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    goto/16 :goto_2

    .line 236
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_9
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->stopPreview()V

    goto/16 :goto_2

    .line 240
    :pswitch_a
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 245
    :pswitch_b
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->addCallbackBuffer([B)V

    goto/16 :goto_2

    .line 249
    :pswitch_c
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_2

    .line 253
    :pswitch_d
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->cancelAutoFocus()V

    goto/16 :goto_2

    .line 257
    :pswitch_e
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    iget-object v6, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v6}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/android/hwcamera/CameraManager;->setAutoFocusMoveCallback(Lcom/android/hwcamera/feature/ICamera;Ljava/lang/Object;)V
    invoke-static {v4, v6, v7}, Lcom/android/hwcamera/CameraManager;->access$400(Lcom/android/hwcamera/CameraManager;Lcom/android/hwcamera/feature/ICamera;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 261
    :pswitch_f
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v6}, Lcom/android/hwcamera/feature/ICamera;->setDisplayOrientation(I)V

    goto/16 :goto_2

    .line 265
    :pswitch_10
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_2

    .line 270
    :pswitch_11
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_2

    .line 274
    :pswitch_12
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->startFaceDetection()V

    goto/16 :goto_2

    .line 278
    :pswitch_13
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/hwcamera/feature/ICamera;->stopFaceDetection()V

    goto/16 :goto_2

    .line 282
    :pswitch_14
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$ErrorCallback;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_2

    .line 286
    :pswitch_15
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$Parameters;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 290
    :pswitch_16
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$Parameters;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 294
    :pswitch_17
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 298
    :pswitch_18
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v6

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_3
    invoke-interface {v6, v4}, Lcom/android/hwcamera/feature/ICamera;->enableShutterSound(Z)V

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 306
    :pswitch_19
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v6}, Lcom/android/hwcamera/feature/ICamera;->setFaceOrientation(I)V

    goto/16 :goto_2

    .line 310
    :pswitch_1a
    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v4}, Lcom/android/hwcamera/CameraManager;->access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/hwcamera/feature/ICamera;->setShootMode(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 319
    .local v0, e:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v1

    .line 320
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "CameraManager"

    const-string v5, "Fail to release the camera."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_4
        :pswitch_16
        :pswitch_1
        :pswitch_7
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/hwcamera/CameraManager$CameraHandler;->this$0:Lcom/android/hwcamera/CameraManager;

    iget v3, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/hwcamera/CameraManager;->isNeedBlock(I)Z
    invoke-static {v2, v3}, Lcom/android/hwcamera/CameraManager;->access$000(Lcom/android/hwcamera/CameraManager;I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 159
    .local v0, mSig:Landroid/os/ConditionVariable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 160
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/android/hwcamera/CameraManager$MsgObject;->newInstance(Ljava/lang/Object;Landroid/os/ConditionVariable;)Lcom/android/hwcamera/CameraManager$MsgObject;

    move-result-object v2

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    .line 162
    .local v1, ret:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 163
    :cond_1
    return v1

    .line 158
    .end local v0           #mSig:Landroid/os/ConditionVariable;
    .end local v1           #ret:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
