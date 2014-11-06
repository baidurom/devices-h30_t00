.class public Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/Request;
.source "DownloadFileRequest.java"


# static fields
.field public static final DOWNLOAD_TYPE_HAND:I = 0x1

.field public static final DOWNLOAD_TYPE_SYNC:I = 0x0

.field private static final TEMP_FILE_HAND_TYPE:Ljava/lang/String; = ".tmp_h"

.field private static final TEMP_FILE_SYNC_TYPE:Ljava/lang/String; = ".tmp_d"


# instance fields
.field private downloadType:I

.field private item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

.field private tempFileType:Ljava/lang/String;

.field private topPriotity:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p3}, Lcom/huawei/hicloud/photosharesdk3/request/Request;-><init>(Ljava/lang/String;)V

    .line 61
    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->topPriotity:Z

    .line 66
    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->downloadType:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 87
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 88
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 89
    invoke-virtual {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->setHttpType(I)V

    .line 90
    return-void
.end method

.method private clearRequest()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 278
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    if-eqz v0, :cond_0

    .line 280
    invoke-super {p0}, Lcom/huawei/hicloud/photosharesdk3/request/Request;->cancelRequestTask()V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public canceledCallback()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->clearRequest()V

    .line 253
    return-void
.end method

.method protected createConnectionTask()Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 137
    const-string v3, ""

    .line 138
    .local v3, tempPath:Ljava/lang/String;
    iget v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->downloadType:I

    if-nez v4, :cond_3

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v5, v5, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".tmp_d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    const-string v4, ".tmp_d"

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    .line 161
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 163
    const-string v4, "DownloadFileRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " sdk3 ConnectionTask downloadType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->downloadType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/DownloadTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 170
    .local v2, downloadTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v5, v5, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getLocalFileSize(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 173
    .local v0, breakpoint:J
    cmp-long v4, v0, v7

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v4, v4, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 175
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setBreakPoint(J)V

    .line 176
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v4, v4, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->setBreakPointHeader(JJ)V

    .line 183
    :cond_2
    :goto_1
    return-object v2

    .line 143
    .end local v0           #breakpoint:J
    .end local v2           #downloadTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    :cond_3
    iget v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->downloadType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v5, v5, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".tmp_h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v4, ".tmp_h"

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    goto/16 :goto_0

    .line 178
    .restart local v0       #breakpoint:J
    .restart local v2       #downloadTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    :cond_4
    cmp-long v4, v0, v7

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v4, v4, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    .line 180
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v4, v4, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public createFile(J)Ljava/util/Map;
    .locals 9
    .parameter "fileLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;,
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "savePath"

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v6, "fileLength"

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/4 v5, 0x0

    .line 332
    .local v5, tempFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 335
    .local v2, file:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 336
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #file:Ljava/io/RandomAccessFile;
    .local v3, file:Ljava/io/RandomAccessFile;
    move-object v2, v3

    .line 354
    .end local v3           #file:Ljava/io/RandomAccessFile;
    .restart local v2       #file:Ljava/io/RandomAccessFile;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, f:Ljava/io/File;
    const-string v6, "File"

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v6, "RandomAccessFile"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-object v4

    .line 338
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 342
    const-string v6, "DownloadFileRequest:  "

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v6, "DownloadFileRequest:  "

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deleteFailedFile()V
    .locals 4

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v3, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 369
    .local v1, resu:Z
    if-nez v1, :cond_0

    .line 371
    const-string v2, ""

    const-string v3, "delete fail"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    return-void
.end method

.method public getBaseDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->downloadType:I

    return v0
.end method

.method public getItem()Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public isPriority()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->topPriotity:Z

    return v0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0xff

    const/4 v3, 0x1

    .line 200
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 199
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->clearRequest()V

    .line 203
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0xff

    const/4 v3, 0x1

    .line 236
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 235
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->clearRequest()V

    .line 239
    return-void
.end method

.method public onProgressChanged(JJ)V
    .locals 0
    .parameter "getLength"
    .parameter "totalLength"

    .prologue
    .line 273
    return-void
.end method

.method public onTimeOut(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0xff

    const/4 v3, 0x1

    .line 218
    const/16 v4, 0x208

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 217
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->clearRequest()V

    .line 221
    return-void
.end method

.method public pausedCallback()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->clearRequest()V

    .line 290
    return-void
.end method

.method public resetFileName()V
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->tempFileType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->resetFileName(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setBreakPointHeader(JJ)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, breakPointStr:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 124
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v2, "RANGE"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setDownloadType(I)V
    .locals 0
    .parameter "downloadType"

    .prologue
    .line 404
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->downloadType:I

    .line 405
    return-void
.end method

.method public setItem(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 100
    return-void
.end method

.method public startDownloadCallback()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method
