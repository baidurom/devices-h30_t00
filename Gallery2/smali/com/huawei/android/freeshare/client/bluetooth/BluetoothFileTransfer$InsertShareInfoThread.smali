.class Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;
.super Ljava/lang/Thread;
.source "BluetoothFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertShareInfoThread"
.end annotation


# instance fields
.field private mMission:Lcom/huawei/android/freeshare/client/transfer/Mission;

.field final synthetic this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;


# direct methods
.method public constructor <init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Lcom/huawei/android/freeshare/client/transfer/Mission;)V
    .locals 4
    .parameter
    .parameter "mission"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->mMission:Lcom/huawei/android/freeshare/client/transfer/Mission;

    .line 142
    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$1(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertShareThreadNum:I
    invoke-static {p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$2(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    #setter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertShareThreadNum:I
    invoke-static {p1, v0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$3(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;I)V

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const-string v0, "Freeshare_BluetoothFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread id is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 151
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->mMission:Lcom/huawei/android/freeshare/client/transfer/Mission;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->insertShare(Lcom/huawei/android/freeshare/client/transfer/Mission;)V
    invoke-static {v0, v1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$4(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Lcom/huawei/android/freeshare/client/transfer/Mission;)V

    .line 152
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$1(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$InsertShareInfoThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertShareThreadNum:I
    invoke-static {v0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$2(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    #setter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mInsertShareThreadNum:I
    invoke-static {v0, v2}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$3(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;I)V

    .line 152
    monitor-exit v1

    .line 155
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
