.class public Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;
.super Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
.source "DownloadTask.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "httpUrl"
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->context:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->context:Landroid/content/Context;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestType:I

    .line 57
    return-void
.end method

.method private readDownloadData(JLorg/apache/http/HttpResponse;)V
    .locals 22
    .parameter "dataLen"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

    check-cast v6, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;

    .line 86
    .local v6, downloadFileRequest:Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;
    new-instance v10, Ljava/io/File;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->getItem()Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    move-result-object v15

    iget-object v15, v15, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    const/16 v16, 0x0

    .line 87
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->getItem()Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 86
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v10, filetemp:Ljava/io/File;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "readDownloadData filePath:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v15, "Content-Length"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, contentLength:Ljava/lang/String;
    const/4 v4, 0x0

    .line 108
    .local v4, contentRange:Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_5

    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->contentLen:J

    .line 122
    :cond_2
    :goto_1
    const/4 v14, 0x0

    .line 123
    .local v14, savePath:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 124
    .local v8, fileLength:J
    const/4 v5, 0x0

    .line 128
    .local v5, downloadFile:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v15

    int-to-long v11, v15

    .line 132
    .local v11, isLen:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->contentLen:J

    cmp-long v15, p1, v15

    if-lez v15, :cond_6

    .line 133
    :goto_2
    cmp-long v15, p1, v11

    if-lez v15, :cond_7

    .line 136
    :goto_3
    sget-boolean v15, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v15, :cond_3

    .line 138
    const-string v15, "readDownloadData"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "contentLen:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->contentLen:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",contentRange:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 139
    const-string v17, ",fileLenght:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",isLen:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",breakpoint: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->breakpoint:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",totalLen: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 140
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->breakpoint:J

    move-wide/from16 v17, v0

    add-long v17, v17, p1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 138
    invoke-static/range {v15 .. v16}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3
    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->createFile(J)Ljava/util/Map;

    move-result-object v13

    .line 148
    .local v13, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "savePath"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 149
    const-string v15, "RandomAccessFile"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 150
    const-string v15, "fileLength"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 151
    const-string v15, "File"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/io/File;

    move-object v5, v0

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v15, :cond_a

    .line 183
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v15, v15, v8

    if-ltz v15, :cond_4

    .line 185
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->resetFileName()V

    .line 188
    :cond_4
    sget-boolean v15, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v15, :cond_0

    .line 190
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "downloadTask,dataLen:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "downloadTask,downLen:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->downLen:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "downloadTask,fileLength:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v16

    const-string v17, "3"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v15, "downloadTask,downloadFile.length:"

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    if-nez v5, :cond_8

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 193
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v16, "DownloadTask"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v15, "finally sdk3 executeDownload:"

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v5           #downloadFile:Ljava/io/File;
    .end local v8           #fileLength:J
    .end local v11           #isLen:J
    .end local v13           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #savePath:Ljava/lang/String;
    :cond_5
    const-string v15, "content-range"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 116
    if-eqz v4, :cond_2

    .line 118
    const-string v15, "/"

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->breakpoint:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->contentLen:J

    goto/16 :goto_1

    .line 132
    .restart local v5       #downloadFile:Ljava/io/File;
    .restart local v8       #fileLength:J
    .restart local v11       #isLen:J
    .restart local v14       #savePath:Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->contentLen:J

    move-wide/from16 p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :cond_7
    move-wide/from16 p1, v11

    .line 133
    goto/16 :goto_3

    .line 194
    .restart local v13       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_4

    .line 195
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 157
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->writeLocal(Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v15, v15, v8

    if-ltz v15, :cond_b

    .line 185
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->resetFileName()V

    .line 188
    :cond_b
    sget-boolean v15, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v15, :cond_0

    .line 190
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "downloadTask,dataLen:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "downloadTask,downLen:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->downLen:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "downloadTask,fileLength:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v16

    const-string v17, "3"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v15, "downloadTask,downloadFile.length:"

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    if-nez v5, :cond_10

    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 193
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v16, "DownloadTask"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v15, "finally sdk3 executeDownload:"

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v15, :cond_11

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v11           #isLen:J
    .end local v13           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v7

    .line 163
    .local v7, e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    const/16 v15, 0x3f8

    :try_start_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    .line 164
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendDirError(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "downloadTask"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    new-instance v15, Ljava/lang/InterruptedException;

    const-string v16, "SDUnavailableException"

    invoke-direct/range {v15 .. v16}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .end local v7           #e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    :catchall_0
    move-exception v15

    move-object/from16 v16, v15

    .line 183
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v17, v8

    if-ltz v15, :cond_c

    .line 185
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->resetFileName()V

    .line 188
    :cond_c
    sget-boolean v15, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v15, :cond_d

    .line 190
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v17, "3"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "downloadTask,dataLen:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v17, "3"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "downloadTask,downLen:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->downLen:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v17, "3"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "downloadTask,fileLength:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v17

    const-string v18, "3"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v15, "downloadTask,downloadFile.length:"

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    if-nez v5, :cond_e

    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 193
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v17, "DownloadTask"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v15, "finally sdk3 executeDownload:"

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_d
    throw v16

    .line 168
    :catch_1
    move-exception v7

    .line 170
    .local v7, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    const/16 v15, 0x3f6

    :try_start_4
    move-object/from16 v0, p0

    iput v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->responseCode:I

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendNoSpaceError(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "downloadTask"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    new-instance v15, Ljava/lang/InterruptedException;

    const-string v16, "NoSpaceException"

    invoke-direct/range {v15 .. v16}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 175
    .end local v7           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    :catch_2
    move-exception v7

    .line 178
    .local v7, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "downloadTask"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    .end local v7           #e:Ljava/lang/Exception;
    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_8

    .line 195
    :cond_f
    const/4 v15, 0x0

    goto :goto_9

    .line 194
    .restart local v11       #isLen:J
    .restart local v13       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto/16 :goto_6

    .line 195
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_7
.end method

.method private writeLocal(Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;)V
    .locals 10
    .parameter "downloadFileRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;,
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, buffLen:I
    const/high16 v4, 0x4

    new-array v0, v4, [B

    .line 205
    .local v0, buff:[B
    const/4 v3, 0x0

    check-cast v3, [B

    .line 206
    .local v3, tempBuff:[B
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 243
    return-void

    .line 209
    :cond_1
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->paused:Z

    if-eqz v4, :cond_3

    .line 211
    :cond_2
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 215
    :cond_3
    if-lez v1, :cond_0

    .line 221
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 224
    new-array v3, v1, [B

    .line 225
    invoke-static {v0, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->writeFile(Ljava/io/RandomAccessFile;[B)I

    move-result v2

    .line 227
    .local v2, len:I
    if-ne v2, v8, :cond_4

    .line 229
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 233
    :cond_4
    iget-wide v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->downLen:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->downLen:J

    goto :goto_0

    .line 239
    .end local v2           #len:I
    :cond_5
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
.end method


# virtual methods
.method protected handlerError(Ljava/lang/Error;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->isTimeOut:Z

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->setError(Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method protected hanlderException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->setError(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method protected readResponseData(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 70
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->fileLenght:J

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;->readDownloadData(JLorg/apache/http/HttpResponse;)V

    .line 71
    return-void
.end method
