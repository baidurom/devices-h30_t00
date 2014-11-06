.class public Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "UploadUtil.java"


# static fields
.field private static final DBANK_HTTPS_PORT:Ljava/lang/String; = ":443"


# instance fields
.field private appSecret:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private createTime:Ljava/lang/String;

.field private fid:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private filepath:Ljava/lang/String;

.field private nspTstr:Ljava/lang/String;

.field private physicsPath:Ljava/lang/String;

.field private uploadurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->context:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->appSecret:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->filepath:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->physicsPath:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->createTime:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 415
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 417
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, date:Ljava/lang/String;
    return-object v0
.end method

.method private parseData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;II)[B
    .locals 26
    .parameter
    .parameter
    .parameter "boundary"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "II)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, files:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v4, 0x0

    check-cast v4, [B

    .line 427
    .local v4, bs:[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 428
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    .line 431
    .local v15, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    const-string v14, "------------"

    .local v14, prefix:Ljava/lang/String;
    const-string v13, "\r\n"

    .line 434
    .local v13, linend:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v17, sb:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 436
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 447
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    if-eqz p2, :cond_0

    .line 451
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    move-object/from16 v16, v15

    .end local v15           #raf:Ljava/io/RandomAccessFile;
    .local v16, raf:Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 519
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "--"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 521
    .local v7, endData:[B
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 523
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    move-object/from16 v15, v16

    .line 533
    .end local v7           #endData:[B
    .end local v16           #raf:Ljava/io/RandomAccessFile;
    .restart local v15       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    if-eqz v15, :cond_1

    .line 537
    :try_start_2
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 550
    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 559
    :goto_3
    return-object v4

    .line 438
    :cond_2
    :try_start_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/NameValuePair;

    .line 439
    .local v8, entry:Lorg/apache/http/NameValuePair;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 526
    .end local v8           #entry:Lorg/apache/http/NameValuePair;
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #linend:Ljava/lang/String;
    .end local v14           #prefix:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 528
    .local v6, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    new-instance v20, Ljava/io/IOException;

    invoke-direct/range {v20 .. v20}, Ljava/io/IOException;-><init>()V

    throw v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 532
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 533
    :goto_5
    if-eqz v15, :cond_3

    .line 537
    :try_start_6
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 550
    :cond_3
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 557
    :goto_7
    throw v20

    .line 451
    .end local v15           #raf:Ljava/io/RandomAccessFile;
    .restart local v10       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .restart local v13       #linend:Ljava/lang/String;
    .restart local v14       #prefix:Ljava/lang/String;
    .restart local v16       #raf:Ljava/io/RandomAccessFile;
    .restart local v17       #sb:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 453
    .local v9, file:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v18, sb1:Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v20, "Content-Disposition: form-data; name=\"file\"; filename=\""

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "\""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v20, "Content-Type: application/octet-stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v22, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 462
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v22, "3"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "--"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v22, "3"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v15, Ljava/io/RandomAccessFile;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/File;

    const-string v22, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 486
    .end local v16           #raf:Ljava/io/RandomAccessFile;
    .restart local v15       #raf:Ljava/io/RandomAccessFile;
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v22, v0

    :try_start_9
    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v5, v0, [B

    .line 489
    .local v5, buffer:[B
    sub-int v20, p5, p4

    add-int/lit8 v12, v20, 0x1

    .line 490
    .local v12, length:I
    const/4 v11, 0x0

    .line 491
    .local v11, len:I
    const/16 v19, 0x0

    .line 492
    .local v19, tempLen:I
    :cond_5
    :goto_8
    invoke-virtual {v15, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_7

    .line 508
    :cond_6
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v22, "3"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 513
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    move-object/from16 v16, v15

    .end local v15           #raf:Ljava/io/RandomAccessFile;
    .restart local v16       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 494
    .end local v16           #raf:Ljava/io/RandomAccessFile;
    .restart local v15       #raf:Ljava/io/RandomAccessFile;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v12, :cond_6

    .line 496
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v5, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 497
    add-int v19, v19, v11

    .line 498
    if-eqz p4, :cond_5

    add-int/lit16 v0, v12, -0x401

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 500
    const/16 v20, 0x401

    move/from16 v0, v20

    new-array v5, v0, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_8

    .line 539
    .end local v5           #buffer:[B
    .end local v9           #file:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .end local v11           #len:I
    .end local v12           #length:I
    .end local v13           #linend:Ljava/lang/String;
    .end local v14           #prefix:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    .end local v18           #sb1:Ljava/lang/StringBuilder;
    .end local v19           #tempLen:I
    :catch_1
    move-exception v6

    .line 541
    .restart local v6       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 552
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 554
    .restart local v6       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 539
    .end local v6           #e:Ljava/io/IOException;
    .restart local v10       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    .restart local v13       #linend:Ljava/lang/String;
    .restart local v14       #prefix:Ljava/lang/String;
    .restart local v17       #sb:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v6

    .line 541
    .restart local v6       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 552
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 554
    .restart local v6       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 532
    .end local v6           #e:Ljava/io/IOException;
    .end local v15           #raf:Ljava/io/RandomAccessFile;
    .restart local v16       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v20

    move-object/from16 v15, v16

    .end local v16           #raf:Ljava/io/RandomAccessFile;
    .restart local v15       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_5

    .line 526
    .end local v15           #raf:Ljava/io/RandomAccessFile;
    .restart local v16       #raf:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #raf:Ljava/io/RandomAccessFile;
    .restart local v15       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_4
.end method

.method private sendMakeDirRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12
    .parameter "paramObject"

    .prologue
    .line 375
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 376
    .local v1, dirs:Lorg/json/JSONArray;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 377
    .local v0, date:Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 378
    .local v5, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, fileTime:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sendMakeDirRequest..."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->filepath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v7, upfile:Ljava/io/File;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v6, tempFile:Lorg/json/JSONObject;
    const-string v8, "type"

    const-string v9, "File"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v8, "name"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->physicsPath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v8, "size"

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v8, "url"

    const-string v9, "nsp_path"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v8, "createTime"

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->createTime:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "upload createTime"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->createTime:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v8, "modifyTime"

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->createTime:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v8, "accessTime"

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v8, "md5"

    const-string v9, "nsp_fid"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v8, "dbank.Status"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v8, "sig"

    const-string v9, "nsp_sig"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v8, "ts"

    const-string v9, "nsp_ts"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v8, "merge"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->context:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;-><init>(Landroid/content/Context;)V

    .line 407
    .local v4, request:Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->setFileInfo(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->getJSONResponse()V

    .line 409
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sendMakeDirRequest rsp:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v8

    .end local v4           #request:Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;
    .end local v6           #tempFile:Lorg/json/JSONObject;
    .end local v7           #upfile:Ljava/io/File;
    :goto_0
    return-object v8

    .line 401
    :catch_0
    move-exception v2

    .line 403
    .local v2, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private uploadFileUploadAuthRequest()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, uploadResult:Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "uploadFileUploadAuthRequest start..."

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/request/UploadAuthRequest;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/huawei/hicloud/photosharesdk3/request/UploadAuthRequest;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, request:Lcom/huawei/hicloud/photosharesdk3/request/UploadAuthRequest;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/UploadAuthRequest;->getJSONResponse()V

    .line 107
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/UploadAuthRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    .local v0, ob:Lorg/json/JSONObject;
    const-string v3, "secret"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->appSecret:Ljava/lang/String;

    .line 109
    const-string v3, "nsp_tstr"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    .line 110
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v3, :cond_1

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "nsp_host"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":443"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    .line 118
    :goto_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uploadFileUploadAuthRequest Rsp..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/UploadAuthRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadFileUploadInitRequest()Lorg/json/JSONObject;

    move-result-object v2

    .line 125
    :cond_0
    return-object v2

    .line 116
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "nsp_host"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    goto :goto_0
.end method

.method private uploadFileUploadInitRequest()Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "start..."

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v5, 0x0

    .line 132
    .local v5, uploadResult:Lorg/json/JSONObject;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/up/up_init"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    .local v2, request:Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->filepath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, upfile:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, ts:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->appSecret:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "nsp_app1nsp_fid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nsp_filename"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 141
    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nsp_fmtJSON"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nsp_fsize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 142
    const-string v7, "nsp_tconnsp_ts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nsp_tstr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nsp_ver1.0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, keyStr:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_app"

    const-string v8, "1"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_ts"

    invoke-direct {v6, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_fmt"

    const-string v8, "JSON"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_ver"

    const-string v8, "1.0"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_tcon"

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_tstr"

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_filename"

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_fid"

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_fsize"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nsp_key"

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v2, v1}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->setHeader(Ljava/util/List;)V

    .line 157
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->getJSONResponse()V

    .line 158
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "testUploadFileUploadInitRequest Rsp..."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadInitResponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 161
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "end..."

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v5
.end method

.method private uploadFileUploadRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 19
    .parameter "initResult"

    .prologue
    .line 301
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v17, "uploadFileUploadRequest..."

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .local v14, returnObject:Lorg/json/JSONObject;
    const/4 v8, 0x0

    check-cast v8, [B

    .line 307
    .local v8, bs:[B
    :try_start_0
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->filepath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v16, upfile:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 310
    .local v15, ts:Ljava/lang/String;
    const-string v1, "nsp_range"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, range:Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, a:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->appSecret:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "nsp_app1nsp_fid"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "nsp_filename"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "nsp_fmtJSON"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "nsp_fsize"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string v5, "nsp_range"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "nsp_range"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "nsp_tconnsp_ts"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    const-string v5, "nsp_tstr"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "nsp_ver1.0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, keyStr:Ljava/lang/String;
    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, nspKey:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v2, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_app"

    const-string v6, "1"

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_ts"

    invoke-direct {v1, v5, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_fmt"

    const-string v6, "JSON"

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_ver"

    const-string v6, "1.0"

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_tcon"

    const-string v6, ""

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_tstr"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_filename"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_range"

    invoke-direct {v1, v5, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_fid"

    const-string v6, "nsp_fid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_fsize"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nsp_key"

    invoke-direct {v1, v5, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v3, files:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->filepath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, boundary:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "7b"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 344
    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v1, p0

    .line 343
    invoke-direct/range {v1 .. v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->parseData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;II)[B

    move-result-object v8

    .line 346
    new-instance v13, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/up/up_blk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v1, v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    .local v13, request:Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;
    invoke-virtual {v13, v2}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->setHeader(Ljava/util/List;)V

    .line 348
    invoke-virtual {v13, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->setContent([B)V

    .line 349
    invoke-virtual {v13, v4}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->setRandom(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->getJSONResponse()V

    .line 351
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v17, "uploadFileUploadRequest Rsp..."

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->getJsonBody()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 365
    .end local v2           #paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #files:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local v4           #boundary:Ljava/lang/String;
    .end local v7           #a:[Ljava/lang/String;
    .end local v10           #keyStr:Ljava/lang/String;
    .end local v11           #nspKey:Ljava/lang/String;
    .end local v12           #range:Ljava/lang/String;
    .end local v13           #request:Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;
    .end local v15           #ts:Ljava/lang/String;
    .end local v16           #upfile:Ljava/io/File;
    :goto_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v17, "uploadFileUploadRequest...returnObject:"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-object v14

    .line 355
    :catch_0
    move-exception v9

    .line 358
    .local v9, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-static {v1, v5, v9}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    .end local v9           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v9

    .line 363
    .local v9, e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-static {v1, v5, v9}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private uploadFileUploadRetConRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 13
    .parameter "paramObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v8, 0x0

    .line 250
    .local v8, uploadResult:Lorg/json/JSONObject;
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->filepath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v7, upfile:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, ts:Ljava/lang/String;
    const-string v9, "nsp_range"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, range:Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, a:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v9, v10}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getMD5(Ljava/io/File;II)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, fcon:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->appSecret:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "nsp_app1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nsp_fcon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 267
    const-string v10, "nsp_fid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nsp_filename"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nsp_fmtJSON"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 268
    const-string v10, "nsp_fsize"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nsp_range"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nsp_tconnsp_ts"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 269
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nsp_tstr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nsp_ver1.0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, keyStr:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v3, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_app"

    const-string v11, "1"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_ts"

    invoke-direct {v9, v10, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_fmt"

    const-string v11, "JSON"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_ver"

    const-string v11, "1.0"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_tcon"

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_tstr"

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->nspTstr:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_filename"

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_fid"

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_fsize"

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_key"

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_range"

    invoke-direct {v9, v10, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "nsp_fcon"

    invoke-direct {v9, v10, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->context:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadurl:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/up/up_retcon"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    .local v5, request:Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;
    invoke-virtual {v5, v3}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->setHeader(Ljava/util/List;)V

    .line 290
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->getJSONResponse()V

    .line 294
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "uploadInitResponse,REQTCON:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v8

    .line 296
    return-object v8
.end method

.method private uploadInitResponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10
    .parameter "paramObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v4, 0x0

    .line 168
    .local v4, uploadResult:Lorg/json/JSONObject;
    move-object v1, p1

    .line 169
    .local v1, jsonObject:Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uploadInitResponse:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v6, "nsp_upcmd"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, nspUpcmd:Ljava/lang/String;
    const/4 v0, 0x1

    .line 173
    .local v0, flag:Z
    const/4 v5, 0x0

    .line 175
    .local v5, uploadSuccess:Z
    :goto_0
    if-nez v0, :cond_1

    .line 236
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "flag:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uploadSuccess:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-eqz v5, :cond_0

    .line 241
    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->sendMakeDirRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 244
    :cond_0
    return-object v4

    .line 177
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nsp_upcmd..."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v6, "REQTCON"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "REQTCON..."

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadFileUploadRetConRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 189
    const-string v6, "nsp_upcmd"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 191
    :cond_2
    const-string v6, "REQTBLK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "REQTBLK..."

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadFileUploadRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 200
    const-string v6, "nsp_upcmd"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 202
    :cond_3
    const-string v6, "UPSTAT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 205
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "UPSTAT..."

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v6, "nsp_upstat"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, nspUpstat:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nsp_upstat..."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v6, "NONE"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "nsp_upstat is none"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 215
    :cond_4
    const-string v6, "FIN"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 217
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "nsp_upstat is fin"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    .line 221
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 225
    :cond_5
    const/4 v0, 0x0

    .line 226
    const/4 v5, 0x0

    .line 227
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "dead circle"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v3           #nspUpstat:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "uploadContext"
    .parameter "uploadFilePath"
    .parameter "uploadFileName"
    .parameter "uploadPhysicsPath"
    .parameter "uploadCreateTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, uploadResult:Lorg/json/JSONObject;
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->filepath:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fileName:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->physicsPath:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->createTime:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, upfile:Ljava/io/File;
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->fid:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 98
    .end local v1           #uploadResult:Lorg/json/JSONObject;
    .local v2, uploadResult:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 96
    .end local v2           #uploadResult:Lorg/json/JSONObject;
    .restart local v1       #uploadResult:Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "upload create time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->uploadFileUploadAuthRequest()Lorg/json/JSONObject;

    move-result-object v1

    move-object v2, v1

    .line 98
    .end local v1           #uploadResult:Lorg/json/JSONObject;
    .restart local v2       #uploadResult:Lorg/json/JSONObject;
    goto :goto_0
.end method
