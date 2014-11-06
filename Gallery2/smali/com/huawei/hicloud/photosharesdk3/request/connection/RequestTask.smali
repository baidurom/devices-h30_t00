.class public Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;
.super Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
.source "RequestTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "httpUrl"
    .parameter "timeout"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->timeout:I

    .line 38
    return-void
.end method

.method private readUserFormatData(J)V
    .locals 9
    .parameter "dataLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "readUserFormatData:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 83
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 85
    .local v2, ch:I
    const/4 v4, 0x0

    :try_start_1
    check-cast v4, [B

    .line 86
    .local v4, data:[B
    const/high16 v5, 0x4

    new-array v3, v5, [B

    .line 87
    .local v3, d:[B
    :cond_0
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 106
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

    instance-of v5, v5, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;

    if-eqz v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

    check-cast v5, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;

    invoke-virtual {v5, v4}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->onReceiveData([B)V

    .line 111
    :cond_1
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

    instance-of v5, v5, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;

    if-eqz v5, :cond_2

    .line 113
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->requestInfo:Lcom/huawei/hicloud/photosharesdk3/request/Request;

    check-cast v5, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;

    invoke-virtual {v5, v4}, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->onReceiveData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_2
    if-eqz v1, :cond_6

    .line 121
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 122
    const/4 v0, 0x0

    .line 126
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 89
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_2
    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-eqz v5, :cond_5

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v3           #d:[B
    .end local v4           #data:[B
    :catchall_0
    move-exception v5

    move-object v0, v1

    .line 119
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ch:I
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 122
    const/4 v0, 0x0

    .line 124
    :cond_4
    throw v5

    .line 95
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v3       #d:[B
    .restart local v4       #data:[B
    :cond_5
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 97
    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->canceled:Z

    if-eqz v5, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 101
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ch:I
    .end local v3           #d:[B
    .end local v4           #data:[B
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    goto :goto_1

    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v3       #d:[B
    .restart local v4       #data:[B
    :cond_6
    move-object v0, v1

    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_0
.end method


# virtual methods
.method protected readErrorResponse(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readErrorResponse(Lorg/apache/http/HttpResponse;)V

    .line 49
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->fileLenght:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;->readUserFormatData(J)V

    .line 50
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
    .line 60
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 67
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->fileLenght:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;->readUserFormatData(J)V

    .line 68
    return-void
.end method
