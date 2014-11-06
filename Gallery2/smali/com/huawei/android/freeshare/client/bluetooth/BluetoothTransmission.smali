.class public Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;
.super Lcom/huawei/android/freeshare/client/Transmission;
.source "BluetoothTransmission.java"

# interfaces
.implements Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;,
        Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE_BLUETOOTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Freeshare_BluetoothTrasmit"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHandler:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegisted:Z

.field private mShouldCloseBluetooth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/huawei/android/freeshare/client/Transmission;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;

    invoke-direct {v0, p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;-><init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mHandler:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;

    .line 32
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;-><init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$BluetoothReceiver;)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiverRegisted:Z

    .line 38
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 39
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0, p0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->addMissionListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V

    .line 40
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    iget-object v1, p0, Lcom/huawei/android/freeshare/client/Transmission;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    invoke-virtual {v0, v1}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->setFileTransfer(Lcom/huawei/android/freeshare/client/transfer/FileTransfer;)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->handleBluetoothDeviceUp(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonDiscoverFinished()V

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonDiscoverStarted()V

    return-void
.end method

.method static synthetic access$3(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonEnable()V

    return-void
.end method

.method static synthetic access$4(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)Lcom/huawei/android/freeshare/client/device/DeviceManager;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->callonDisable()V

    return-void
.end method

.method private callonDisable()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->clearDevices()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mShouldCloseBluetooth:Z

    .line 388
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->cancelCloseBluetooth()V

    .line 389
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    invoke-interface {v0}, Lcom/huawei/android/freeshare/client/transfer/ActionListener;->onDisabled()V

    .line 392
    :cond_0
    return-void
.end method

.method private callonDiscoverFinished()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    invoke-interface {v0}, Lcom/huawei/android/freeshare/client/transfer/ActionListener;->onDiscoverFinished()V

    .line 371
    :cond_0
    return-void
.end method

.method private callonDiscoverStarted()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    invoke-interface {v0}, Lcom/huawei/android/freeshare/client/transfer/ActionListener;->onDiscoverStarted()V

    .line 377
    :cond_0
    return-void
.end method

.method private callonEnable()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    invoke-interface {v0}, Lcom/huawei/android/freeshare/client/transfer/ActionListener;->onEnabled()V

    .line 383
    :cond_0
    return-void
.end method

.method private cancelCloseBluetooth()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mHandler:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;->removeMessages(I)V

    .line 441
    return-void
.end method

.method private checBluetoothSharekPermission()Z
    .locals 9

    .prologue
    .line 230
    const/4 v6, 0x1

    .line 231
    .local v6, auth:Z
    const/4 v7, 0x0

    .line 233
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 243
    if-eqz v7, :cond_0

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_0
    :goto_0
    return v6

    .line 234
    :catch_0
    move-exception v8

    .line 235
    .local v8, e:Ljava/lang/SecurityException;
    const/4 v6, 0x0

    .line 236
    :try_start_1
    const-string v0, "Freeshare_BluetoothTrasmit"

    const-string v1, " can not read bluetooth database:SecurityException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v8}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    if-eqz v7, :cond_0

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    .end local v8           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 239
    .local v8, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 240
    :try_start_2
    const-string v0, "Freeshare_BluetoothTrasmit"

    const-string v1, " can not read bluetooth database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    if-eqz v7, :cond_0

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 242
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 243
    if-eqz v7, :cond_1

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    throw v0
.end method

.method private delayToCloseBluetooth()V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mHandler:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 445
    return-void
.end method

.method private filterDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "btDevice"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    if-nez p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v2

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 286
    .local v1, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 287
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_2

    .line 288
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 289
    goto :goto_0

    .line 292
    :cond_2
    if-eqz v0, :cond_0

    .line 293
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 294
    goto :goto_0
.end method

.method private handleBluetoothDeviceUp(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v3, "Freeshare_BluetoothTrasmit"

    const-string v4, "device == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->filterDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    const-string v3, "Freeshare_BluetoothTrasmit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not transfer device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, mac:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 354
    const-string v3, "Freeshare_BluetoothTrasmit"

    const-string v4, "handleBluetoothDeviceUp,device name == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_2
    if-nez v1, :cond_3

    .line 358
    const-string v3, "Freeshare_BluetoothTrasmit"

    const-string v4, "handleBluetoothDeviceUp,device mac == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_3
    const-string v3, "Freeshare_BluetoothTrasmit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "device up,name = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;

    invoke-direct {v0, v2, v1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v0, deviceInfo:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    invoke-virtual {v3, v0}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->addDevice(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V

    goto :goto_0
.end method

.method private registReceiver()V
    .locals 3

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiverRegisted:Z

    if-eqz v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiverRegisted:Z

    goto :goto_0
.end method

.method private unRegistReceiver()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiverRegisted:Z

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mReceiverRegisted:Z

    goto :goto_0
.end method


# virtual methods
.method public cancelDiscover()Z
    .locals 2

    .prologue
    .line 114
    const-string v0, "Freeshare_BluetoothTrasmit"

    const-string v1, "cancelDiscover "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mShouldCloseBluetooth:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 173
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connect(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)Z
    .locals 1
    .parameter "deviceInfo"

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "Freeshare_BluetoothTrasmit"

    const-string v1, " BluetoothTransmission destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->unRegistReceiver()V

    .line 88
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->delayToCloseBluetooth()V

    .line 92
    :cond_1
    invoke-super {p0}, Lcom/huawei/android/freeshare/client/Transmission;->destroy()Z

    move-result v0

    return v0
.end method

.method public discover()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    const-string v1, "Freeshare_BluetoothTrasmit"

    const-string v2, "discover "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->cancelDiscover()Z

    .line 107
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->clearDevices()V

    .line 109
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    goto :goto_0
.end method

.method protected getFileTransfer()Lcom/huawei/android/freeshare/client/transfer/FileTransfer;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    iget-object v1, p0, Lcom/huawei/android/freeshare/client/Transmission;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    const-string v0, "Freeshare_BluetoothTrasmit"

    const-string v1, "getLocalName"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 219
    const-string v0, ""

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 396
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mHandler:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mShouldCloseBluetooth:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mShouldCloseBluetooth:Z

    .line 401
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 402
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->destroy()Z

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public init()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    const-string v1, "Freeshare_BluetoothTrasmit"

    const-string v2, " BluetoothTransmission init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->checBluetoothSharekPermission()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->registReceiver()V

    .line 55
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->init()Z

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->cancelCloseBluetooth()V

    .line 59
    invoke-super {p0}, Lcom/huawei/android/freeshare/client/Transmission;->init()Z

    move-result v0

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 2

    .prologue
    .line 126
    const-string v0, "Freeshare_BluetoothTrasmit"

    const-string v1, "isDiscoverin "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 210
    const-string v0, "Freeshare_BluetoothTrasmit"

    const-string v1, "is Enalbe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->isOpened()Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onProgressUpdate(Ljava/lang/String;I)V
    .locals 0
    .parameter "uri"
    .parameter "progress"

    .prologue
    .line 429
    return-void
.end method

.method public onTransferFinish(Ljava/lang/String;Z)V
    .locals 1
    .parameter "uri"
    .parameter "success"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mShouldCloseBluetooth:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->delayToCloseBluetooth()V

    .line 437
    :cond_0
    return-void
.end method

.method public open()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 148
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 153
    .local v0, state:I
    const/16 v3, 0xc

    if-eq v3, v0, :cond_2

    const/16 v3, 0xb

    if-ne v3, v0, :cond_3

    :cond_2
    move v1, v2

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iput-boolean v2, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mShouldCloseBluetooth:Z

    move v1, v2

    .line 159
    goto :goto_0
.end method

.method public setEnabled(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 135
    const-string v1, "Freeshare_BluetoothTrasmit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnabled :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 137
    const-string v1, "Freeshare_BluetoothTrasmit"

    const-string v2, "mBluetoothAdapter == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 141
    .local v0, res:Z
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->open()Z

    move-result v0

    .line 142
    :goto_1
    const-string v1, "Freeshare_BluetoothTrasmit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEnabled res="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->close()Z

    move-result v0

    goto :goto_1
.end method
