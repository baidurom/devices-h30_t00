.class public Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/Request;
.source "DownloadFileRequest.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;


# static fields
.field public static final TEMP_FILE_TYPE:Ljava/lang/String; = ".tmp_h"


# instance fields
.field getUrlReq:Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;

.field private isMyPhoto:Z

.field private item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

.field private topPriotity:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;ZLandroid/content/Context;Z)V
    .locals 2
    .parameter "item"
    .parameter "topPriotity"
    .parameter "context"
    .parameter "isMyPhoto"

    .prologue
    const/4 v1, 0x1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/Request;-><init>(Ljava/lang/String;)V

    .line 35
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->isMyPhoto:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->topPriotity:Z

    .line 48
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 49
    iput-boolean p2, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->topPriotity:Z

    .line 50
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 51
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 52
    iput-boolean p4, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->isMyPhoto:Z

    .line 53
    invoke-virtual {p0, v1}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->setHttpType(I)V

    .line 54
    return-void
.end method

.method private clearRequest()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 204
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    if-eqz v0, :cond_0

    .line 205
    invoke-super {p0}, Lcom/huawei/hicloud/photosharesdk/request/Request;->cancelRequestTask()V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public canceledCallback()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->clearRequest()V

    .line 181
    return-void
.end method

.method protected createConnectionTask()Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 101
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->isMyPhoto:Z

    .line 101
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/connection/DownloadTask;-><init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 105
    .local v2, downloadTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v4, v4, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".tmp_h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getLocalFileSize(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 108
    .local v0, breakpoint:J
    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v3, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 109
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setBreakPoint(J)V

    .line 110
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v3, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->setBreakPointHeader(JJ)V

    .line 115
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :cond_1
    cmp-long v3, v0, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v3, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v3, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
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
    .line 261
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "savePath"

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v6, "fileLength"

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const/4 v5, 0x0

    .line 273
    .local v5, tempFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 275
    .local v2, file:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".tmp_h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 276
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #file:Ljava/io/RandomAccessFile;
    .local v3, file:Ljava/io/RandomAccessFile;
    move-object v2, v3

    .line 290
    .end local v3           #file:Ljava/io/RandomAccessFile;
    .restart local v2       #file:Ljava/io/RandomAccessFile;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v7, v7, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".tmp_h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, f:Ljava/io/File;
    const-string v6, "File"

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v6, "RandomAccessFile"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-object v4

    .line 277
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_0

    .line 279
    const-string v6, "DownloadFileRequest:  "

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    const-string v6, "DownloadFileRequest:  "

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deleteFailedFile()V
    .locals 4

    .prologue
    .line 297
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v3, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".tmp_h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 299
    .local v1, result:Z
    if-nez v1, :cond_0

    .line 301
    const-string v2, ""

    const-string v3, "deleteFailedFile fail"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public getBaseDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsDownMyphoto()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->isMyPhoto:Z

    return v0
.end method

.method public getPriority()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->topPriotity:Z

    return v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public initDownload(Ljava/lang/String;)V
    .locals 4
    .parameter "fileInfo"

    .prologue
    .line 82
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->isMyPhoto:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;-><init>(Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 82
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->getUrlReq:Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;

    .line 84
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->getUrlReq:Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->setFileInfo(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->getUrlReq:Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->setHandler(Landroid/os/Handler;)V

    .line 86
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->getUrlReq:Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 87
    return-void
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 130
    const/16 v2, 0xff

    const/4 v3, 0x1

    .line 131
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 129
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->clearRequest()V

    .line 134
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 164
    const/16 v2, 0xff

    const/4 v3, 0x1

    .line 165
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 163
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->clearRequest()V

    .line 168
    return-void
.end method

.method public onProgressChanged(JJ)V
    .locals 0
    .parameter "getLength"
    .parameter "totalLength"

    .prologue
    .line 200
    return-void
.end method

.method public onTimeOut(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 147
    const/16 v2, 0xff

    const/4 v3, 0x1

    .line 148
    const/16 v4, 0x208

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 146
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->clearRequest()V

    .line 151
    return-void
.end method

.method public pausedCallback()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->clearRequest()V

    .line 214
    return-void
.end method

.method public resetFileName()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp_h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->resetFileName(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public setBreakPointHeader(JJ)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, breakPointStr:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 76
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v2, "RANGE"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setItem(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 58
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .parameter "url"
    .parameter "size"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    .line 92
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->setTaskhandle(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->getUrlReq:Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;

    .line 94
    return-void
.end method

.method public startDownloadCallback()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public successDownloadCallback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v2, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tmp_h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v2, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 227
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "DownSuccess"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item.fileSize=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-wide v2, v2, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "DownSuccess"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item.savePath=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v3, v3, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->resetFileName()V

    .line 236
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 238
    const/16 v2, 0xff

    .line 239
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->item:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 237
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->clearRequest()V

    goto :goto_0
.end method
