.class Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothOn"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter BluetoothOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$6800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/16 v8, 0x37

    const/4 v4, 0x0

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothOn process message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", message.obj = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 627
    const/4 v2, 0x1

    .line 628
    .local v2, retValue:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v2, v4

    .line 707
    .end local v2           #retValue:Z
    :cond_0
    :goto_0
    return v2

    .line 630
    .restart local v2       #retValue:Z
    :sswitch_0
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$6900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 632
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$1400(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 635
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->persistBluetoothState(Z)V

    .line 637
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 640
    :cond_2
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isApplicationStateChangeTrackerEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 641
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 642
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 648
    :cond_3
    :sswitch_2
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v8, v3, :cond_4

    .line 651
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistBluetoothSetting(I)V
    invoke-static {v3, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$2200(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 655
    :cond_4
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0xd

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v3, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 656
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;
    invoke-static {v5}, Landroid/server/BluetoothAdapterStateMachine;->access$4000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7200(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 657
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getAdapterConnectionState()I

    move-result v3

    if-eqz v3, :cond_6

    .line 659
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->disconnectDevices()V

    .line 660
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0x67

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v5, v6, v7}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    .line 668
    :goto_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v8, :cond_5

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 670
    :cond_5
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->allProcessesCallback(Z)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7300(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 672
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v8, :cond_7

    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, bSaveState:Z
    const-string v3, "Not AIRPLANE_MODE_ON, don\'t save state"

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 676
    .local v1, msg:Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Airplane mode on message: msg.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 677
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$7400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 663
    .end local v0           #bSaveState:Z
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 664
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0x69

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v5, v6, v7}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 680
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIRPLANE_MODE_ON, defer message: message.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$7500(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 688
    :sswitch_3
    const-string v3, "BluetoothAdapterStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothOn received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :sswitch_4
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v4, v5, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    .line 694
    :sswitch_5
    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v5, v4, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    .line 697
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v6, 0x6b

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 628
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_2
        0x38 -> :sswitch_3
        0x6b -> :sswitch_0
    .end sparse-switch
.end method
