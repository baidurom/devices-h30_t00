.class Lcom/android/server/AlarmManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1487
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1488
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1489
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1501
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    const-string v2, "huawei.action.intent.PHB_STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1491
    const-string v2, "phb_enable"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1492
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1493
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1494
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1496
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1497
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1498
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
