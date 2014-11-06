.class public Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;
.super Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
.source "DownloadTask.java"


# static fields
.field private static volatile downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

.field private static volatile downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;


# instance fields
.field private context:Landroid/content/Context;

.field protected isDownloadSuccess:Z

.field public refresh_time:I


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1
    .parameter "callback"
    .parameter "httpUrl"
    .parameter "context"
    .parameter "isMyPhoto"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;-><init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->isDownloadSuccess:Z

    .line 44
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->refresh_time:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->context:Landroid/content/Context;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->requestType:I

    .line 67
    invoke-direct {p0, p4}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->initQueue(Z)V

    .line 69
    return-void
.end method

.method public static getDownQueueofMyPhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    return-object v0
.end method

.method public static getDownQueueofSharePhoto()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    return-object v0
.end method

.method private initQueue(Z)V
    .locals 2
    .parameter "isMyPhoto"

    .prologue
    const/4 v1, 0x2

    .line 73
    if-eqz p1, :cond_1

    .line 74
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    goto :goto_0
.end method

.method private readDownloadData(JLorg/apache/http/HttpResponse;)V
    .locals 16
    .parameter "dataLen"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v11, 0x0

    .line 127
    .local v11, savePath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 128
    .local v4, downloadFile:Ljava/io/File;
    const-wide/16 v6, 0x0

    .line 133
    .local v6, fileLength:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->stopTimeoutTimer()V

    .line 134
    const-string v12, "Content-Length"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 135
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, contentLength:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->contentLen:J

    .line 149
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v12

    int-to-long v8, v12

    .line 152
    .local v8, isLen:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->contentLen:J

    cmp-long v12, p1, v12

    if-lez v12, :cond_2

    .line 153
    :goto_1
    cmp-long v12, p1, v8

    if-lez v12, :cond_3

    .line 157
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v12, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    move-wide/from16 v0, p1

    invoke-interface {v12, v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->createFile(J)Ljava/util/Map;

    move-result-object v10

    .line 158
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "savePath"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 159
    const-string v12, "File"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/io/File;

    move-object v4, v0

    .line 160
    const-string v12, "fileLength"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 161
    const-string v12, "RandomAccessFile"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-nez v12, :cond_5

    .line 164
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 165
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "finally sdk executeDownload:"

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 166
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 165
    invoke-static {v13, v14, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_4
    return-void

    .line 139
    .end local v8           #isLen:J
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v12, "content-range"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 140
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, contentRange:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 144
    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->breakpoint:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->contentLen:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 179
    .end local v2           #contentLength:Ljava/lang/String;
    .end local v3           #contentRange:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 180
    .local v5, e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12

    .line 152
    .end local v5           #e:Ljava/io/IOException;
    .restart local v2       #contentLength:Ljava/lang/String;
    .restart local v8       #isLen:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->contentLen:J

    move-wide/from16 p1, v0

    goto/16 :goto_1

    :cond_3
    move-wide/from16 p1, v8

    .line 153
    goto/16 :goto_2

    .line 165
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 170
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->writeLocal()V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 175
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->downLen:J

    cmp-long v12, p1, v12

    if-eqz v12, :cond_6

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v12, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v12}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->deleteFailedFile()V

    .line 177
    new-instance v12, Ljava/lang/InterruptedException;

    invoke-direct {v12}, Ljava/lang/InterruptedException;-><init>()V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    .end local v2           #contentLength:Ljava/lang/String;
    .end local v8           #isLen:J
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v5

    .line 183
    .local v5, e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const/16 v12, 0x3f8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v13

    .line 186
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v13

    .line 185
    invoke-static {v12, v13}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendDirError(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    new-instance v12, Ljava/lang/InterruptedException;

    const-string v13, "SDUnavailableException"

    invoke-direct {v12, v13}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 188
    .end local v5           #e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    :catch_2
    move-exception v5

    .line 189
    .local v5, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const/16 v12, 0x3f6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->responseCode:I

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendNoSpaceError(Landroid/content/Context;)V

    .line 192
    new-instance v12, Ljava/lang/InterruptedException;

    const-string v13, "NoSpaceException"

    invoke-direct {v12, v13}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 205
    .end local v5           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    .restart local v2       #contentLength:Ljava/lang/String;
    .restart local v8       #isLen:J
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_7

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v12, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v12}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->deleteFailedFile()V

    .line 208
    new-instance v12, Ljava/lang/InterruptedException;

    invoke-direct {v12}, Ljava/lang/InterruptedException;-><init>()V

    throw v12

    .line 212
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-eqz v12, :cond_9

    .line 214
    :cond_8
    new-instance v12, Ljava/lang/InterruptedException;

    invoke-direct {v12}, Ljava/lang/InterruptedException;-><init>()V

    throw v12

    .line 218
    :cond_9
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->isDownloadSuccess:Z

    goto/16 :goto_4
.end method

.method public static setDownQueueofMyPhoto(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;)V
    .locals 0
    .parameter "downQueueofMyPhoto"

    .prologue
    .line 430
    sput-object p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 431
    return-void
.end method

.method public static setDownQueueofSharePhoto(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;)V
    .locals 0
    .parameter "downQueueofSharePhoto"

    .prologue
    .line 440
    sput-object p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 441
    return-void
.end method

.method private startDownloadCallback()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->startDownloadCallback()V

    .line 281
    :cond_0
    return-void
.end method

.method private writeLocal()V
    .locals 10
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

    .line 223
    const/high16 v4, 0x4

    new-array v0, v4, [B

    .line 224
    .local v0, buff:[B
    const/4 v1, 0x0

    .line 226
    .local v1, buffLen:I
    :cond_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 272
    return-void

    .line 229
    :cond_1
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v4, :cond_3

    .line 231
    :cond_2
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 235
    :cond_3
    if-lez v1, :cond_0

    .line 241
    new-instance v5, Ljava/io/File;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v4}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->getBaseDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 244
    new-array v3, v1, [B

    .line 245
    .local v3, tempBuff:[B
    invoke-static {v0, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->writeFile(Ljava/io/RandomAccessFile;[B)I

    move-result v2

    .line 247
    .local v2, len:I
    if-ne v2, v8, :cond_4

    .line 249
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 253
    :cond_4
    iget-wide v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->downLen:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->downLen:J

    .line 266
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v4, :cond_0

    .line 269
    :cond_5
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 262
    .end local v2           #len:I
    .end local v3           #tempBuff:[B
    :cond_6
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
.end method


# virtual methods
.method protected doTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->isDownloadSuccess:Z

    .line 91
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->startDownloadCallback()V

    .line 93
    invoke-super {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->doTask()V

    .line 95
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->successDownloadCallback()V

    .line 96
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getRefresh_time()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->refresh_time:I

    return v0
.end method

.method protected handlerError(Ljava/lang/Error;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->isTimeOut:Z

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->setError(Ljava/lang/String;)V

    .line 382
    :cond_0
    return-void
.end method

.method protected handlerInterruptedException(Ljava/lang/InterruptedException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->onCancelTask()V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->onPausedTask()V

    goto :goto_0

    .line 367
    :cond_1
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->handlerInterruptedException(Ljava/lang/InterruptedException;)V

    goto :goto_0
.end method

.method protected handlerInterruptedIOException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->onCancelTask()V

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->onPausedTask()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->handlerInterruptedIOException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected hanlderException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 334
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->setError(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public isDownloadSuccess()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->isDownloadSuccess:Z

    return v0
.end method

.method public onCancelTask()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->onCancelTask()V

    .line 297
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->canceledCallback()V

    .line 300
    :cond_0
    return-void
.end method

.method public onPausedTask()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paused:Z

    .line 307
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->pausedCallback()V

    .line 310
    :cond_0
    return-void
.end method

.method protected readResponseData(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 110
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->fileLenght:J

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->readDownloadData(JLorg/apache/http/HttpResponse;)V

    .line 111
    return-void
.end method

.method public sendTaskReq()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, handle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->getIsDownMyphoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->getPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    .line 407
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_2
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->getPriority()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 401
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->downQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->context:Landroid/content/Context;

    .line 471
    return-void
.end method

.method public setDataLength(JJ)V
    .locals 1
    .parameter "getLength"
    .parameter "totalLength"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->onProgressChanged(JJ)V

    .line 325
    :cond_0
    return-void
.end method

.method public setDownloadSuccess(Z)V
    .locals 0
    .parameter "isDownloadSuccess"

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->isDownloadSuccess:Z

    .line 451
    return-void
.end method

.method public setRefresh_time(I)V
    .locals 0
    .parameter "refresh_time"

    .prologue
    .line 460
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;->refresh_time:I

    .line 461
    return-void
.end method

.method protected successDownloadCallback()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;

    invoke-interface {v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;->successDownloadCallback()V

    .line 290
    :cond_0
    return-void
.end method
