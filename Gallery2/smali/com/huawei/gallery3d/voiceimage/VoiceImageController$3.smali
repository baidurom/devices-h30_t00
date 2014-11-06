.class Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;
.super Ljava/lang/Object;
.source "VoiceImageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 96
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z
    invoke-static {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$000(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #calls: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->setProgress()I
    invoke-static {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$400(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)I

    move-result v0

    .line 100
    .local v0, pos:I
    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$600(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$3;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mProgressChecker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$500(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v3, v0, 0x3e8

    rsub-int v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
