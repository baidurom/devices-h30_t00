.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4267
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4267
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4270
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 4274
    .local v10, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4275
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 4278
    .local v22, dockState:I
    packed-switch v22, :pswitch_data_0

    .line 4293
    const/16 v19, 0x0

    .line 4297
    .local v19, config:I
    :goto_0
    const/4 v3, 0x3

    move/from16 v0, v22

    if-eq v0, v3, :cond_1

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 4300
    :cond_0
    const/4 v3, 0x3

    move/from16 v0, v19

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4302
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v22

    #setter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;I)I

    .line 4501
    .end local v19           #config:I
    .end local v22           #dockState:I
    :cond_2
    :goto_1
    return-void

    .line 4280
    .restart local v22       #dockState:I
    :pswitch_0
    const/16 v19, 0x7

    .line 4281
    .restart local v19       #config:I
    goto :goto_0

    .line 4283
    .end local v19           #config:I
    :pswitch_1
    const/16 v19, 0x6

    .line 4284
    .restart local v19       #config:I
    goto :goto_0

    .line 4286
    .end local v19           #config:I
    :pswitch_2
    const/16 v19, 0x8

    .line 4287
    .restart local v19       #config:I
    goto :goto_0

    .line 4289
    .end local v19           #config:I
    :pswitch_3
    const/16 v19, 0x9

    .line 4290
    .restart local v19       #config:I
    goto :goto_0

    .line 4303
    .end local v19           #config:I
    .end local v22           #dockState:I
    :cond_3
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4304
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 4306
    .local v27, state:I
    const/16 v21, 0x10

    .line 4307
    .local v21, device:I
    const/4 v12, 0x0

    .line 4309
    .local v12, address:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 4310
    .local v17, btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v17, :cond_2

    .line 4314
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 4315
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v16

    .line 4316
    .local v16, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v16, :cond_4

    .line 4317
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 4328
    :cond_4
    :goto_2
    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4329
    const-string v12, ""

    .line 4332
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, v27

    if-ne v0, v3, :cond_6

    const/16 v20, 0x1

    .line 4333
    .local v20, connected:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v20

    move/from16 v1, v21

    #calls: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v12}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4334
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 4335
    if-eqz v20, :cond_7

    .line 4336
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v17

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4338
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0x1e

    const-wide/16 v6, 0x0

    #calls: Landroid/media/AudioService;->sendMsgForSecurity(IJ)V
    invoke-static {v3, v5, v6, v7}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;IJ)V

    .line 4347
    :goto_4
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4320
    .end local v20           #connected:Z
    :sswitch_0
    const/16 v21, 0x20

    .line 4321
    goto :goto_2

    .line 4323
    :sswitch_1
    const/16 v21, 0x40

    goto :goto_2

    .line 4332
    :cond_6
    const/16 v20, 0x0

    goto :goto_3

    .line 4341
    .restart local v20       #connected:Z
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4342
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)V

    .line 4344
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0x1f

    const-wide/16 v6, 0x0

    #calls: Landroid/media/AudioService;->sendMsgForSecurity(IJ)V
    invoke-static {v3, v5, v6, v7}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 4349
    .end local v12           #address:Ljava/lang/String;
    .end local v16           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v17           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v20           #connected:Z
    .end local v21           #device:I
    .end local v27           #state:I
    :cond_8
    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4351
    :cond_9
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 4352
    .restart local v27       #state:I
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 4353
    .local v13, alsaCard:I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 4354
    .local v14, alsaDevice:I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_a

    const/4 v3, -0x1

    if-ne v14, v3, :cond_a

    const-string v25, ""

    .line 4356
    .local v25, params:Ljava/lang/String;
    :goto_5
    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v21, 0x2000

    .line 4358
    .restart local v21       #device:I
    :goto_6
    const-string v4, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast Receiver: Got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "ACTION_USB_AUDIO_ACCESSORY_PLUG"

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", card: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", device: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v21

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 4354
    .end local v21           #device:I
    .end local v25           #params:Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto :goto_5

    .line 4356
    .restart local v25       #params:Ljava/lang/String;
    :cond_b
    const/16 v21, 0x4000

    goto :goto_6

    .line 4358
    .restart local v21       #device:I
    :cond_c
    const-string v3, "ACTION_USB_AUDIO_DEVICE_PLUG"

    goto :goto_7

    .line 4363
    .end local v13           #alsaCard:I
    .end local v14           #alsaDevice:I
    .end local v21           #device:I
    .end local v25           #params:Ljava/lang/String;
    .end local v27           #state:I
    :cond_d
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4364
    const/4 v15, 0x0

    .line 4365
    .local v15, broadcast:Z
    const/16 v26, -0x1

    .line 4366
    .local v26, scoAudioState:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 4367
    :try_start_2
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 4369
    .local v18, btState:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_f

    .line 4373
    :cond_e
    const/4 v15, 0x1

    .line 4375
    :cond_f
    packed-switch v18, :pswitch_data_1

    .line 4403
    :cond_10
    :goto_8
    const/4 v15, 0x0

    .line 4406
    :goto_9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4407
    if-eqz v15, :cond_2

    .line 4408
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v26

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;I)V

    .line 4411
    new-instance v23, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4412
    .local v23, newIntent:Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4413
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v23

    #calls: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4377
    .end local v23           #newIntent:Landroid/content/Intent;
    :pswitch_4
    const/16 v26, 0x1

    .line 4378
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_11

    .line 4381
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I

    .line 4384
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0x1e

    const-wide/16 v6, 0x0

    #calls: Landroid/media/AudioService;->sendMsgForSecurity(IJ)V
    invoke-static {v3, v5, v6, v7}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;IJ)V

    goto :goto_9

    .line 4406
    .end local v18           #btState:I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 4388
    .restart local v18       #btState:I
    :pswitch_5
    const/16 v26, 0x0

    .line 4389
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I

    .line 4390
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 4392
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v5, 0x1f

    const-wide/16 v6, 0x0

    #calls: Landroid/media/AudioService;->sendMsgForSecurity(IJ)V
    invoke-static {v3, v5, v6, v7}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;IJ)V

    goto/16 :goto_9

    .line 4396
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_10

    .line 4399
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_8

    .line 4415
    .end local v15           #broadcast:Z
    .end local v18           #btState:I
    .end local v26           #scoAudioState:I
    :cond_12
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4416
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9702(Landroid/media/AudioService;Z)Z

    .line 4417
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4420
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mLimitedVolume:I
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)I

    move-result v3

    if-eqz v3, :cond_13

    .line 4421
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->setVolumeToDefault()V
    invoke-static {v3}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;)V

    .line 4425
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4, v3}, Landroid/media/AudioService;->access$9802(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 4427
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9902(Landroid/media/AudioService;I)I

    .line 4428
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)V

    .line 4429
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v3}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Z

    .line 4432
    new-instance v23, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4433
    .restart local v23       #newIntent:Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4435
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v23

    #calls: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;Landroid/content/Intent;)V

    .line 4437
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 4438
    .local v11, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v11, :cond_14

    .line 4439
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v4}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v11, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 4443
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x1b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7530

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 4450
    .end local v11           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v23           #newIntent:Landroid/content/Intent;
    :cond_15
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4451
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4453
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v24

    .line 4454
    .local v24, packageName:Ljava/lang/String;
    if-eqz v24, :cond_2

    .line 4455
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v24

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4458
    .end local v24           #packageName:Ljava/lang/String;
    :cond_16
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4459
    const-string/jumbo v3, "screen_state=on"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4460
    :cond_17
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4461
    const-string/jumbo v3, "screen_state=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4462
    :cond_18
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4463
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    #calls: Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$10200(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 4464
    :cond_19
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4466
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4474
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->discardAudioFocusOwner()V
    invoke-static {v3}, Landroid/media/AudioService;->access$10300(Landroid/media/AudioService;)V

    .line 4477
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #calls: Landroid/media/AudioService;->readAudioSettings(Z)V
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$10400(Landroid/media/AudioService;Z)V

    .line 4479
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xe

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v8}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 4486
    :cond_1a
    const-string v3, "com.android.huawei.ENABLE_AUDIO_SAFECHECK"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4487
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    .line 4488
    .local v28, switchState:Z
    const-string v4, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the audio safe check is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v28, :cond_1b

    const-string v3, "enable!"

    :goto_a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v28

    #calls: Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$10500(Landroid/media/AudioService;Z)V

    goto/16 :goto_1

    .line 4488
    :cond_1b
    const-string v3, "disable!"

    goto :goto_a

    .line 4493
    .end local v28           #switchState:Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mDialogAction:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AudioService;->access$10600(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4494
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/16 v4, 0x21

    const-wide/16 v5, 0x0

    #calls: Landroid/media/AudioService;->sendMsgForSecurity(IJ)V
    invoke-static {v3, v4, v5, v6}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;IJ)V

    goto/16 :goto_1

    .line 4495
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mDeleteNotification:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AudioService;->access$10700(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4496
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mDialogShowing:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mShowDialog:Z
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4102(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 4278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4317
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 4375
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
