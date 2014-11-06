.class public Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;
.super Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
.source "BitmapTask.java"


# static fields
.field private static final MAX_ICON_REQ_COUNT:I = 0x3

.field static volatile bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

.field static volatile bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;


# instance fields
.field private context:Landroid/content/Context;

.field private destPos:I

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "callback"
    .parameter "httpUrl"
    .parameter "context"
    .parameter "filePath"
    .parameter "isMyPhoto"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;-><init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->context:Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    .line 51
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpUrl:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->context:Landroid/content/Context;

    .line 53
    iput-object p4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p5}, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->initQueue(Z)V

    .line 55
    return-void
.end method

.method public static cancelAllTask()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateAllThread()V

    .line 74
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateAllThread()V

    .line 77
    :cond_1
    return-void
.end method

.method private initQueue(Z)V
    .locals 2
    .parameter "isMyPhoto"

    .prologue
    const/4 v1, 0x3

    .line 59
    if-eqz p1, :cond_1

    .line 60
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    goto :goto_0
.end method

.method private readBitmapData(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, f:Ljava/io/File;
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    if-eqz v9, :cond_6

    .line 108
    const/4 v6, 0x0

    .line 110
    .local v6, length:I
    :try_start_0
    const-string v9, "Content-Length"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 111
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, contentLength:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 113
    const/4 v9, -0x1

    if-eq v6, v9, :cond_a

    .line 118
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const/4 v10, 0x0

    .line 119
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 118
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, filetemp:Ljava/io/File;
    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 123
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 124
    .local v7, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mkdirs"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v7           #result:Z
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v8, sb:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v9, "_thumb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v4, Ljava/io/File;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v3           #f:Ljava/io/File;
    .local v4, f:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 132
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    if-eqz v4, :cond_2

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v9, :cond_2

    .line 154
    iget v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-ne v6, v9, :cond_1

    if-eqz v6, :cond_1

    iget v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    int-to-long v11, v6

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 156
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    .line 157
    .local v1, delResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "f.delete() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #delResult:Z
    :cond_2
    move-object v3, v4

    .line 166
    .end local v0           #contentLength:Ljava/lang/String;
    .end local v4           #f:Ljava/io/File;
    .end local v5           #filetemp:Ljava/io/File;
    .end local v6           #length:I
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .restart local v3       #f:Ljava/io/File;
    :cond_3
    :goto_0
    return-void

    .line 136
    .end local v3           #f:Ljava/io/File;
    .restart local v0       #contentLength:Ljava/lang/String;
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #filetemp:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v10, "rw"

    invoke-direct {v9, v4, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    .line 138
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->writeLocal()V

    .line 139
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 140
    iget v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-eq v6, v9, :cond_9

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    .line 142
    .restart local v1       #delResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    .line 143
    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bitmap delete "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 142
    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .end local v1           #delResult:Z
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 149
    .end local v0           #contentLength:Ljava/lang/String;
    .end local v4           #f:Ljava/io/File;
    .end local v5           #filetemp:Ljava/io/File;
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #f:Ljava/io/File;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v9, :cond_6

    .line 154
    iget v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-ne v6, v9, :cond_5

    if-eqz v6, :cond_5

    iget v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    int-to-long v11, v6

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 156
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 157
    .restart local v1       #delResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "f.delete() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v1           #delResult:Z
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #length:I
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    if-eqz v9, :cond_3

    .line 162
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v9, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->filePath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;->onReceiveData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .restart local v6       #length:I
    :catchall_0
    move-exception v9

    .line 153
    :goto_3
    if-eqz v3, :cond_8

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_8

    .line 154
    iget v10, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-ne v6, v10, :cond_7

    if-eqz v6, :cond_7

    iget v10, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-eqz v10, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    int-to-long v12, v6

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    .line 156
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 157
    .restart local v1       #delResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "f.delete() "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v1           #delResult:Z
    :cond_8
    throw v9

    .end local v3           #f:Ljava/io/File;
    .restart local v0       #contentLength:Ljava/lang/String;
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #filetemp:Ljava/io/File;
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    :cond_9
    move-object v3, v4

    .line 153
    .end local v4           #f:Ljava/io/File;
    .end local v5           #filetemp:Ljava/io/File;
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .restart local v3       #f:Ljava/io/File;
    :cond_a
    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    if-eqz v9, :cond_6

    .line 154
    iget v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-ne v6, v9, :cond_b

    if-eqz v6, :cond_b

    iget v9, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    if-eqz v9, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    int-to-long v11, v6

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 156
    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 157
    .restart local v1       #delResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "f.delete() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    .end local v1           #delResult:Z
    .end local v3           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #filetemp:Ljava/io/File;
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #f:Ljava/io/File;
    .restart local v3       #f:Ljava/io/File;
    goto :goto_3

    .line 148
    .end local v0           #contentLength:Ljava/lang/String;
    .end local v5           #filetemp:Ljava/io/File;
    .end local v8           #sb:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private writeLocal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, readLen:I
    const/16 v4, 0x200

    new-array v2, v4, [B

    .line 172
    .local v2, temp:[B
    :goto_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->is:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_1

    .line 193
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->canceled:Z

    if-nez v4, :cond_0

    .line 177
    new-array v3, v1, [B

    .line 178
    .local v3, tempBuf:[B
    invoke-static {v2, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->file:Ljava/io/RandomAccessFile;

    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->writeFile(Ljava/io/RandomAccessFile;[B)I
    :try_end_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :goto_1
    iget v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->destPos:I

    .line 191
    const/4 v4, 0x0

    check-cast v4, [B

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->context:Landroid/content/Context;

    .line 185
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendDirError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    .end local v0           #e:Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendNoSpaceError(Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method protected readResponseData(Lorg/apache/http/HttpResponse;)V
    .locals 0
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
    .line 90
    invoke-super {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->readResponseData(Lorg/apache/http/HttpResponse;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->readBitmapData(Lorg/apache/http/HttpResponse;)V

    .line 92
    return-void
.end method

.method public sendTaskReq()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, handle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;->getIsMyPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;->getPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    .line 219
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofMyPhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_2
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->httpCallback:Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;

    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;->getPriority()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->bitmapQueueofSharePhoto:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v1, p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    goto :goto_0
.end method
