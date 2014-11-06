.class Lcom/android/gallery3d/app/MovieActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 435
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieActivity;->access$600(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    const-string v3, "MovieActivity"

    const-string v4, "Headset Plug/Unplug , but the activity is not resume!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 442
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 443
    const/4 v2, -0x1

    .line 444
    .local v2, state:I
    const-string v3, "state"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 445
    if-ne v2, v4, :cond_3

    .line 449
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setSpeakermediaOn(Z)V

    .line 454
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mHandSetPlug:Z
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/MovieActivity;->access$802(Lcom/android/gallery3d/app/MovieActivity;Z)Z

    .line 455
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/MovieActivity;->access$902(Lcom/android/gallery3d/app/MovieActivity;Z)Z

    .line 457
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 458
    :cond_3
    if-nez v2, :cond_0

    .line 460
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #setter for: Lcom/android/gallery3d/app/MovieActivity;->mHandSetPlug:Z
    invoke-static {v3, v5}, Lcom/android/gallery3d/app/MovieActivity;->access$802(Lcom/android/gallery3d/app/MovieActivity;Z)Z

    .line 464
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 465
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieActivity;->access$700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setSpeakermediaOn(Z)V

    .line 470
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$6;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
