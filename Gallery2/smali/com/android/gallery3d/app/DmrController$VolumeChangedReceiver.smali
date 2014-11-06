.class Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DmrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmrController;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/DmrController;Lcom/android/gallery3d/app/DmrController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;-><init>(Lcom/android/gallery3d/app/DmrController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, type:I
    if-ne v1, v6, :cond_0

    .line 131
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 132
    .local v2, volume:I
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/gallery3d/app/DmrController;->access$000(Lcom/android/gallery3d/app/DmrController;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 133
    .local v0, maxVolume:I
    const-string v3, "AirSharing_Controller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  maxVolume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/gallery3d/app/DmrController;->access$000(Lcom/android/gallery3d/app/DmrController;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/DmrController;->access$100(Lcom/android/gallery3d/app/DmrController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/app/DmrController;->access$100(Lcom/android/gallery3d/app/DmrController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/gallery3d/app/DmrController;->access$100(Lcom/android/gallery3d/app/DmrController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 140
    .end local v0           #maxVolume:I
    .end local v1           #type:I
    .end local v2           #volume:I
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/app/DmrController;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/DmrController;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    return-void
.end method
