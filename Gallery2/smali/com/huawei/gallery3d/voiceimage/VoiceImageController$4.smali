.class Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;
.super Ljava/lang/Object;
.source "VoiceImageController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/voiceimage/VoiceImageController;-><init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;Landroid/content/Context;Landroid/widget/RelativeLayout;)V
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
    .line 120
    iput-object p1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    const/4 v1, 0x0

    #setter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$002(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;Z)Z

    .line 124
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$700(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 126
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #calls: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stopAnimation()V
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$800(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V

    .line 127
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #calls: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->setDuration()V
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$900(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V

    .line 129
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$4;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #calls: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->updateVoicePlayer()Z
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$1000(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Z

    .line 130
    return-void
.end method
