.class Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field private mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/huawei/android/freeshare/client/transfer/TransferItem;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;


# direct methods
.method public constructor <init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    .line 216
    const-string v0, "Update bluetooth database"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    .line 213
    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->mTempList:Ljava/util/List;

    .line 217
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 221
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 223
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    monitor-enter v4

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$5(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 225
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 226
    const-string v5, "multiple UpdateThreads in BluetoothFileTransfer"

    .line 225
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 228
    :cond_1
    :try_start_1
    const-string v3, "Freeshare_BluetoothFileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pendingUpdate is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mPendingUpdate:Z
    invoke-static {v6}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$6(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mPendingUpdate:Z
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$6(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;
    invoke-static {v3}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$7(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    const/4 v5, 0x0

    #setter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUpdateThread:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;
    invoke-static {v3, v5}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$8(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;)V

    .line 232
    monitor-exit v4

    return-void

    .line 234
    :cond_3
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    const/4 v5, 0x0

    #setter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mPendingUpdate:Z
    invoke-static {v3, v5}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$9(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Z)V

    .line 223
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->mTempList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 238
    iget-object v4, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    monitor-enter v4

    .line 239
    :try_start_2
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->mTempList:Ljava/util/List;

    iget-object v5, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #getter for: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->mUriNeedObsever:Ljava/util/Map;
    invoke-static {v5}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$7(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    iget-object v3, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->mTempList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 242
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/huawei/android/freeshare/client/transfer/TransferItem;Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 243
    .local v0, contentUri:Landroid/net/Uri;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/freeshare/client/transfer/TransferItem;

    .line 244
    .local v2, item:Lcom/huawei/android/freeshare/client/transfer/TransferItem;
    iget-object v4, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$UpdateThread;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->updateTransferItem(Landroid/net/Uri;Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V
    invoke-static {v4, v0, v2}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$10(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;Landroid/net/Uri;Lcom/huawei/android/freeshare/client/transfer/TransferItem;)V

    goto :goto_0

    .line 238
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/huawei/android/freeshare/client/transfer/TransferItem;Landroid/net/Uri;>;"
    .end local v2           #item:Lcom/huawei/android/freeshare/client/transfer/TransferItem;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
