.class public Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;
.super Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
.source "BitmapTask.java"


# instance fields
.field private context:Landroid/content/Context;

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "httpUrl"
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->context:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->context:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private checkHasEnoughSpace(Ljava/io/File;)V
    .locals 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isHasEnoughSpace(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 195
    .local v0, isHasEnoughSpace:Z
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "readBitmapData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isHasEnoughSpace:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method private dealBitmapFinal(Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;Ljava/io/File;IIZ)V
    .locals 6
    .parameter "bitmapRequest"
    .parameter "f"
    .parameter "length"
    .parameter "destPos"
    .parameter "executeDownload"

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bitmapTask,destPos:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bitmapTask,length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-eqz p5, :cond_4

    if-ne p3, p4, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 207
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, resul:Z
    if-eqz p2, :cond_1

    .line 212
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 213
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1
    invoke-virtual {p1, v5}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->setDownloadFlag(Z)V

    .line 226
    .end local v0           #resul:Z
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_3

    .line 228
    const-string v1, "readBitmapData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finally executeDownload:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setDownloadFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->isDownloadFlag()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_3
    return-void

    .line 217
    :cond_4
    if-eqz p5, :cond_2

    .line 219
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->setDownloadFlag(Z)V

    .line 220
    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private readBitmapData(Lorg/apache/http/HttpResponse;)V
    .locals 23
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;

    .line 80
    .local v4, bitmapRequest:Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;
    const/4 v5, 0x0

    .line 81
    .local v5, f:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 83
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "readBitmapData...response:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 85
    .local v15, contentLength:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "readBitmapData...contentLength:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, length:I
    const/16 v19, 0x0

    .line 88
    .local v19, readLen:I
    const/4 v7, 0x0

    .line 89
    .local v7, destPos:I
    const/4 v8, 0x0

    .line 93
    .local v8, executeDownload:Z
    const/4 v3, -0x1

    if-eq v6, v3, :cond_5

    .line 95
    const/16 v3, 0x200

    :try_start_0
    new-array v0, v3, [B

    move-object/from16 v21, v0

    .line 100
    .local v21, temp:[B
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "readBitmapData filePath:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v17, filetemp:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->setDownloadFlag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v3, p0

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->dealBitmapFinal(Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;Ljava/io/File;IIZ)V

    .line 190
    .end local v6           #length:I
    .end local v7           #destPos:I
    .end local v8           #executeDownload:Z
    .end local v15           #contentLength:Ljava/lang/String;
    .end local v17           #filetemp:Ljava/io/File;
    .end local v19           #readLen:I
    .end local v21           #temp:[B
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v6       #length:I
    .restart local v7       #destPos:I
    .restart local v8       #executeDownload:Z
    .restart local v15       #contentLength:Ljava/lang/String;
    .restart local v17       #filetemp:Ljava/io/File;
    .restart local v19       #readLen:I
    .restart local v21       #temp:[B
    :cond_1
    :try_start_1
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v20, sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v3, "_thumb"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    .end local v5           #f:Ljava/io/File;
    .local v11, f:Ljava/io/File;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_2

    .line 131
    const-string v3, "readBitmapData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " exists setDownloadFlag false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->setDownloadFlag(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v9, p0

    move-object v10, v4

    move v12, v6

    move v13, v7

    move v14, v8

    .line 184
    invoke-direct/range {v9 .. v14}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->dealBitmapFinal(Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;Ljava/io/File;IIZ)V

    move-object v5, v11

    .line 134
    .end local v11           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_0

    .line 137
    .end local v5           #f:Ljava/io/File;
    .restart local v11       #f:Ljava/io/File;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->checkHasEnoughSpace(Ljava/io/File;)V

    .line 139
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v3, v11, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 140
    const/4 v8, 0x1

    .line 142
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v19

    if-gtz v19, :cond_6

    .line 162
    :cond_4
    const/16 v21, 0x0

    check-cast v21, [B

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v11

    .end local v11           #f:Ljava/io/File;
    .end local v17           #filetemp:Ljava/io/File;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .end local v21           #temp:[B
    .restart local v5       #f:Ljava/io/File;
    :cond_5
    move-object/from16 v3, p0

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->dealBitmapFinal(Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;Ljava/io/File;IIZ)V

    goto/16 :goto_0

    .line 144
    .end local v5           #f:Ljava/io/File;
    .restart local v11       #f:Ljava/io/File;
    .restart local v17       #filetemp:Ljava/io/File;
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    .restart local v21       #temp:[B
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-nez v3, :cond_4

    .line 149
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 150
    .local v22, tempBuf:[B
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-static {v0, v3, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->writeFile(Ljava/io/RandomAccessFile;[B)I

    move-result v18

    .line 154
    .local v18, len:I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 156
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 166
    .end local v18           #len:I
    .end local v21           #temp:[B
    .end local v22           #tempBuf:[B
    :catch_0
    move-exception v16

    move-object v5, v11

    .line 168
    .end local v11           #f:Ljava/io/File;
    .end local v17           #filetemp:Ljava/io/File;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .restart local v5       #f:Ljava/io/File;
    .local v16, e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendDirError(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v9, "bitmapTask"

    move-object/from16 v0, v16

    invoke-static {v3, v9, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v3, p0

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->dealBitmapFinal(Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;Ljava/io/File;IIZ)V

    goto/16 :goto_0

    .line 159
    .end local v5           #f:Ljava/io/File;
    .end local v16           #e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    .restart local v11       #f:Ljava/io/File;
    .restart local v17       #filetemp:Ljava/io/File;
    .restart local v18       #len:I
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    .restart local v21       #temp:[B
    .restart local v22       #tempBuf:[B
    :cond_7
    add-int v7, v7, v19

    .line 160
    const/4 v3, 0x0

    :try_start_6
    check-cast v3, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 171
    .end local v11           #f:Ljava/io/File;
    .end local v17           #filetemp:Ljava/io/File;
    .end local v18           #len:I
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .end local v21           #temp:[B
    .end local v22           #tempBuf:[B
    .restart local v5       #f:Ljava/io/File;
    :catch_1
    move-exception v16

    .line 173
    .local v16, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendNoSpaceError(Landroid/content/Context;)V

    .line 174
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v9, "bitmapTask"

    move-object/from16 v0, v16

    invoke-static {v3, v9, v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v3, p0

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->dealBitmapFinal(Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;Ljava/io/File;IIZ)V

    goto/16 :goto_0

    .line 176
    .end local v16           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    :catch_2
    move-exception v16

    .line 179
    .local v16, e:Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v9, ""

    move-object/from16 v0, v16

    invoke-static {v3, v9, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    throw v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 183
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object v9, v3

    :goto_5
    move-object/from16 v3, p0

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->dealBitmapFinal(Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;Ljava/io/File;IIZ)V

    .line 185
    throw v9

    .line 183
    .end local v5           #f:Ljava/io/File;
    .restart local v11       #f:Ljava/io/File;
    .restart local v17       #filetemp:Ljava/io/File;
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v3

    move-object v9, v3

    move-object v5, v11

    .end local v11           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_5

    .line 176
    .end local v5           #f:Ljava/io/File;
    .restart local v11       #f:Ljava/io/File;
    :catch_3
    move-exception v16

    move-object v5, v11

    .end local v11           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_4

    .line 171
    .end local v5           #f:Ljava/io/File;
    .restart local v11       #f:Ljava/io/File;
    :catch_4
    move-exception v16

    move-object v5, v11

    .end local v11           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_3

    .line 166
    .end local v17           #filetemp:Ljava/io/File;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v16

    goto :goto_2
.end method


# virtual methods
.method protected readResponseData(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;->readBitmapData(Lorg/apache/http/HttpResponse;)V

    .line 69
    return-void
.end method
