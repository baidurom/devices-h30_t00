.class Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;
.super Ljava/lang/Thread;
.source "VoicePhotoFeaturePictureCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->startVisualizerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MAX_AMPLITUDE:F = 32768.0f

.field private static final NUM:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public genVoiceRate()F
    .locals 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$400(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 271
    .local v0, ratio:F
    :goto_0
    return v0

    .line 270
    .end local v0           #ratio:F
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$400(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4700

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 239
    const-string v3, "UPDATE_VISUALIZERVIEW_THREAD"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->setName(Ljava/lang/String;)V

    .line 241
    const/16 v3, 0xb

    new-array v0, v3, [F

    .line 243
    .local v0, bytes:[F
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$400(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Landroid/media/MediaRecorder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 244
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z
    invoke-static {v3}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$500(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->genVoiceRate()F

    move-result v2

    .line 247
    .local v2, ratio:F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 260
    .end local v2           #ratio:F
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mIsRecording:Z
    invoke-static {v3}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$500(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 265
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;
    invoke-static {v3}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$200(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void

    .line 250
    .restart local v1       #i:I
    .restart local v2       #ratio:F
    :cond_2
    const-wide/16 v3, 0x14

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_2
    aput v2, v0, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v2           #ratio:F
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->mHandler:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;
    invoke-static {v3}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->access$200(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 252
    .restart local v2       #ratio:F
    :catch_0
    move-exception v3

    goto :goto_2
.end method
