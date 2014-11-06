.class Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;


# direct methods
.method private constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 185
    .local v1, wifiState:I
    packed-switch v1, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    .end local v1           #wifiState:I
    :cond_1
    return-void

    .line 187
    .restart local v1       #wifiState:I
    :pswitch_1
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "WIFI_STATE_ENABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$802(Z)Z

    .line 189
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 196
    :pswitch_2
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "WIFI_STATE_DISABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$802(Z)Z

    .line 198
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 203
    :cond_2
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "mDevProxy is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
