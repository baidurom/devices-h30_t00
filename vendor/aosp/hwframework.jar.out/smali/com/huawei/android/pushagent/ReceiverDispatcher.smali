.class public Lcom/huawei/android/pushagent/ReceiverDispatcher;
.super Ljava/lang/Thread;
.source "ReceiverDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    const-string v1, "ReceiverDispatcher"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 28
    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 30
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "eventloop"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/pushagent/ReceiverDispatcher;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/pushagent/ReceiverDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dispatchIntent(Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/Intent;)V
    .locals 4
    .parameter "receiver"
    .parameter "intent"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;-><init>(Lcom/huawei/android/pushagent/ReceiverDispatcher;Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "PushLog2510"

    const-string v1, "ReceiverDispatcher: the handler is null"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->getInstance()Lcom/huawei/android/pushagent/PushService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/PushService;->stopService()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mMsgQueue:Landroid/os/MessageQueue;

    .line 41
    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mMsgQueue:Landroid/os/MessageQueue;

    new-instance v2, Lcom/huawei/android/pushagent/ReceiverDispatcher$1;

    invoke-direct {v2, p0}, Lcom/huawei/android/pushagent/ReceiverDispatcher$1;-><init>(Lcom/huawei/android/pushagent/ReceiverDispatcher;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 51
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, tr:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "PushLog2510"

    invoke-static {v0}, Lcom/huawei/android/pushagent/utils/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 55
    .end local v0           #tr:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    throw v1
.end method
