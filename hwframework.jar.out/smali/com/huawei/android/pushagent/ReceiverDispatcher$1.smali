.class Lcom/huawei/android/pushagent/ReceiverDispatcher$1;
.super Ljava/lang/Object;
.source "ReceiverDispatcher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/pushagent/ReceiverDispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/pushagent/ReceiverDispatcher;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushagent/ReceiverDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$1;->this$0:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$1;->this$0:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    #getter for: Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/huawei/android/pushagent/ReceiverDispatcher;->access$000(Lcom/huawei/android/pushagent/ReceiverDispatcher;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$1;->this$0:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    #getter for: Lcom/huawei/android/pushagent/ReceiverDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/huawei/android/pushagent/ReceiverDispatcher;->access$000(Lcom/huawei/android/pushagent/ReceiverDispatcher;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
