.class Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTransmission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;


# direct methods
.method private constructor <init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;-><init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 304
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 310
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->handleBluetoothDeviceUp(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v3, v1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->access$0(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;Landroid/bluetooth/BluetoothDevice;)V

    .line 333
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 313
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    const-string v3, "Freeshare_BluetoothTrasmit"

    const-string v4, "onDiscoverFinished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonDiscoverFinished()V
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->access$1(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V

    goto :goto_0

    .line 316
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 317
    const-string v3, "Freeshare_BluetoothTrasmit"

    const-string v4, "onDiscoverStarted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonDiscoverStarted()V
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->access$2(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V

    goto :goto_0

    .line 319
    :cond_3
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    .line 324
    const/high16 v4, -0x8000

    .line 323
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 325
    .local v2, state:I
    const-string v3, "Freeshare_BluetoothTrasmit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bluetooth state changed ,state = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v3, 0xc

    if-ne v3, v2, :cond_4

    .line 327
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonEnable()V
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->access$3(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V

    goto :goto_0

    .line 328
    :cond_4
    const/16 v3, 0xa

    if-ne v3, v2, :cond_0

    .line 329
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    #getter for: Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->access$4(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)Lcom/huawei/android/freeshare/client/device/DeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->clearDevices()V

    .line 330
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonDisable()V
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->access$5(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V

    goto :goto_0
.end method
