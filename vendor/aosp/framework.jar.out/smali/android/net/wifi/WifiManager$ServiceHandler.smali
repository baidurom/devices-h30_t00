.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 1366
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1367
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 1371
    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->access$000(I)Ljava/lang/Object;

    move-result-object v1

    .line 1372
    .local v1, listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1464
    .end local v1           #listener:Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1374
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 1375
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x11001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1388
    :goto_1
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1377
    :cond_1
    const-string v3, "WifiManager"

    const-string v4, "Failed to set up channel connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1381
    const-string v3, "WifiManager"

    const-string v4, "Disconnect sAsyncChannel for failed to set up!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 1383
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 1385
    :cond_2
    const-string v3, "WifiManager"

    const-string/jumbo v4, "sAsyncChannel is null when failed to set up!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1394
    :sswitch_2
    const-string v3, "WifiManager"

    const-string v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1398
    const-string v3, "WifiManager"

    const-string v4, "Disconnect sAsyncChannel for channel connection lost!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 1400
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1404
    :goto_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1402
    :cond_3
    const-string v3, "WifiManager"

    const-string/jumbo v4, "sAsyncChannel is null when channel connection lost!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1412
    :sswitch_3
    if-eqz v1, :cond_0

    .line 1413
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 1422
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_4
    if-eqz v1, :cond_0

    .line 1423
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 1427
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_5
    if-eqz v1, :cond_0

    .line 1428
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WpsResult;

    .local v2, result:Landroid/net/wifi/WpsResult;
    move-object v3, v1

    .line 1429
    check-cast v3, Landroid/net/wifi/WifiManager$WpsListener;

    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/wifi/WifiManager$WpsListener;->onStartSuccess(Ljava/lang/String;)V

    .line 1431
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1432
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$400()Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1433
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1437
    .end local v2           #result:Landroid/net/wifi/WpsResult;
    :sswitch_6
    if-eqz v1, :cond_0

    .line 1438
    check-cast v1, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$WpsListener;->onCompletion()V

    goto/16 :goto_0

    .line 1442
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_7
    if-eqz v1, :cond_0

    .line 1443
    check-cast v1, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$WpsListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1447
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_8
    if-eqz v1, :cond_0

    .line 1448
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1449
    .local v0, info:Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v0, :cond_4

    .line 1450
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_0

    .line 1452
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_4
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1           #listener:Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1456
    .end local v0           #info:Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_9
    if-eqz v1, :cond_0

    .line 1457
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1372
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11002 -> :sswitch_0
        0x11004 -> :sswitch_2
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_4
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_4
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_4
        0x2500b -> :sswitch_5
        0x2500c -> :sswitch_7
        0x2500d -> :sswitch_6
        0x2500f -> :sswitch_3
        0x25010 -> :sswitch_4
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_4
        0x25015 -> :sswitch_8
        0x25016 -> :sswitch_9
    .end sparse-switch
.end method
