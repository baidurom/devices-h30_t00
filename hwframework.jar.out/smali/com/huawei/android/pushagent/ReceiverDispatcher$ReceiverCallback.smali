.class final Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;
.super Ljava/lang/Object;
.source "ReceiverDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReceiverCallback"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mReceiver:Lcom/huawei/android/pushagent/model/PushVirtualReceiver;

.field final synthetic this$0:Lcom/huawei/android/pushagent/ReceiverDispatcher;


# direct methods
.method public constructor <init>(Lcom/huawei/android/pushagent/ReceiverDispatcher;Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "receiver"
    .parameter "intent"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->this$0:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->mReceiver:Lcom/huawei/android/pushagent/model/PushVirtualReceiver;

    .line 83
    iput-object p3, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->mIntent:Landroid/content/Intent;

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->mReceiver:Lcom/huawei/android/pushagent/model/PushVirtualReceiver;

    iget-object v2, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->this$0:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    #getter for: Lcom/huawei/android/pushagent/ReceiverDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/pushagent/ReceiverDispatcher;->access$100(Lcom/huawei/android/pushagent/ReceiverDispatcher;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/pushagent/model/PushVirtualReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReceiverDispatcher: call Receiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->mReceiver:Lcom/huawei/android/pushagent/model/PushVirtualReceiver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushagent/ReceiverDispatcher$ReceiverCallback;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
