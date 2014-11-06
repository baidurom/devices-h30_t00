.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mySimId:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 624
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 1
    .parameter
    .parameter "simId"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 628
    iput p2, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    .line 629
    return-void
.end method

.method private getRilSocketName(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 632
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 633
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    .line 639
    :goto_0
    return-object v0

    .line 634
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 635
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_3:Ljava/lang/String;

    goto :goto_0

    .line 636
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 637
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_4:Ljava/lang/String;

    goto :goto_0

    .line 639
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 645
    const/4 v8, 0x0

    .line 646
    .local v8, retryCount:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    .line 650
    .local v12, socketRil:Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    .line 653
    .local v10, s:Landroid/net/LocalSocket;
    :try_start_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    .line 656
    const/4 v6, 0x0

    .line 657
    .local v6, m3GsimId:I
    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v6

    .line 659
    const/4 v15, 0x1

    if-lt v6, v15, :cond_2

    .line 660
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-nez v15, :cond_1

    .line 661
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    .line 666
    :cond_0
    :goto_1
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "3G switched, switch sockets ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x1

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_2
    :try_start_1
    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 676
    .end local v10           #s:Landroid/net/LocalSocket;
    .local v11, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v12, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 678
    .local v4, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v11, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 731
    const/4 v8, 0x0

    .line 733
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v11, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 734
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connected to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 736
    const/4 v5, 0x0

    .line 738
    .local v5, length:I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 743
    .local v3, is:Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v3, v15}, Lcom/android/internal/telephony/RIL;->access$600(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    .line 745
    if-gez v5, :cond_7

    .line 767
    .end local v3           #is:Ljava/io/InputStream;
    :goto_4
    :try_start_5
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Disconnected from \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v16, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 773
    new-instance v15, Lcom/android/internal/telephony/RIL$RILReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/RIL$RILReceiver$1;-><init>(Lcom/android/internal/telephony/RIL$RILReceiver;)V

    invoke-virtual {v15}, Lcom/android/internal/telephony/RIL$RILReceiver$1;->start()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 806
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 810
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 811
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 814
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 815
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, sz:I
    :goto_6
    if-ge v2, v13, :cond_8

    .line 816
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/RILRequest;

    .line 817
    .local v9, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 818
    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 663
    .end local v2           #i:I
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    .end local v9           #rr:Lcom/android/internal/telephony/RILRequest;
    .end local v11           #s:Landroid/net/LocalSocket;
    .end local v13           #sz:I
    .restart local v10       #s:Landroid/net/LocalSocket;
    :cond_1
    :try_start_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-ne v15, v6, :cond_0

    .line 664
    sget-object v12, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto/16 :goto_1

    .line 669
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 822
    .end local v6           #m3GsimId:I
    :catch_0
    move-exception v14

    .line 823
    .local v14, tr:Ljava/lang/Throwable;
    :goto_7
    const-string v15, "RILJ"

    const-string v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, -0x1

    #calls: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;I)V

    .line 829
    return-void

    .line 679
    .end local v14           #tr:Ljava/lang/Throwable;
    .restart local v6       #m3GsimId:I
    :catch_1
    move-exception v1

    .line 681
    .local v1, ex:Ljava/io/IOException;
    :goto_8
    if-eqz v10, :cond_3

    .line 682
    :try_start_a
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 691
    :cond_3
    :goto_9
    const/16 v15, 0x10

    if-ne v8, v15, :cond_6

    .line 692
    :try_start_b
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket after "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " times, continuing to retry silently"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 703
    :cond_4
    :goto_a
    const-wide/16 v15, 0xfa0

    :try_start_c
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    .line 713
    :goto_b
    :try_start_d
    rem-int/lit8 v15, v8, 0x5

    if-nez v15, :cond_5

    const/16 v15, 0x1e

    if-ge v8, v15, :cond_5

    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->setExceptionModemEvent(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;I)V

    .line 727
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 728
    goto/16 :goto_0

    .line 696
    :cond_6
    if-lez v8, :cond_4

    const/16 v15, 0x10

    if-ge v8, v15, :cond_4

    .line 697
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket; retrying after timeout"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_a

    .line 750
    .end local v1           #ex:Ljava/io/IOException;
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v11       #s:Landroid/net/LocalSocket;
    :cond_7
    :try_start_e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 751
    .local v7, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 752
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 756
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v15, v7}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 757
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    .line 759
    .end local v3           #is:Ljava/io/InputStream;
    .end local v7           #p:Landroid/os/Parcel;
    :catch_2
    move-exception v1

    .line 760
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_f
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket closed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 822
    .end local v1           #ex:Ljava/io/IOException;
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    :catch_3
    move-exception v14

    move-object v10, v11

    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v10       #s:Landroid/net/LocalSocket;
    goto/16 :goto_7

    .line 762
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v11       #s:Landroid/net/LocalSocket;
    :catch_4
    move-exception v14

    .line 763
    .restart local v14       #tr:Ljava/lang/Throwable;
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_4

    .line 820
    .end local v14           #tr:Ljava/lang/Throwable;
    .restart local v2       #i:I
    .restart local v13       #sz:I
    :cond_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 821
    monitor-exit v16

    goto/16 :goto_0

    .end local v13           #sz:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    throw v15
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    .line 684
    .end local v2           #i:I
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v1       #ex:Ljava/io/IOException;
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catch_5
    move-exception v15

    goto/16 :goto_9

    .line 704
    :catch_6
    move-exception v15

    goto/16 :goto_b

    .line 807
    .end local v1           #ex:Ljava/io/IOException;
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v11       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v15

    goto/16 :goto_5

    .line 679
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    :catch_8
    move-exception v1

    move-object v10, v11

    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v10       #s:Landroid/net/LocalSocket;
    goto/16 :goto_8
.end method
