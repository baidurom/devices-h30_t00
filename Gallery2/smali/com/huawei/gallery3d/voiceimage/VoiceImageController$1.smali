.class Lcom/huawei/gallery3d/voiceimage/VoiceImageController$1;
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
    .line 77
    iput-object p1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$1;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$1;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$000(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$1;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #calls: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->startAnimation()V
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$100(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V

    goto :goto_0
.end method
