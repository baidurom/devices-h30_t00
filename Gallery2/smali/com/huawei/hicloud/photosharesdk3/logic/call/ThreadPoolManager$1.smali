.class Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;Ljava/lang/Object;J)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    .line 479
    invoke-direct {p0, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;

    .line 486
    .local v0, baseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$5(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;->setCurrentExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 487
    const/4 v3, 0x0

    .line 489
    .local v3, object:Ljava/lang/Object;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$5(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;->onPause()V

    .line 492
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$5(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 496
    .local v2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->getTimeout()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FutureTool;->get(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 505
    .end local v2           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    .end local v3           #object:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 498
    .restart local v2       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    .restart local v3       #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "serialCallable exec fail"

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
