.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$3;
.super Ljava/lang/Thread;
.source "SyncWorkerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startPlayingStateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$3;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    .line 592
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$3;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    #calls: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->runSyncPlayingState()V
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$3;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->sendFaildMessage(Ljava/lang/Exception;)V

    goto :goto_0
.end method
