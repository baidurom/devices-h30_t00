.class Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;
.super Ljava/lang/Thread;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SysThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x7d0

    .line 767
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "come into SysThread singleThreadPools:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;
    invoke-static {v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$0(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$0(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 812
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    const/4 v10, 0x0

    #setter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;
    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$4(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;)V

    .line 813
    return-void

    .line 772
    :cond_1
    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$0(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/Vector;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    #setter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;
    invoke-static {v10, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$1(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;)V

    .line 774
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$2(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->getTimeout()J

    move-result-wide v7

    .line 776
    .local v7, timeout:J
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$2(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;)V

    .line 777
    .local v2, sysCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;
    const/4 v1, 0x0

    .line 780
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    const-wide/16 v5, 0x0

    .line 781
    .local v5, timeStart:J
    const-wide/16 v3, 0x0

    .line 782
    .local v3, timeEnd:J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 784
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$3(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 785
    invoke-static {v1, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FutureTool;->get(Ljava/util/concurrent/Future;J)Ljava/lang/Object;

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 789
    sub-long v9, v3, v5

    cmp-long v9, v9, v13

    if-gez v9, :cond_0

    .line 791
    const-wide/16 v9, 0x7d0

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SysThread "

    invoke-static {v9, v10, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 798
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SysThread "

    invoke-static {v9, v10, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    instance-of v9, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v9, :cond_0

    .line 805
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 806
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    #getter for: Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->access$2(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->shutDownNow()V

    goto/16 :goto_0
.end method
