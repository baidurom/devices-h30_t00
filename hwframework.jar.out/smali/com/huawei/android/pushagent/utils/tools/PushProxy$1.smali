.class final Lcom/huawei/android/pushagent/utils/tools/PushProxy$1;
.super Ljava/lang/Object;
.source "PushProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/pushagent/utils/tools/PushProxy;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->access$000()Lcom/huawei/android/pushagent/utils/tools/PushProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/android/pushagent/utils/tools/PushProxy$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/huawei/android/pushagent/utils/tools/PushProxy;->process(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushagent/utils/tools/PushProxy;->access$100(Lcom/huawei/android/pushagent/utils/tools/PushProxy;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call handleEvent process cause Exception:"

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
