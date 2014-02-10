.class Lcom/mediatek/op/wifi/DefaultWifiFwkExt$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultWifiFwkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/wifi/DefaultWifiFwkExt;


# direct methods
.method constructor <init>(Lcom/mediatek/op/wifi/DefaultWifiFwkExt;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/op/wifi/DefaultWifiFwkExt$1;->this$0:Lcom/mediatek/op/wifi/DefaultWifiFwkExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, action:Ljava/lang/String;
    :goto_0
    const-string v1, "DefaultWifiFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/mediatek/op/wifi/DefaultWifiFwkExt$1;->this$0:Lcom/mediatek/op/wifi/DefaultWifiFwkExt;

    #setter for: Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->mIsScreenOff:Z
    invoke-static {v1, v4}, Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->access$002(Lcom/mediatek/op/wifi/DefaultWifiFwkExt;Z)Z

    .line 107
    iget-object v1, p0, Lcom/mediatek/op/wifi/DefaultWifiFwkExt$1;->this$0:Lcom/mediatek/op/wifi/DefaultWifiFwkExt;

    #setter for: Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->mIsDeviceIdle:Z
    invoke-static {v1, v4}, Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->access$102(Lcom/mediatek/op/wifi/DefaultWifiFwkExt;Z)Z

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 103
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 108
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/mediatek/op/wifi/DefaultWifiFwkExt$1;->this$0:Lcom/mediatek/op/wifi/DefaultWifiFwkExt;

    #setter for: Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->mIsScreenOff:Z
    invoke-static {v1, v5}, Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->access$002(Lcom/mediatek/op/wifi/DefaultWifiFwkExt;Z)Z

    goto :goto_1

    .line 110
    :cond_3
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/mediatek/op/wifi/DefaultWifiFwkExt$1;->this$0:Lcom/mediatek/op/wifi/DefaultWifiFwkExt;

    #setter for: Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->mIsDeviceIdle:Z
    invoke-static {v1, v5}, Lcom/mediatek/op/wifi/DefaultWifiFwkExt;->access$102(Lcom/mediatek/op/wifi/DefaultWifiFwkExt;Z)Z

    goto :goto_1
.end method
