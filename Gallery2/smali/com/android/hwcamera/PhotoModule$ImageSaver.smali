.class Lcom/android/hwcamera/PhotoModule$ImageSaver;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0xa


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/PhotoModule$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 1
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 1571
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule$ImageSaver;->start()V

    .line 1572
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIZZ)V
    .locals 16
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "isHDR"
    .parameter "updateThumbnail"

    .prologue
    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$7000(Lcom/android/hwcamera/PhotoModule;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move-object/from16 v8, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p8

    invoke-static/range {v3 .. v11}, Lcom/android/hwcamera/storage/Storage;->updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIIZ)Z

    move-result v14

    .line 1676
    .local v14, ok:Z
    if-eqz v14, :cond_1

    .line 1678
    monitor-enter p0

    .line 1683
    if-eqz p9, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    const/4 v13, 0x1

    .line 1684
    .local v13, needThumbnail:Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    if-eqz v13, :cond_0

    .line 1688
    move/from16 v0, p5

    int-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v5}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraActivity;->getThumbnailWidth()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v15, v3

    .line 1689
    .local v15, ratio:I
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    .line 1692
    .local v12, inSampleSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p7

    move-object/from16 v2, p2

    invoke-virtual {v3, v0, v1, v12, v2}, Lcom/android/hwcamera/CameraActivity;->updatePictureThumbnail([BIILandroid/net/Uri;)V

    .line 1694
    .end local v12           #inSampleSize:I
    .end local v15           #ratio:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/hwcamera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1696
    .end local v13           #needThumbnail:Z
    :cond_1
    return-void

    .line 1683
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1684
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIZZ)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "isHDR"
    .parameter "updateThumbnail"

    .prologue
    const/4 v1, 0x0

    .line 1577
    new-instance v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/PhotoModule$SaveRequest;-><init>(Lcom/android/hwcamera/PhotoModule$1;)V

    .line 1578
    .local v0, r:Lcom/android/hwcamera/PhotoModule$SaveRequest;
    iput-object p1, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->data:[B

    .line 1579
    iput-object p2, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    .line 1580
    iput-object p3, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    .line 1581
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    .line 1582
    iput p5, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->width:I

    .line 1583
    iput p6, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->height:I

    .line 1584
    iput p7, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->orientation:I

    .line 1585
    iput-boolean p8, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->isHDR:Z

    .line 1586
    iput-boolean p9, v0, Lcom/android/hwcamera/PhotoModule$SaveRequest;->updateThumbnail:Z

    .line 1587
    monitor-enter p0

    .line 1588
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 1590
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1591
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1581
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 1595
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1597
    monitor-exit p0

    .line 1598
    return-void

    .line 1597
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1659
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule$ImageSaver;->waitDone()V

    .line 1660
    monitor-enter p0

    .line 1661
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mStop:Z

    .line 1662
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1663
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1669
    :goto_0
    return-void

    .line 1663
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1666
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 1605
    :goto_0
    monitor-enter p0

    .line 1606
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1611
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    return-void

    .line 1614
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1618
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1621
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1620
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;

    .line 1621
    .local v10, r:Lcom/android/hwcamera/PhotoModule$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1622
    iget-object v1, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->data:[B

    iget-object v2, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->width:I

    iget v6, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->height:I

    iget v7, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->orientation:I

    iget-boolean v8, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->isHDR:Z

    iget-boolean v9, v10, Lcom/android/hwcamera/PhotoModule$SaveRequest;->updateThumbnail:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/hwcamera/PhotoModule$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIZZ)V

    .line 1624
    monitor-enter p0

    .line 1625
    :try_start_4
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1626
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1627
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1615
    .end local v10           #r:Lcom/android/hwcamera/PhotoModule$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public waitDone()V
    .locals 5

    .prologue
    .line 1634
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$6800(Lcom/android/hwcamera/PhotoModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMaxBackStoreNum:I
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$6900(Lcom/android/hwcamera/PhotoModule;)I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    .line 1635
    .local v0, shouldStoreNum:I
    :goto_0
    const/16 v1, 0x640

    .line 1636
    .local v1, timeout:I
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post image counter status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I
    invoke-static {v4}, Lcom/android/hwcamera/PhotoModule;->access$6800(Lcom/android/hwcamera/PhotoModule;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shouldStoreNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :goto_1
    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$6800(Lcom/android/hwcamera/PhotoModule;)I

    move-result v2

    if-le v2, v0, :cond_1

    .line 1640
    add-int/lit16 v1, v1, -0xc8

    .line 1641
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1642
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1634
    .end local v0           #shouldStoreNum:I
    .end local v1           #timeout:I
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$6800(Lcom/android/hwcamera/PhotoModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mMaxBackStoreNum:I
    invoke-static {v3}, Lcom/android/hwcamera/PhotoModule;->access$6900(Lcom/android/hwcamera/PhotoModule;)I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0

    .line 1646
    .restart local v0       #shouldStoreNum:I
    .restart local v1       #timeout:I
    :cond_1
    monitor-enter p0

    .line 1647
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1649
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1650
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1654
    :cond_2
    :try_start_3
    monitor-exit p0

    .line 1655
    return-void

    .line 1654
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
