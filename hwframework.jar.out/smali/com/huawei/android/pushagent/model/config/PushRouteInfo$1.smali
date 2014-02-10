.class Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;
.super Ljava/lang/Thread;
.source "PushRouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;->this$0:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;->this$0:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    #getter for: Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->access$000(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;->this$0:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getBelongId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/tools/TRSQuery;->queryTrs(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/TRSRetInfo;

    move-result-object v1

    .line 190
    .local v1, trsRet:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;

    .end local v1           #trsRet:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;->this$0:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    #getter for: Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->access$100(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;-><init>(Landroid/content/Context;)V

    .line 193
    .restart local v1       #trsRet:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;->this$0:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    #calls: Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->setTRSRetInfo(Lcom/huawei/android/pushagent/datatype/TRSRetInfo;)Z
    invoke-static {v2, v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->access$200(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;Lcom/huawei/android/pushagent/datatype/TRSRetInfo;)Z

    .line 209
    .end local v1           #trsRet:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    :goto_0
    return-void

    .line 196
    .restart local v1       #trsRet:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.push.intent.TRS_QUERY_FAILED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "trs_result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return unsuccess result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;->this$0:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    invoke-virtual {v5}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getResult()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v1           #trsRet:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
