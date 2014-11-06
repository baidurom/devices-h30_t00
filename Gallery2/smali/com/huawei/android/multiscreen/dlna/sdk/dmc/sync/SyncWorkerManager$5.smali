.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;
.super Ljava/lang/Object;
.source "SyncWorkerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->getVolumeFromAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    .line 633
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 639
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)I

    move-result v0

    .line 640
    .local v0, tempDeviceID:I
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->volumeWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->access$3(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;

    move-result-object v2

    const/4 v3, 0x0

    .line 641
    const/4 v4, 0x6

    .line 640
    invoke-interface {v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;->getVolumeInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    move-result-object v1

    .line 642
    .local v1, volumeDMR:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    if-eqz v1, :cond_0

    .line 644
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    invoke-virtual {v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->performVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V

    .line 648
    :cond_0
    return-void
.end method
