.class Landroid/bluetooth/BluetoothProfileState$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "BluetoothProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;-><init>(Landroid/bluetooth/BluetoothProfileState;)V

    return-void
.end method

.method private dispatchMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 157
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 159
    .local v3, deviceProfileMgr:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 162
    .local v0, cmd:I
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchMessage(): Cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPendingDevice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Landroid/bluetooth/BluetoothProfileState;->access$400(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deviceProfileMgr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Landroid/bluetooth/BluetoothProfileState;->access$400(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Landroid/bluetooth/BluetoothProfileState;->access$400(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    :cond_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    #setter for: Landroid/bluetooth/BluetoothProfileState;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothProfileState;->access$402(Landroid/bluetooth/BluetoothProfileState;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 167
    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 170
    const/16 v5, 0x34

    if-ne v5, v0, :cond_1

    .line 171
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-static {v5}, Landroid/bluetooth/BluetoothProfileState;->access$508(Landroid/bluetooth/BluetoothProfileState;)I

    .line 172
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchMessage(): DISCONNECT_A2DP_OUTGOING message sent to BluetoothDeviceProfileState, count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mCounter:I
    invoke-static {v7}, Landroid/bluetooth/BluetoothProfileState;->access$500(Landroid/bluetooth/BluetoothProfileState;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mCounter:I
    invoke-static {v5}, Landroid/bluetooth/BluetoothProfileState;->access$500(Landroid/bluetooth/BluetoothProfileState;)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 175
    new-instance v1, Ljava/io/CharArrayWriter;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 176
    .local v1, cw:Ljava/io/CharArrayWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 177
    .local v4, pw:Ljava/io/PrintWriter;
    invoke-virtual {v3, v8, v4, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 178
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump BluetoothDeviceProfileState Info = \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V

    .line 190
    .end local v1           #cw:Ljava/io/CharArrayWriter;
    .end local v4           #pw:Ljava/io/PrintWriter;
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchMessage(): Message deferred = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V

    .line 185
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 186
    .local v2, deferMsg:Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 187
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #calls: Landroid/bluetooth/BluetoothProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, v2}, Landroid/bluetooth/BluetoothProfileState;->access$1100(Landroid/bluetooth/BluetoothProfileState;Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering PendingCommandState State: Profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mProfile:I
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfileState;->access$200(Landroid/bluetooth/BluetoothProfileState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Instance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileState;->access$300(Landroid/bluetooth/BluetoothProfileState;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #calls: Landroid/bluetooth/BluetoothProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileState;->access$800(Landroid/bluetooth/BluetoothProfileState;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->dispatchMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->this$0:Landroid/bluetooth/BluetoothProfileState;

    #getter for: Landroid/bluetooth/BluetoothProfileState;->mStableState:Landroid/bluetooth/BluetoothProfileState$StableState;
    invoke-static {v1}, Landroid/bluetooth/BluetoothProfileState;->access$900(Landroid/bluetooth/BluetoothProfileState;)Landroid/bluetooth/BluetoothProfileState$StableState;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothProfileState;->access$1000(Landroid/bluetooth/BluetoothProfileState;Lcom/android/internal/util/IState;)V

    .line 153
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileState$PendingCommandState;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
