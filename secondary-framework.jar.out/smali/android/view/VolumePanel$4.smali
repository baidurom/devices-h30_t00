.class Landroid/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x6

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v3, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 444
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v4, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->forceTimeout()V
    invoke-static {v3}, Landroid/view/VolumePanel;->access$300(Landroid/view/VolumePanel;)V

    goto :goto_0

    .line 450
    :cond_2
    const-string v3, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v3}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)V

    .line 453
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v4}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v4

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v3, v4}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;I)V

    goto :goto_0

    .line 454
    :cond_3
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 457
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 458
    .local v2, currentLayoutDirection:I
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 459
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 460
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 461
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v3}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)V

    .line 462
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v4, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v4}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v4

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v3, v4}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;I)V

    goto :goto_0
.end method
