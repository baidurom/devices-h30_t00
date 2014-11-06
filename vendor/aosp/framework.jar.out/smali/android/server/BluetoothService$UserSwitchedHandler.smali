.class Landroid/server/BluetoothService$UserSwitchedHandler;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 330
    iput-object p1, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    .line 331
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 332
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 336
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getState()I

    move-result v0

    .line 338
    .local v0, state:I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 342
    :pswitch_0
    const-string v2, "BluetoothService"

    const-string v3, "MESSAGE_USER_SWITCHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-ne v0, v6, :cond_1

    .line 346
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/server/BluetoothService$UserSwitchedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 347
    .local v1, userMsg:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 350
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v1, v3, v4}, Landroid/server/BluetoothService$UserSwitchedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 352
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v1           #userMsg:Landroid/os/Message;
    :cond_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 355
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUserSwitchedHandler:Landroid/server/BluetoothService$UserSwitchedHandler;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$UserSwitchedHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/server/BluetoothService$UserSwitchedHandler;->removeMessages(I)V

    .line 356
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->disable(Z)Z

    .line 357
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->waitForSwitching(I)Z

    .line 359
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    iget-object v3, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAllowConnect:Z
    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/server/BluetoothService;->enable(ZZ)Z

    .line 360
    iget-object v2, p0, Landroid/server/BluetoothService$UserSwitchedHandler;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothService;->waitForSwitching(I)Z

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
