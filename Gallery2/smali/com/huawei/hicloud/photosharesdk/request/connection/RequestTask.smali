.class public Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;
.super Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
.source "RequestTask.java"


# static fields
.field private static final maxCount:I = 0x3

.field private static volatile myPhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

.field private static volatile sharePhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->myPhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 25
    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->sharePhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "callback"
    .parameter "httpUrl"
    .parameter "timeout"
    .parameter "isMyPhoto"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;-><init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;)V

    .line 38
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->timeout:I

    .line 40
    invoke-direct {p0, p4}, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->initQueue(Z)V

    .line 41
    return-void
.end method

.method private initQueue(Z)V
    .locals 2
    .parameter "isMyPhoto"

    .prologue
    const/4 v1, 0x3

    .line 45
    if-eqz p1, :cond_1

    .line 46
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->myPhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->myPhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->sharePhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->sharePhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    goto :goto_0
.end method

.method private readUserFormatData(J)V
    .locals 7
    .parameter "dataLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 101
    .local v2, ch:I
    const/4 v4, 0x0

    :try_start_1
    check-cast v4, [B

    .line 102
    .local v4, data:[B
    const/high16 v5, 0x4

    new-array v3, v5, [B

    .line 103
    .local v3, d:[B
    :cond_0
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 119
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 121
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;

    invoke-interface {v5, v4}, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;->onReceiveData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_1
    if-eqz v1, :cond_5

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 127
    const/4 v0, 0x0

    .line 131
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 104
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_2
    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-eqz v5, :cond_4

    .line 105
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 106
    const-string v5, ""

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 108
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v3           #d:[B
    .end local v4           #data:[B
    :catchall_0
    move-exception v5

    move-object v0, v1

    .line 125
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ch:I
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :cond_3
    throw v5

    .line 110
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v3       #d:[B
    .restart local v4       #data:[B
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 112
    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 114
    const-string v5, ""

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 116
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
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
    :cond_5
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
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readErrorResponse(Lorg/apache/http/HttpResponse;)V

    .line 60
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->fileLenght:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->readUserFormatData(J)V

    .line 61
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
    .line 75
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 82
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->fileLenght:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->readUserFormatData(J)V

    .line 83
    return-void
.end method

.method public sendTaskReq()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, handle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;->getIsMyPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->myPhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;->getTopPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->myPhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->myPhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->sharePhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;->getTopPriority()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->sharePhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->sharePhotoQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0
.end method
